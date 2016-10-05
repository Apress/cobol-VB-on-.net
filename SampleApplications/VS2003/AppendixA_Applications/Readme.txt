To install the Windows Service:
C:\>installutil  C:\MyFirstWindowsService\bin\MyFirstWindowsService.exe

To uninstall the Windows Service:
C:\>installutil /U C:\MyFirstWindowsService\bin\MyFirstWindowsService.exe

The actual path used in the command above will depend on your placement of the 
targeted application. The code used in this windows service assumes the existence of the 
private MSMQ queue MyFirstAsyncQueue.

----------------------------------------------
The WebApplicationsWithACT folder contains modified versions of Chapter 13's Web 
Applications. Application Center Test projects have been added to each solution.

