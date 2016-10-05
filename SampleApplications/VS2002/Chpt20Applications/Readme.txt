Microsoft Message Queuing (MSMQ) is needed.

Sample and demo prep information: 

- Creation of a folder at C:\MSMQ-ASYNC-DEMO (optional).

- Creation of two .NET Windows sample projects. .NET Windows projects will be 
called MyMSMQAsyncAndTriggerCOBOL and MyMSMQAsyncAndTriggerVB. 

- Both application executables (.exe) will be copied and placed inside of the 
C:\MSMQ-ASYNC-DEMO folder for organizational purposes (optional).

- Launching of the Computer Management Console tool.

- Use of the Services MMC snap-in to verify that both the Message Queuing 
Service and Message Queuing Triggers Service show a status of "started".

- Creation of two MSMQ Private Queues. The same procedure that you were 
introduced to earlier - in section Revisiting Microsoft Message Queuing (MSMQ) 
can be used to create the two queues. Optionally, use the Computer Management 
Console to access the MSMQ snap-in. I chose to name the two new MSMQ 
Queues MyFirstTriggerQueue and MyFirstAsyncQueue. All default settings were 
used. The Queues were left as NOT transactional

- Creation of an MSMQ Rule and Trigger.

