Public Class WebForm3
    Inherits System.Web.UI.Page
	Protected WithEvents Button1 As System.Web.UI.WebControls.Button
	Protected WithEvents HyperLink1 As System.Web.UI.WebControls.HyperLink
	Protected WithEvents HyperLink2 As System.Web.UI.WebControls.HyperLink
	Protected WithEvents HyperLink3 As System.Web.UI.WebControls.HyperLink
	Protected WithEvents Button3 As System.Web.UI.WebControls.Button
	Protected WithEvents LinkButton1 As System.Web.UI.WebControls.LinkButton
	Protected WithEvents HyperLink4 As System.Web.UI.WebControls.HyperLink
	Protected WithEvents TextBox1 As System.Web.UI.WebControls.TextBox
	Protected WithEvents Label1 As System.Web.UI.WebControls.Label
	Protected WithEvents Button2 As System.Web.UI.WebControls.Button

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

	Private Sub Page_Load(ByVal sender As System.Object, _
	ByVal e As System.EventArgs) Handles MyBase.Load

	End Sub

	Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
		Server.Transfer("Webform1.aspx")
	End Sub

	Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
		Server.Transfer("Webform2.aspx")
	End Sub

	Private Sub Button3_Click(ByVal sender As System.Object, _
	ByVal e As System.EventArgs) Handles Button3.Click

		Dim MyEmailMessage As New System.Web.Mail.MailMessage()
		MyEmailMessage.To = TextBox1.Text
		MyEmailMessage.From = TextBox1.Text
		MyEmailMessage.Subject = "A Satisfied Customer"
		MyEmailMessage.BodyFormat = System.Web.Mail.MailFormat.Text
		MyEmailMessage.Body = "Sending an SMTP Email is easy!"

		Dim myattachment1 As System.Web.Mail.MailAttachment = New _
		System.Web.Mail.MailAttachment(Server.MapPath("myfirstCR.doc"))
		MyEmailMessage.Attachments.Add(myattachment1)

		Dim myattachment2 As System.Web.Mail.MailAttachment = New _
		System.Web.Mail.MailAttachment(Server.MapPath("myfirstCR.pdf"))
		MyEmailMessage.Attachments.Add(myattachment2)

		Dim myattachment3 As System.Web.Mail.MailAttachment = New _
		System.Web.Mail.MailAttachment(Server.MapPath("myfirstCR.xls"))
		MyEmailMessage.Attachments.Add(myattachment3)

		System.Web.Mail.SmtpMail.Send(MyEmailMessage)

	End Sub


End Class
