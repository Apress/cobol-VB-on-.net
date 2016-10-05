<%@ Page Language="vb" AutoEventWireup="false" Codebehind="WebForm3.aspx.vb" Inherits="CrystalReportsExampleVB.WebForm3"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>WebForm3</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:Button id="Button1" style="Z-INDEX: 101; LEFT: 41px; POSITION: absolute; TOP: 93px" runat="server" Text="Display WebForm1 to See Crystal Report Viewer Control"></asp:Button>
			<asp:Button id="Button3" style="Z-INDEX: 106; LEFT: 60px; POSITION: absolute; TOP: 365px" runat="server" Text="Deliver reports using Email" Width="229px"></asp:Button>
			<asp:Button id="Button2" style="Z-INDEX: 102; LEFT: 41px; POSITION: absolute; TOP: 149px" runat="server" Text="Display WebForm2 to see choices for Export Formats" Width="625px"></asp:Button>
			<asp:HyperLink id="HyperLink1" style="Z-INDEX: 103; LEFT: 53px; POSITION: absolute; TOP: 213px" runat="server" NavigateUrl="file:///C:\Inetpub\wwwroot\CrystalReportsExampleVB\myfirstCR.doc">View Exported Word Doc</asp:HyperLink>
			<asp:HyperLink id="HyperLink2" style="Z-INDEX: 104; LEFT: 56px; POSITION: absolute; TOP: 315px" runat="server" NavigateUrl="file:///C:\Inetpub\wwwroot\CrystalReportsExampleVB\myfirstCR.xls">View Exported Excel Spreadsheet</asp:HyperLink>
			<asp:HyperLink id="HyperLink3" style="Z-INDEX: 105; LEFT: 54px; POSITION: absolute; TOP: 263px" runat="server" NavigateUrl="file:///C:\Inetpub\wwwroot\CrystalReportsExampleVB\myfirstCR.pdf">View Exported PDF File</asp:HyperLink>
			<asp:HyperLink id="HyperLink4" style="Z-INDEX: 107; LEFT: 61px; POSITION: absolute; TOP: 478px" runat="server" Width="298px" NavigateUrl="MAILTO:Richardson@eClecticSoftwareSolutions.com">Email Feedback to Chris Richardson</asp:HyperLink>
			<asp:TextBox id="TextBox1" style="Z-INDEX: 108; LEFT: 312px; POSITION: absolute; TOP: 411px" runat="server" Width="335px">Richardson@eClecticSoftwareSolutions.com</asp:TextBox>
			<asp:Label id="Label1" style="Z-INDEX: 109; LEFT: 64px; POSITION: absolute; TOP: 411px" runat="server" Width="242px">Enter Email address here --></asp:Label>
		</form>
	</body>
</HTML>
