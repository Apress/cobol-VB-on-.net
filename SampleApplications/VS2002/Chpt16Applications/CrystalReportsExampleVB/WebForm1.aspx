<%@ Page Language="vb" AutoEventWireup="false" Codebehind="WebForm1.aspx.vb" Inherits="CrystalReportsExampleVB.WebForm1"%>
<%@ Register TagPrefix="cr" Namespace="CrystalDecisions.Web" Assembly="CrystalDecisions.Web, Version=9.1.3300.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>WebForm1</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" cellSpacing="1" cellPadding="1" width="300" border="1">
				<TR>
					<TD>
						<asp:Button id="Button1" runat="server" Width="336px" Text="Return to WebForm3 for original Choices"></asp:Button></TD>
				</TR>
				<TR>
					<TD><CR:CRYSTALREPORTVIEWER id="CrystalReportViewer1" runat="server" Height="50px" Width="350px"></CR:CRYSTALREPORTVIEWER></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
