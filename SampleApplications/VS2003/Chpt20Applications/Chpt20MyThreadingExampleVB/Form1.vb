Public Class Form1
    Inherits System.Windows.Forms.Form

#Region " Windows Form Designer generated code "

    Public Sub New()
        MyBase.New()

        'This call is required by the Windows Form Designer.
        InitializeComponent()

		'Add any initialization after the InitializeComponent() call
		System.Threading.Thread.CurrentThread.Name = "MyPrimaryThread"
		Dim myappdomain As AppDomain
		myappdomain = AppDomain.CurrentDomain
		TextBox1.Text = "AppDomain: " & _
		myappdomain.ToString & vbCrLf
		TextBox1.Text = TextBox1.Text & _
		"Current Executing Thread: " & _
		myappdomain.GetCurrentThreadId.ToString & vbCrLf
		'TextBox1.Text = TextBox1.Text & "Context: " & _
		'System.Threading.Thread.CurrentContext.DefaultContext.ToString & vbCrLf


		Dim p As System.Diagnostics.Process = Process.GetCurrentProcess()
		Dim ProcessThreadArray As System.Diagnostics.ProcessThread
		TextBox1.Text = TextBox1.Text & "Name: " & _
		System.Threading.Thread.CurrentThread.Name & vbCrLf

		For Each ProcessThreadArray In p.Threads
			TextBox1.Text = TextBox1.Text & _
			"------------------------------" & vbCrLf
			TextBox1.Text = TextBox1.Text & _
			"Thread ID: " & ProcessThreadArray.Id.ToString & vbCrLf
			TextBox1.Text = TextBox1.Text & _
			"PriorityLevel :" & ProcessThreadArray.PriorityLevel.ToString & vbCrLf
			TextBox1.Text = TextBox1.Text & _
			"ThreadState: " & ProcessThreadArray.ThreadState.ToString & vbCrLf
		Next
		
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
	Friend WithEvents Button1 As System.Windows.Forms.Button
	Friend WithEvents Button2 As System.Windows.Forms.Button
	Friend WithEvents Button3 As System.Windows.Forms.Button
	Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
	Friend WithEvents Label1 As System.Windows.Forms.Label
	Friend WithEvents Button4 As System.Windows.Forms.Button
	<System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
		Me.Button1 = New System.Windows.Forms.Button()
		Me.Button2 = New System.Windows.Forms.Button()
		Me.Button3 = New System.Windows.Forms.Button()
		Me.TextBox1 = New System.Windows.Forms.TextBox()
		Me.Label1 = New System.Windows.Forms.Label()
		Me.Button4 = New System.Windows.Forms.Button()
		Me.SuspendLayout()
		'
		'Button1
		'
		Me.Button1.Location = New System.Drawing.Point(16, 16)
		Me.Button1.Name = "Button1"
		Me.Button1.Size = New System.Drawing.Size(304, 23)
		Me.Button1.TabIndex = 0
		Me.Button1.Text = "Start background Thread"
		'
		'Button2
		'
		Me.Button2.Location = New System.Drawing.Point(16, 56)
		Me.Button2.Name = "Button2"
		Me.Button2.Size = New System.Drawing.Size(304, 23)
		Me.Button2.TabIndex = 1
		Me.Button2.Text = "Put Thread to Sleep"
		'
		'Button3
		'
		Me.Button3.Location = New System.Drawing.Point(16, 96)
		Me.Button3.Name = "Button3"
		Me.Button3.Size = New System.Drawing.Size(304, 23)
		Me.Button3.TabIndex = 2
		Me.Button3.Text = "Kill the Process"
		'
		'TextBox1
		'
		Me.TextBox1.Anchor = (((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
					Or System.Windows.Forms.AnchorStyles.Left) _
					Or System.Windows.Forms.AnchorStyles.Right)
		Me.TextBox1.Location = New System.Drawing.Point(8, 240)
		Me.TextBox1.Multiline = True
		Me.TextBox1.Name = "TextBox1"
		Me.TextBox1.ScrollBars = System.Windows.Forms.ScrollBars.Both
		Me.TextBox1.Size = New System.Drawing.Size(360, 184)
		Me.TextBox1.TabIndex = 3
		Me.TextBox1.Text = "Waiting for Thread Information"
		'
		'Label1
		'
		Me.Label1.Location = New System.Drawing.Point(16, 184)
		Me.Label1.Name = "Label1"
		Me.Label1.Size = New System.Drawing.Size(336, 23)
		Me.Label1.TabIndex = 4
		Me.Label1.Text = "Thread Running?"
		'
		'Button4
		'
		Me.Button4.BackColor = System.Drawing.Color.Red
		Me.Button4.Font = New System.Drawing.Font("Microsoft Sans Serif", 7.8!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
		Me.Button4.Location = New System.Drawing.Point(16, 136)
		Me.Button4.Name = "Button4"
		Me.Button4.Size = New System.Drawing.Size(328, 23)
		Me.Button4.TabIndex = 5
		Me.Button4.Text = "Run Loop in Primary Thread - and Hang!"
		'
		'Form1
		'
		Me.AutoScaleBaseSize = New System.Drawing.Size(6, 15)
		Me.ClientSize = New System.Drawing.Size(376, 442)
		Me.Controls.AddRange(New System.Windows.Forms.Control() {Me.Button4, Me.Label1, Me.TextBox1, Me.Button3, Me.Button2, Me.Button1})
		Me.Name = "Form1"
		Me.Text = "MyThreadingExampleVB"
		Me.ResumeLayout(False)

	End Sub

#End Region


	Dim myThreadStart As New _
	System.Threading.ThreadStart(AddressOf ThreadingDelegateMethod)
	Dim mythread As New System.Threading.Thread(myThreadStart)
	Dim i As Int32

		
	Private Sub Button1_Click_1(ByVal sender As System.Object, _
	ByVal e As System.EventArgs) Handles Button1.Click
		Button1.Enabled = False
		Button4.Enabled = False
		Call ThreadingDemo()
	End Sub

	Private Sub Button2_Click(ByVal sender As System.Object, _
	ByVal e As System.EventArgs) Handles Button2.Click
		mythread.Sleep(2000)

	End Sub

	Private Sub ThreadingDemo()
		mythread.Name = "MyBackGroundThread"
		mythread.Priority = Threading.ThreadPriority.BelowNormal
		mythread.Start()

	End Sub

	Public Sub ThreadingDelegateMethod()
		Dim myappdomain As AppDomain
		myappdomain = AppDomain.CurrentDomain

		Dim p2 As System.Diagnostics.Process = Process.GetCurrentProcess()
		Dim ProcessThreadArray2 As System.Diagnostics.ProcessThread
		TextBox1.Text = TextBox1.Text & _
		"********************************" & vbCrLf
		TextBox1.Text = TextBox1.Text & _
		"Current Executing Thread from AppDomain: " & _
		myappdomain.GetCurrentThreadId.ToString & vbCrLf
		TextBox1.Text = TextBox1.Text & "Name: " & _
		 System.Threading.Thread.CurrentThread.Name & vbCrLf
		For Each ProcessThreadArray2 In p2.Threads
			TextBox1.Text = TextBox1.Text & _
			"------------------------------" & vbCrLf
			TextBox1.Text = TextBox1.Text & "Thread ID: " & _
			ProcessThreadArray2.Id.ToString & vbCrLf
			TextBox1.Text = TextBox1.Text & "PriorityLevel :" & _
			ProcessThreadArray2.PriorityLevel.ToString & vbCrLf
			TextBox1.Text = TextBox1.Text & "ThreadState: " & _
			ProcessThreadArray2.ThreadState.ToString & vbCrLf
		Next

		Do While True
			i += 1
			Dim myMethodInvoker As New MethodInvoker(AddressOf updateLabel)
			myMethodInvoker.Invoke()
			'Call updateLabel()
		Loop
	End Sub
	Public Sub updateLabel()
		Label1.Text = "!! The Thread is Running !! " & i
	End Sub


	Private Sub Button3_Click(ByVal sender As System.Object, _
	ByVal e As System.EventArgs) Handles Button3.Click
		'one way to kill a process
		'Dim p3 As System.Diagnostics.Process = _
		'Process.GetCurrentProcess()
		'p3.Kill()

		'Another way to "kill" a process
		System.Environment.Exit(0)

	End Sub

	Private Sub Button4_Click(ByVal sender As System.Object, _
	ByVal e As System.EventArgs) Handles Button4.Click
		'This will block the primary thread
		Call ThreadingDelegateMethod()
	End Sub

End Class
