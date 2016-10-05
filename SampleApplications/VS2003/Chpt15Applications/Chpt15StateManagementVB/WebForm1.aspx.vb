Public Class WebForm1
    Inherits System.Web.UI.Page
	Protected WithEvents Label1 As System.Web.UI.WebControls.Label
	Protected WithEvents Button1 As System.Web.UI.WebControls.Button
	Protected WithEvents TextBox1 As System.Web.UI.WebControls.TextBox
	Protected WithEvents Button3 As System.Web.UI.WebControls.Button
	Protected WithEvents TextBox2 As System.Web.UI.WebControls.TextBox
	Protected WithEvents Label2 As System.Web.UI.WebControls.Label
	Protected WithEvents TextBox3 As System.Web.UI.WebControls.TextBox
	Protected WithEvents Label5 As System.Web.UI.WebControls.Label
	Protected WithEvents Button4 As System.Web.UI.WebControls.Button
	Protected WithEvents TextBox5 As System.Web.UI.WebControls.TextBox
	Protected WithEvents Label7 As System.Web.UI.WebControls.Label
	Protected WithEvents TextBox6 As System.Web.UI.WebControls.TextBox
	Protected WithEvents Label8 As System.Web.UI.WebControls.Label
	Protected WithEvents TextBox7 As System.Web.UI.WebControls.TextBox
	Protected WithEvents TextBox8 As System.Web.UI.WebControls.TextBox
	Protected WithEvents Label9 As System.Web.UI.WebControls.Label
	Protected WithEvents TextBox9 As System.Web.UI.WebControls.TextBox
	Protected WithEvents Label10 As System.Web.UI.WebControls.Label
	Protected WithEvents Label11 As System.Web.UI.WebControls.Label
	Protected WithEvents TextBox10 As System.Web.UI.WebControls.TextBox
	Protected WithEvents Label4 As System.Web.UI.WebControls.Label
	Protected WithEvents Label12 As System.Web.UI.WebControls.Label
	Protected WithEvents Hidden1 As System.Web.UI.HtmlControls.HtmlInputHidden
	Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
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
		'Dim appmodulecoll As HttpModuleCollection = System.Web.HttpContext.Current.ApplicationInstance.Modules
		'Trace.Write("Page Load Was executed")
		'Trace.Warn("Page Load Was executed- Warning")

	End Sub

	Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
		'Response.Redirect("WebForm2.aspx")
		System.Web.HttpContext.Current.Response.Redirect("WebForm2.aspx?PassedQueryStringValue=" & Me.TextBox1.Text)
		'Server.Transfer("WebForm2.aspx")
		'System.Web.HttpContext.Current.Items.Add("MyNewViewSTate", viewstate("MyNewViewSTate"))
		'System.Web.HttpContext.Current.Server.Transfer("WebForm2.aspx")
	End Sub

	Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
		' as an alternative to the HTML <%@ OutputCache Duration="10" VaryByParam="None" %>
		'Me.Response.Cache.SetExpires(DateTime.Now.AddSeconds(10)) 
		'Me.Response.Cache.SetCacheability(HttpCacheability.Public)

		Me.ViewState("MyNewViewSTate") = Me.TextBox1.Text
		Me.Hidden1.Value = Me.TextBox1.Text
		Call CreateCookie()
		Call SaveApplicationCache()
		Button4.Enabled = True
	End Sub

	Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
		Me.TextBox2.Text = CStr(Me.ViewState("MyNewViewSTate"))
		Me.TextBox3.Text = Me.Hidden1.Value
		Call RetrieveCookie()
		Me.TextBox6.Text = Application("MyTimeTheAppStarted")
		Me.TextBox7.Text = Application("MyTimeTheLastRequestWasMade")
		Me.TextBox8.Text = Session("MyTimeTheSessionStarted")
		Me.TextBox9.Text = Session("MyTimeTheSessionIdentity")
		Call RetrieveApplicationCache()
		'Me.Response.Cache.SetExpires(DateTime.Now())
		'Me.ViewState.Clear()
		'Me.Hidden1.Value = String.Empty
		'Me.Request.Cookies.Clear()
		'System.Web.HttpContext.Current.Cache.Remove("MyApplicationCache")
		'Me.Application.Clear()
		'Me.Session.Clear()

	End Sub

	Private Sub CreateCookie()
		Dim MyFirstCookie As New HttpCookie("MiscText")
		MyFirstCookie.Value = Me.TextBox1.Text
		MyFirstCookie.Expires = DateTime.Now.AddSeconds(15)
		Response.Cookies.Add(MyFirstCookie)
	End Sub

	Private Sub RetrieveCookie()
		Dim myRetrievedCookie As HttpCookie
		myRetrievedCookie = Me.Request.Cookies("MiscText")
		Dim myCookieIsExpired As Boolean = (myRetrievedCookie Is Nothing)
		If myCookieIsExpired Then
			Me.TextBox5.Text = "No Cookie"
		Else
			Me.TextBox5.Text = Me.Request.Cookies("MiscText").Value
		End If
	End Sub

	Private Sub SaveApplicationCache()
		Cache.Insert("MyApplicationCache", Me.TextBox1.Text)
		'System.Web.HttpContext.Current.Cache.Insert("MyApplicationCache", Me.TextBox1.Text)
		'Cache.Insert("MyApplicationCache", Me.TextBox1.Text, _
		'Nothing, DateTime.Now.AddSeconds(15), Cache.NoSlidingExpiration)
	End Sub

	Private Sub RetrieveApplicationCache()
		Me.TextBox10.Text = CType(Cache("MyApplicationCache"), String)
		'Dim MyApplicationData As String
		'MyApplicationData = CType(Cache("MyApplicationCache"), String)
		'If MyApplicationData Is Nothing Then
		'	Me.TextBox10.Text = "No Cache"
		'Else
		'	Me.TextBox10.Text = CType(Cache("MyApplicationCache"), String)
		'End If
	End Sub

	Private Sub Button5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)

	End Sub

End Class

