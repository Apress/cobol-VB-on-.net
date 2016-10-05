Public Class Form1
    Inherits System.Windows.Forms.Form

#Region " Windows Form Designer generated code "

    Public Sub New()
        MyBase.New()

        'This call is required by the Windows Form Designer.
        InitializeComponent()

		'Add any initialization after the InitializeComponent() call


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
	Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
	<System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
		Me.Button1 = New System.Windows.Forms.Button()
		Me.TextBox1 = New System.Windows.Forms.TextBox()
		Me.SuspendLayout()
		'
		'Button1
		'
		Me.Button1.Location = New System.Drawing.Point(32, 24)
		Me.Button1.Name = "Button1"
		Me.Button1.TabIndex = 0
		Me.Button1.Text = "Button1"
		'
		'TextBox1
		'
		Me.TextBox1.Location = New System.Drawing.Point(32, 64)
		Me.TextBox1.Name = "TextBox1"
		Me.TextBox1.Size = New System.Drawing.Size(240, 22)
		Me.TextBox1.TabIndex = 1
		Me.TextBox1.Text = "TextBox1"
		'
		'Form1
		'
		Me.AutoScaleBaseSize = New System.Drawing.Size(6, 15)
		Me.ClientSize = New System.Drawing.Size(320, 258)
		Me.Controls.AddRange(New System.Windows.Forms.Control() {Me.TextBox1, Me.Button1})
		Me.Name = "Form1"
		Me.Text = "Form1"
		Me.ResumeLayout(False)

	End Sub

#End Region


	Private Sub Button1_Click _
	(ByVal sender As System.Object, ByVal e As System.EventArgs) _
	Handles Button1.Click
		TextBox1.Text = "Hello World :-) "
	End Sub
End Class
