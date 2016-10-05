Public Class Form1
    Inherits System.Windows.Forms.Form

#Region " Windows Form Designer generated code "

    Public Sub New()
        MyBase.New()

        'This call is required by the Windows Form Designer.
        InitializeComponent()

		'Add any initialization after the InitializeComponent() call
		Call MyMSMQReceive()
	End Sub

	Private Sub MyMSMQReceive()
		Dim myStringMsg As String
		Dim myMessage As System.Messaging.Message
		Try
			MessageQueue1.Peek(New TimeSpan(0))
			myMessage = MessageQueue1.Receive
			myMessage.Formatter = New _
			System.Messaging.XmlMessageFormatter(New Type() {GetType(String)})
			myStringMsg = CType(myMessage.Body, String)
			'****************************************************
			Label2.Text = myMessage.Label
		Catch myexception As System.Messaging.MessageQueueException
			If myexception.MessageQueueErrorCode = _
			  System.Messaging.MessageQueueErrorCode.IOTimeout Then
				Label2.Text = "The MSMQ needs to be loaded first"
			End If
		End Try

		' Add an event handler
		AddHandler MessageQueue2.ReceiveCompleted, _
		AddressOf MyMSMQBeginReceive
		' Begin the asynchronous receive
		MessageQueue2.BeginReceive()

	End Sub

	Public Shared Sub MyMSMQBeginReceive(ByVal source As Object, _
	ByVal asyncResult As System.Messaging.ReceiveCompletedEventArgs)
		'Connect to the MSMQ queue.
		Dim myqueue As System.Messaging.MessageQueue = _
		CType(source, System.Messaging.MessageQueue)

		'End the asynchronous BegineReceive
        Dim myMessage As System.Messaging.Message = _
        myqueue.EndReceive(asyncResult.AsyncResult)

		'exit application
        'Application.Exit()
        MsgBox("Message received: " & myMessage.Label)
        myqueue.BeginReceive()
		''Example code to Load MSMQ Private Queue
		'Dim mymsg As String = "ASYNC"
		'MessageQueue1.Send(mymsg, "ASYNC")
	End Sub

	'Form overrides dispose to clean up the component list.
	Protected Overloads Overrides Sub Dispose(ByVal disposing As Boolean)
		If disposing Then
			If Not (components Is Nothing) Then
				components.Dispose()
			End If
		End If
		MyBase.Dispose(disposing)
	End Sub

	'Required by the Windows Form Designer
	Private components As System.ComponentModel.IContainer

	'NOTE: The following procedure is required by the Windows Form Designer
	'It can be modified using the Windows Form Designer.  
	'Do not modify it using the code editor.
	Friend WithEvents Label1 As System.Windows.Forms.Label
	Friend WithEvents Label2 As System.Windows.Forms.Label
	Friend WithEvents MessageQueue1 As System.Messaging.MessageQueue
	Friend WithEvents MessageQueue2 As System.Messaging.MessageQueue
	Friend WithEvents Label3 As System.Windows.Forms.Label
	Friend WithEvents Button1 As System.Windows.Forms.Button
	<System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.MessageQueue1 = New System.Messaging.MessageQueue()
        Me.MessageQueue2 = New System.Messaging.MessageQueue()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.Location = New System.Drawing.Point(7, 23)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(285, 21)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "The GUID of the message that was used to Trigger:"
        '
        'Label2
        '
        Me.Label2.Location = New System.Drawing.Point(7, 53)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(285, 22)
        Me.Label2.TabIndex = 1
        '
        'MessageQueue1
        '
        Me.MessageQueue1.Path = "FormatName:DIRECT=OS:.\private$\myfirsttriggerqueue"
        Me.MessageQueue1.SynchronizingObject = Me
        '
        'MessageQueue2
        '
        Me.MessageQueue2.Path = "FormatName:DIRECT=OS:.\private$\myfirstasyncqueue"
        Me.MessageQueue2.SynchronizingObject = Me
        '
        'Label3
        '
        Me.Label3.Location = New System.Drawing.Point(15, 106)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(277, 30)
        Me.Label3.TabIndex = 2
        Me.Label3.Text = "When the Async message is Received, a message box will pop up displaying the Asyn" & _
        "c message's label."
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(22, 167)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(263, 21)
        Me.Button1.TabIndex = 3
        Me.Button1.Text = "Exit? You can manually Exit if you want."
        '
        'Form1
        '
        Me.AutoScaleBaseSize = New System.Drawing.Size(5, 13)
        Me.ClientSize = New System.Drawing.Size(306, 198)
        Me.Controls.AddRange(New System.Windows.Forms.Control() {Me.Button1, Me.Label3, Me.Label2, Me.Label1})
        Me.Name = "Form1"
        Me.Text = "MyMSMQAsyncAndTriggerVB"
        Me.ResumeLayout(False)

    End Sub

#End Region

	Private Sub Button1_Click(ByVal sender As System.Object, _
	ByVal e As System.EventArgs) Handles Button1.Click
		'exit application
        Application.Exit()
    End Sub
End Class
