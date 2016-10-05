Public Class ReportViewerForm
    Inherits System.Windows.Forms.Form

#Region " Windows Form Designer generated code "

    Public Sub New()
        MyBase.New()

        'This call is required by the Windows Form Designer.
        InitializeComponent()

        'Add any initialization after the InitializeComponent() call

        Call bindCrystalReportViewer()


    End Sub

    'Retrieve Settings from Application Configuration File (app.config)
    Private strCnn As String = _
            System.Configuration.ConfigurationSettings.AppSettings("DemoConnection")
    Private FileLocation As String = _
            System.Configuration.ConfigurationSettings.AppSettings("OutputFolder")

    
    Private Sub bindCrystalReportViewer()
        'Create an instance of the strongly-typed report object
        Dim CrReport As New _
                   CrystalDecisions.CrystalReports.Engine.ReportDocument()
        Try
            'Load Report Document
            CrReport.Load(System.IO.Directory.GetCurrentDirectory() & "\CrystalReport1.rpt")

            'Pass the populated dataset to the ReportDocument
            CrReport.SetDataSource(GetData())

            'Set the viewer to the ReportDocument
            CrystalReportViewer1.ReportSource = CrReport
        Catch e As Exception
            Trace.Write("bindCrystalReportViewer Failed " & e.Message)
        End Try

    End Sub

    Private Function GetData() As System.Data.DataSet

        Dim MyDS As New System.Data.DataSet()
        Dim MyAdapter As New System.Data.SqlClient.SqlDataAdapter()

        Try
            With MyAdapter
                .SelectCommand = New System.Data.SqlClient.SqlCommand()
                With .SelectCommand
                    .CommandType = CommandType.StoredProcedure
                    .CommandText = "Employee Sales by Country"
                    .Connection = New System.Data.SqlClient.SqlConnection(strCnn)
                    .CommandTimeout = 180
                    .Parameters.Add("@Beginning_Date", SqlDbType.SmallDateTime).Value = "1/1/1900"
                    .Parameters.Add("@Ending_Date", SqlDbType.SmallDateTime).Value = "6/6/2079"
                End With
                .Fill(MyDS, "EmployeeSalesByCountry")
            End With
            'MyDS.WriteXmlSchema(FileLocation & "EmployeeSalesByCountry.xsd")
            Return MyDS
        Catch e As Exception
            Trace.Write("GetData Failed " & e.Message)
        End Try

    End Function

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
    Friend WithEvents CrystalReportViewer1 As CrystalDecisions.Windows.Forms.CrystalReportViewer
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.CrystalReportViewer1 = New CrystalDecisions.Windows.Forms.CrystalReportViewer()
        Me.SuspendLayout()
        '
        'CrystalReportViewer1
        '
        Me.CrystalReportViewer1.ActiveViewIndex = -1
        Me.CrystalReportViewer1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.CrystalReportViewer1.Name = "CrystalReportViewer1"
        Me.CrystalReportViewer1.ReportSource = Nothing
        Me.CrystalReportViewer1.Size = New System.Drawing.Size(680, 525)
        Me.CrystalReportViewer1.TabIndex = 0
        '
        'ReportViewerForm
        '
        Me.AutoScaleBaseSize = New System.Drawing.Size(5, 13)
        Me.ClientSize = New System.Drawing.Size(680, 525)
        Me.Controls.AddRange(New System.Windows.Forms.Control() {Me.CrystalReportViewer1})
        Me.Name = "ReportViewerForm"
        Me.Text = "Crystal Reports Report Viewer Demo"
        Me.ResumeLayout(False)

    End Sub

#End Region

    
End Class
