Public Class WebForm1
    Inherits System.Web.UI.Page
	Protected WithEvents Button1 As System.Web.UI.WebControls.Button
	Protected WithEvents Button2 As System.Web.UI.WebControls.Button
	Protected WithEvents TextBox1 As System.Web.UI.WebControls.TextBox

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
	<System.Diagnostics.DebuggerStepThrough()> _
	Private Sub InitializeComponent()

	End Sub

	Private Sub Page_Init(ByVal sender As System.Object, _
	ByVal e As System.EventArgs) Handles MyBase.Init
		'CODEGEN: This method call is required by the Web Form Designer
		'Do not modify it using the code editor.
		InitializeComponent()
	End Sub

#End Region

	Private Sub Page_Load(ByVal sender As System.Object, _
	ByVal e As System.EventArgs) Handles MyBase.Load
		'Put user code to initialize the page here
	End Sub

	Private Sub Button1_Click(ByVal sender As System.Object, _
	ByVal e As System.EventArgs) Handles Button1.Click
		TextBox1.Text = "Hello World"
	End Sub

End Class
