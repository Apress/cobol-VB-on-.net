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
	Friend WithEvents Button2 As System.Windows.Forms.Button
	<System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
		Me.Button1 = New System.Windows.Forms.Button()
		Me.TextBox1 = New System.Windows.Forms.TextBox()
		Me.Button2 = New System.Windows.Forms.Button()
		Me.SuspendLayout()
		'
		'Button1
		'
		Me.Button1.Location = New System.Drawing.Point(8, 64)
		Me.Button1.Name = "Button1"
		Me.Button1.TabIndex = 0
		Me.Button1.Text = "Button1"
		'
		'TextBox1
		'
		Me.TextBox1.Location = New System.Drawing.Point(8, 104)
		Me.TextBox1.Name = "TextBox1"
		Me.TextBox1.Size = New System.Drawing.Size(328, 22)
		Me.TextBox1.TabIndex = 1
		Me.TextBox1.Text = "Button1 is for Cobol.NET & Button2 is for VB.NET"
		'
		'Button2
		'
		Me.Button2.Location = New System.Drawing.Point(104, 64)
		Me.Button2.Name = "Button2"
		Me.Button2.TabIndex = 2
		Me.Button2.Text = "Button2"
		'
		'Form1
		'
		Me.AutoScaleBaseSize = New System.Drawing.Size(6, 15)
		Me.ClientSize = New System.Drawing.Size(368, 270)
		Me.Controls.AddRange(New System.Windows.Forms.Control() {Me.Button2, Me.TextBox1, Me.Button1})
		Me.Name = "Form1"
		Me.Text = "ServicedComponentClientVB"
		Me.ResumeLayout(False)

	End Sub

#End Region

	Private Sub Button1_Click(ByVal sender As System.Object, _
	ByVal e As System.EventArgs) Handles Button1.Click
		Try
			Dim mycobolclass As New MyFirstClassLibraryCobol.MyFirstClass()
			Dim mystring As String = _
			mycobolclass.DoTransaction("Remove This String To Test Exception")
			TextBox1.Text = mystring

		Catch myexception As ArgumentException
			Trace.Write(myexception.Message)
		Catch myexception As Exception
			Trace.Write(myexception.Message)
		End Try

	End Sub


	Private Sub Button2_Click(ByVal sender As System.Object, _
	ByVal e As System.EventArgs) Handles Button2.Click
		Dim myvbclass As New MyFirstClassLibraryVB.MyFirstClassLibraryVB()
		Dim mystring As String = myvbclass.DoTransaction
		TextBox1.Text = mystring

	End Sub
End Class
