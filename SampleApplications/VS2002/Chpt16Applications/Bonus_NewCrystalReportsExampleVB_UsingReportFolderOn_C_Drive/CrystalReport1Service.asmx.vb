Imports System
Imports System.Web.Services
Imports CrystalDecisions.Shared
Imports CrystalDecisions.CrystalReports.Engine
Imports CrystalDecisions.ReportSource
Imports CrystalDecisions.Web.Services


< WebService( Namespace:="http://crystaldecisions.com/reportwebservice/9.1/" ) > _
Public Class CrystalReport1Service
    Inherits ReportServiceBase
    
    Public Sub New()
        Me.ReportSource = New CachedWebCrystalReport1(Me)
    End Sub

    Protected Sub OnInitReport(ByVal source As Object, ByVal args As EventArgs)
    End Sub


    Public Class CachedWebCrystalReport1
        Implements ICachedReport

        Protected webService As CrystalReport1Service


        Public Sub New(ByVal webServiceParam As CrystalReport1Service)
            Me.webService = webServiceParam
        End Sub

        Public Overridable Property IsCacheable() As Boolean _
                Implements ICachedReport.IsCacheable
            Get
                Return True
            End Get
            Set(ByVal Value As Boolean)
            End Set
        End Property

        Public Overridable Property ShareDBLogonInfo() As Boolean _
                Implements ICachedReport.ShareDBLogonInfo
            Get
                Return False
            End Get
            Set(ByVal Value As Boolean)
            End Set
        End Property

        Public Overridable Property CacheTimeOut() As TimeSpan _
                Implements ICachedReport.CacheTimeOut
            Get
                Return (CachedReportConstants.DEFAULT_TIMEOUT)
            End Get
            Set(ByVal Value As TimeSpan)
            End Set
        End Property

        Protected Overridable Function CreateReport() As ReportDocument _
                Implements ICachedReport.CreateReport
            Dim report As CrystalReport1 = New CrystalReport1()

            AddHandler report.InitReport, New EventHandler(AddressOf Me.webService.OnInitReport)

            Return report
        End Function

        Public Overridable Function GetCustomizedCacheKey(ByVal request As RequestContext) As String _
                Implements ICachedReport.GetCustomizedCacheKey
            Dim key As String = Nothing

            '    key = RequestContext.BuildCompleteCacheKey(Nothing, Nothing, Me.GetType(), Me.ShareDBLogonInfo)

            Return key
        End Function
    End Class 'CachedWebCrystalReport1

End Class
