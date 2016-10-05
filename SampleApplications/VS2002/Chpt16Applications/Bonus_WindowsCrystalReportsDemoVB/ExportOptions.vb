Public Class ExportOptions
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
    Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents Button3 As System.Windows.Forms.Button
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.Button3 = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(56, 40)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(112, 23)
        Me.Button1.TabIndex = 0
        Me.Button1.Text = "Export To PDF"
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(56, 88)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(112, 23)
        Me.Button2.TabIndex = 1
        Me.Button2.Text = "Export To XLS"
        '
        'Button3
        '
        Me.Button3.Location = New System.Drawing.Point(56, 136)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(112, 23)
        Me.Button3.TabIndex = 2
        Me.Button3.Text = "Export to DOC"
        '
        'ExportOptions
        '
        Me.AutoScaleBaseSize = New System.Drawing.Size(5, 13)
        Me.ClientSize = New System.Drawing.Size(248, 213)
        Me.Controls.AddRange(New System.Windows.Forms.Control() {Me.Button3, Me.Button2, Me.Button1})
        Me.Name = "ExportOptions"
        Me.Text = "ExportOptions"
        Me.ResumeLayout(False)

    End Sub

#End Region

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click

        Try
            Dim FileLocation As String = _
           System.Configuration.ConfigurationSettings.AppSettings("OutputFolder")

            Dim reportname As String = System.DateTime.Now.ToFileTime & ".pdf"

            Dim ds As System.Data.DataSet
            ds = GetData()
            Dim CrReport As New _
              CrystalDecisions.CrystalReports.Engine.ReportDocument()
            CrReport.Load(System.IO.Directory.GetCurrentDirectory() & "\CrystalReport1.rpt")
            CrReport.SetDataSource(ds)

            Dim CrExportOptions As CrystalDecisions.Shared.ExportOptions
            Dim CrDiskFileDestinationOptions As New _
            CrystalDecisions.Shared.DiskFileDestinationOptions()
            Dim CrFormatTypeOptions As New _
            CrystalDecisions.Shared.PdfRtfWordFormatOptions()

            CrDiskFileDestinationOptions.DiskFileName = _
              FileLocation & reportname
            CrFormatTypeOptions.FirstPageNumber = 1
            CrFormatTypeOptions.LastPageNumber = 30
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

        Catch myException As Exception
            Trace.Write("Export PDF Failed " & myException.Message)
        End Try

    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Try
            Dim FileLocation As String = _
           System.Configuration.ConfigurationSettings.AppSettings("OutputFolder")
            Dim reportname As String = System.DateTime.Now.ToFileTime & ".xls"

            Dim ds As System.Data.DataSet
            ds = GetData()
            Dim CrReport As New _
              CrystalDecisions.CrystalReports.Engine.ReportDocument()
            CrReport.Load(System.IO.Directory.GetCurrentDirectory() & "\CrystalReport1.rpt")
            CrReport.SetDataSource(ds)

            Dim CrExportOptions As CrystalDecisions.Shared.ExportOptions
            Dim CrDiskFileDestinationOptions As New _
            CrystalDecisions.Shared.DiskFileDestinationOptions()
            Dim CrFormatTypeOptions As New _
            CrystalDecisions.Shared.ExcelFormatOptions()

            CrDiskFileDestinationOptions.DiskFileName = _
              FileLocation & reportname
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

        Catch myException As Exception
            Trace.Write("Export XLS Failed " & myException.Message)
        End Try
    End Sub


    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click

        Try
            Dim FileLocation As String = _
                       System.Configuration.ConfigurationSettings.AppSettings("OutputFolder")
            Dim reportname As String = System.DateTime.Now.ToFileTime & ".doc"

            Dim ds As System.Data.DataSet
            ds = GetData()
            Dim CrReport As New _
              CrystalDecisions.CrystalReports.Engine.ReportDocument()
            CrReport.Load(System.IO.Directory.GetCurrentDirectory() & "\CrystalReport1.rpt")
            CrReport.SetDataSource(ds)

            Dim CrExportOptions As CrystalDecisions.Shared.ExportOptions
            Dim CrDiskFileDestinationOptions As New _
            CrystalDecisions.Shared.DiskFileDestinationOptions()
            Dim CrFormatTypeOptions As New _
            CrystalDecisions.Shared.PdfRtfWordFormatOptions()

            CrDiskFileDestinationOptions.DiskFileName = _
             FileLocation & reportname
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

        Catch myException As Exception
            Trace.Write("Export DOC Failed " & myException.Message)
        End Try
    End Sub

    Private Function GetData() As System.Data.DataSet
        Dim strCnn As String = _
           System.Configuration.ConfigurationSettings.AppSettings("DemoConnection")

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



    'Just having Fun !
    Private NowYouSeeMeNowYouDont As Boolean
    Private Sub ExportOptions_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Click
        NowYouSeeMeNowYouDont = Not NowYouSeeMeNowYouDont
        If NowYouSeeMeNowYouDont Then
            Me.Opacity = 1
        Else
            Me.Opacity = 0.3
        End If
    End Sub

End Class
