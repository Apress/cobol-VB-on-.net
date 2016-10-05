Imports System.Security.Permissions

Public Class WebForm2
	Inherits System.Web.UI.Page
	Protected WithEvents Button2 As System.Web.UI.WebControls.Button
	Protected WithEvents Button3 As System.Web.UI.WebControls.Button
	Protected WithEvents Button4 As System.Web.UI.WebControls.Button
	Protected WithEvents Button1 As System.Web.UI.WebControls.Button

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
	End Sub

	Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
		Server.Transfer("WebForm3.aspx")
	End Sub

	Private Sub Button2_Click(ByVal sender As System.Object, _
	ByVal e As System.EventArgs) Handles Button2.Click

		Dim FileLocation As String = _
		   System.Configuration.ConfigurationSettings.AppSettings("OutputFolder")

		Dim CrReport As New _
		CrystalDecisions.CrystalReports.Engine.ReportDocument()
		'CrReport.Load(Server.MapPath("CrystalReport1.rpt"))
		CrReport.Load(FileLocation & "CrystalReport1.rpt")
		Dim CrExportOptions As CrystalDecisions.Shared.ExportOptions
		Dim CrDiskFileDestinationOptions As New _
		CrystalDecisions.Shared.DiskFileDestinationOptions()
		Dim CrFormatTypeOptions As New _
		CrystalDecisions.Shared.PdfRtfWordFormatOptions()

		CrDiskFileDestinationOptions.DiskFileName = _
		FileLocation & "myfirstCR.doc"
		'Server.MapPath("myfirstCR.doc")
		CrFormatTypeOptions.FirstPageNumber = 1
		CrFormatTypeOptions.LastPageNumber = 2
		CrFormatTypeOptions.UsePageRange = True
		CrExportOptions = CrReport.ExportOptions

		With CrExportOptions
			.ExportDestinationType = _
			CrystalDecisions.Shared.ExportDestinationType.DiskFile
			.ExportFormatType = _
			CrystalDecisions.Shared.ExportFormatType.WordForWindows
			.DestinationOptions = CrDiskFileDestinationOptions
			.FormatOptions = CrFormatTypeOptions
		End With
		
		CrReport.Export()

	End Sub

	Private Sub Button3_Click(ByVal sender As System.Object, _
	ByVal e As System.EventArgs) Handles Button3.Click

		Dim FileLocation As String = _
		   System.Configuration.ConfigurationSettings.AppSettings("OutputFolder")

		Dim CrReport As New _
		CrystalDecisions.CrystalReports.Engine.ReportDocument()
		'CrReport.Load(Server.MapPath("CrystalReport1.rpt"))
		CrReport.Load(FileLocation & "CrystalReport1.rpt")
		Dim CrExportOptions As CrystalDecisions.Shared.ExportOptions
		Dim CrDiskFileDestinationOptions As New _
		CrystalDecisions.Shared.DiskFileDestinationOptions()
		Dim CrFormatTypeOptions As New _
		CrystalDecisions.Shared.PdfRtfWordFormatOptions()

		CrDiskFileDestinationOptions.DiskFileName = _
		FileLocation & "myfirstCR.pdf"
		'Server.MapPath("myfirstCR.pdf")
		CrFormatTypeOptions.FirstPageNumber = 1
		CrFormatTypeOptions.LastPageNumber = 2
		CrFormatTypeOptions.UsePageRange = True
		CrExportOptions = CrReport.ExportOptions

		With CrExportOptions
			.ExportDestinationType = _
			CrystalDecisions.Shared.ExportDestinationType.DiskFile
			.ExportFormatType = _
			CrystalDecisions.Shared.ExportFormatType.PortableDocFormat
			.DestinationOptions = CrDiskFileDestinationOptions
			.FormatOptions = CrFormatTypeOptions
		End With
		CrReport.Export()

	End Sub

	Private Sub Button4_Click(ByVal sender As System.Object, _
	ByVal e As System.EventArgs) Handles Button4.Click

		Dim FileLocation As String = _
		   System.Configuration.ConfigurationSettings.AppSettings("OutputFolder")

		Dim CrReport As New _
		CrystalDecisions.CrystalReports.Engine.ReportDocument()
		'CrReport.Load(Server.MapPath("CrystalReport1.rpt"))
		CrReport.Load(FileLocation & "CrystalReport1.rpt")
		Dim CrExportOptions As CrystalDecisions.Shared.ExportOptions
		Dim CrDiskFileDestinationOptions As New _
		CrystalDecisions.Shared.DiskFileDestinationOptions()
		Dim CrFormatTypeOptions As New _
		CrystalDecisions.Shared.ExcelFormatOptions()

		CrDiskFileDestinationOptions.DiskFileName = _
		FileLocation & "myfirstCR.xls"
		'Server.MapPath("myfirstCR.xls")
		CrFormatTypeOptions.ExcelTabHasColumnHeadings = True
		CrFormatTypeOptions.ExcelUseConstantColumnWidth = False
		CrExportOptions = CrReport.ExportOptions

		With CrExportOptions
			.ExportDestinationType = _
			CrystalDecisions.Shared.ExportDestinationType.DiskFile
			.ExportFormatType = CrystalDecisions.Shared.ExportFormatType.Excel
			.DestinationOptions = CrDiskFileDestinationOptions
			.FormatOptions = CrFormatTypeOptions
		End With
		CrReport.Export()

	End Sub
End Class
