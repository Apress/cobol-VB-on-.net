Public Class WebForm1
    Inherits System.Web.UI.Page
	Protected WithEvents Button1 As System.Web.UI.WebControls.Button
	Protected WithEvents CrystalReportViewer1 As CrystalDecisions.Web.CrystalReportViewer

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

		With CrystalReportViewer1
			.DisplayGroupTree = False
			.ReportSource = Server.MapPath("CrystalReport1.rpt")
			.DataBind()
		End With
		
	End Sub

	Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
		Server.Transfer("WebForm3.aspx")
	End Sub
End Class
