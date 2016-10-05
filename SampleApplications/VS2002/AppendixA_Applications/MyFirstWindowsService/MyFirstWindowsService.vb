Imports System.ServiceProcess

Public Class MyFirstWindowsService
	Inherits System.ServiceProcess.ServiceBase

#Region " Component Designer generated code "

	Public Sub New()
		MyBase.New()

		' This call is required by the Component Designer.
		InitializeComponent()

		' Add any initialization after the InitializeComponent() call

	End Sub

	'UserService overrides dispose to clean up the component list.
	Protected Overloads Overrides Sub Dispose(ByVal disposing As Boolean)
		If disposing Then
			If Not (components Is Nothing) Then
				components.Dispose()
			End If
		End If
		MyBase.Dispose(disposing)
	End Sub

	' The main entry point for the process
	<MTAThread()> _
	Shared Sub Main()
		Dim ServicesToRun() As System.ServiceProcess.ServiceBase

		' More than one NT Service may run within the same process. To add
		' another service to this process, change the following line to
		' create a second service object. For example,
		'
		'   ServicesToRun = New System.ServiceProcess.ServiceBase () {New Service1, New MySecondUserService}
		'
		ServicesToRun = New System.ServiceProcess.ServiceBase() {New MyFirstWindowsService()}

		System.ServiceProcess.ServiceBase.Run(ServicesToRun)
	End Sub

	'Required by the Component Designer
	Private components As System.ComponentModel.IContainer

	' NOTE: The following procedure is required by the Component Designer
	' It can be modified using the Component Designer.  
	' Do not modify it using the code editor.
	<System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
		'
		'MyFirstWindowsService
		'
		Me.ServiceName = "MyFirstWindowsService"

	End Sub

#End Region

	Friend WithEvents MyMessageQueue As System.Messaging.MessageQueue
	Shared MyCounter As Int32
	Protected Overrides Sub OnStart(ByVal args() As String)

		'Dynamicallyattach to an existing MSMQ
		Me.MyMessageQueue = New System.Messaging.MessageQueue()
		Me.MyMessageQueue.Path = "FormatName:DIRECT=OS:.\private$\myfirstasyncqueue"
		AddHandler MyMessageQueue.ReceiveCompleted, _
		AddressOf MyMSMQBeginReceive
		' Begin the asynchronous receive
		MyMessageQueue.BeginReceive()

	End Sub

	Protected Overrides Sub OnStop()
		' Add code here to perform any tear-down necessary to stop your service.
	End Sub

	Public Shared Sub MyMSMQBeginReceive(ByVal source As Object, _
	ByVal asyncResult As System.Messaging.ReceiveCompletedEventArgs)
		'Connect to the MSMQ queue.
		Dim myqueue As System.Messaging.MessageQueue = _
		CType(source, System.Messaging.MessageQueue)

		'End the asynchronous BegineReceive
		Dim myMessage As System.Messaging.Message = _
		myqueue.EndReceive(asyncResult.AsyncResult)

		'use this shared variable for demonstration purposes
		MyCounter += 1

		Dim EventLog = New System.Diagnostics.EventLog()
		With EventLog
			.BeginInit()
			.Log = "Application"
			.EndInit()
			.Source = "MyFirstWindowsService"
			.WriteEntry(MyCounter & " <-> " & myMessage.Label)
		End With
		myqueue.BeginReceive()

	End Sub

End Class
