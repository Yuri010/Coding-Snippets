#include <stdio.h>
#include <Windows.h>
#include <winternl.h>

#pragma comment(lib,"ntdll.lib")

EXTERN_C NTSTATUS NTAPI RtlAdjustPrivilege(ULONG,BOOLEAN,BOOLEAN,PBOOLEAN);
EXTERN_C NTSTATUS NTAPI NtSetInformationProcess(HANDLE,ULONG,PVOID,ULONG);

int main()
{
	BOOLEAN bl;
	ULONG BreakOnTermination;
	NTSTATUS status;
	char cmd[10];

	//To set a process as critical process using NtSetInformationProcess function, the caller must have SeDebugPrivilege enabled.

	if(!NT_SUCCESS(RtlAdjustPrivilege(20,TRUE,FALSE,&bl)))
	{
		printf("Unable to enable SeDebugPrivilege. Make sure you are running this program as administrator.");
		return 1;
	}

	printf("Commands:\n\n");

	printf("on - Set the current process as critical process.\noff - Cancel the critical process status.\nexit - Terminate the current process.\n\n");

	while(1)
	{
		scanf("%s",cmd);

		if(!strcmp("on",cmd))
		{
			BreakOnTermination=1;
			
			status=NtSetInformationProcess((HANDLE)-1,0x1d,&BreakOnTermination,sizeof(ULONG));
			
			if(status!=0)
			{
				printf("Error: Unable to set the current process as critical process. NtSetInformationProcess failed with status %#x\n\n",status);
			}

			else
			{
				printf("Successfully set the current process as critical process.\n\n");
			}
		}

		else if(!strcmp("off",cmd))
		{
			BreakOnTermination=0;

			status=NtSetInformationProcess((HANDLE)-1,0x1d,&BreakOnTermination,sizeof(ULONG));

			if(status!=0)
			{
				printf("Error: Unable to cancel critical process status. NtSetInformationProcess failed with status %#x\n\n",status);
			}

			else
			{
				printf("Successfully canceled critical process status.\n\n");
			}
		}

		else if(!strcmp("exit",cmd))
		{
			break;
		}
	}

	return 0;
}