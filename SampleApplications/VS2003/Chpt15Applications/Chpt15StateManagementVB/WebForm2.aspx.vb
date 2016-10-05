Public Class WebForm2
    Inherits System.Web.UI.Page
	Protected WithEvents Button1 As System.Web.UI.WebControls.Button
	Protected WithEvents Label1 As System.Web.UI.WebControls.Label
	Protected WithEvents TextBox1 As System.Web.UI.WebControls.TextBox
	Protected WithEvents Label3 As System.Web.UI.WebControls.Label

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

	End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

	Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
		'Put user code to initialize the page here
		Me.TextBox1.Text = Request.QueryString("PassedQueryStringValue")
		'If Me Is System.Web.HttpContext.Current.Handler Then
		'	If Request.QueryString.Count > 0 Then
		'		'Request("PassedQueryStringValue") <> CStr(0)
		'		Me.TextBox1.Text = Request.QueryString("PassedQueryStringValue")
		'	End If
		'Else
		'	Me.TextBox1.Text = CStr(System.Web.HttpContext.Current.Items("MyNewViewSTate"))
		'End If

	End Sub
	Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
		Response.Redirect("WebForm1.aspx")
		'System.Web.HttpContext.Current.Response.Redirect("WebForm1.aspx")
		'Server.Transfer("WebForm1.aspx")
		'System.Web.HttpContext.Current.Server.Transfer("WebForm1.aspx")
	End Sub
	
End Class
