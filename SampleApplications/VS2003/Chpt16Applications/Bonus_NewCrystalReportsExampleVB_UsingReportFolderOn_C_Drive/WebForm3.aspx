<%@ Page Language="vb" AutoEventWireup="false" Codebehind="WebForm3.aspx.vb" Inherits="NewCrystalReportsExampleVB.WebForm3"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>WebForm3</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:button id="Button1" style="Z-INDEX: 101; LEFT: 41px; POSITION: absolute; TOP: 93px" runat="server" Text="Display WebForm1 to See Crystal Report Viewer Control"></asp:button><asp:button id="Button3" style="Z-INDEX: 106; LEFT: 60px; POSITION: absolute; TOP: 365px" runat="server" Text="Deliver reports using Email" Width="229px"></asp:button><asp:button id="Button2" style="Z-INDEX: 102; LEFT: 41px; POSITION: absolute; TOP: 149px" runat="server" Text="Display WebForm2 to see choices for Export Formats" Width="625px"></asp:button><asp:hyperlink id="HyperLink1" style="Z-INDEX: 103; LEFT: 53px; POSITION: absolute; TOP: 213px" runat="server" NavigateUrl="file:///C:\Reportfolder\myfirstCR.doc">View Exported Word Doc</asp:hyperlink><asp:hyperlink id="HyperLink2" style="Z-INDEX: 104; LEFT: 56px; POSITION: absolute; TOP: 315px" runat="server" NavigateUrl="file:///C:\Reportfolder\myfirstCR.xls">View Exported Excel Spreadsheet</asp:hyperlink><asp:hyperlink id="HyperLink3" style="Z-INDEX: 105; LEFT: 54px; POSITION: absolute; TOP: 263px" runat="server" NavigateUrl="file:///C:\Reportfolder\myfirstCR.pdf">View Exported PDF File</asp:hyperlink><asp:hyperlink id="HyperLink4" style="Z-INDEX: 107; LEFT: 61px; POSITION: absolute; TOP: 478px" runat="server" Width="298px" NavigateUrl="MAILTO:Richardson@eClecticSoftwareSolutions.com">Email Feedback to Chris Richardson</asp:hyperlink><asp:textbox id="TextBox1" style="Z-INDEX: 108; LEFT: 312px; POSITION: absolute; TOP: 411px" runat="server" Width="335px">Richardson@eClecticSoftwareSolutions.com</asp:textbox><asp:label id="Label1" style="Z-INDEX: 109; LEFT: 64px; POSITION: absolute; TOP: 411px" runat="server" Width="242px">Enter Email address here --></asp:label></form>
	</body>
</HTML>
