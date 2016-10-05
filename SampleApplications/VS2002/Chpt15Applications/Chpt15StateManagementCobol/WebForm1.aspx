<%@ Page language="cobol" Codebehind="WebForm1.aspx.cob" AutoEventWireup="false" Inherits="StateManagementCobol.WebForm1" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm1</title>
		<meta content="Fujitsu NetCOBOL for .NET 1.0" name="GENERATOR">
		<meta content="cobol" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:button id="Button1" style="Z-INDEX: 101; LEFT: 60px; POSITION: absolute; TOP: 107px" runat="server" Text="Redirect To Page2"></asp:button><asp:textbox id="TextBox1" style="Z-INDEX: 102; LEFT: 61px; POSITION: absolute; TOP: 319px" runat="server" Width="73px" Height="25px"></asp:textbox><asp:label id="Label1" style="Z-INDEX: 103; LEFT: 63px; POSITION: absolute; TOP: 293px" runat="server" Width="139px">Input</asp:label>
			<h1><asp:label id="Label3" style="Z-INDEX: 104; LEFT: 54px; POSITION: absolute; TOP: 13px" runat="server" Width="686px">State Management using COBOL.NET</asp:label></h1>
			<asp:button id="Button3" style="Z-INDEX: 105; LEFT: 60px; POSITION: absolute; TOP: 182px" runat="server" Text="Load State" Width="107px"></asp:button><asp:textbox id="TextBox2" style="Z-INDEX: 106; LEFT: 193px; POSITION: absolute; TOP: 404px" runat="server" Width="59px"></asp:textbox><asp:label id="Label2" style="Z-INDEX: 107; LEFT: 88px; POSITION: absolute; TOP: 413px" runat="server" Width="62px">ViewState</asp:label><asp:textbox id="TextBox3" style="Z-INDEX: 109; LEFT: 192px; POSITION: absolute; TOP: 439px" runat="server" Width="60px"></asp:textbox><asp:label id="Label5" style="Z-INDEX: 110; LEFT: 49px; POSITION: absolute; TOP: 443px" runat="server">Hidden Control</asp:label><INPUT id="Hidden1" style="Z-INDEX: 108; LEFT: 438px; WIDTH: 160px; POSITION: absolute; TOP: 449px; HEIGHT: 25px" type="hidden" size="21" name="Hidden1" runat="server">
			<asp:button id="Button4" style="Z-INDEX: 111; LEFT: 59px; POSITION: absolute; TOP: 217px" runat="server" Text="Retrieve State" Width="114px" Enabled="False"></asp:button><asp:textbox id="TextBox5" style="Z-INDEX: 112; LEFT: 190px; POSITION: absolute; TOP: 474px" runat="server" Width="117px"></asp:textbox><asp:label id="Label7" style="Z-INDEX: 113; LEFT: 108px; POSITION: absolute; TOP: 479px" runat="server" Width="63px">Cookie</asp:label><asp:textbox id="TextBox6" style="Z-INDEX: 114; LEFT: 334px; POSITION: absolute; TOP: 161px" runat="server" Width="181px"></asp:textbox><asp:label id="Label8" style="Z-INDEX: 115; LEFT: 329px; POSITION: absolute; TOP: 131px" runat="server" Width="361px">Application State (App Start / Request Start)</asp:label><asp:textbox id="TextBox7" style="Z-INDEX: 116; LEFT: 534px; POSITION: absolute; TOP: 159px" runat="server" Width="194px"></asp:textbox><asp:textbox id="TextBox8" style="Z-INDEX: 117; LEFT: 335px; POSITION: absolute; TOP: 219px" runat="server" Width="185px"></asp:textbox><asp:label id="Label9" style="Z-INDEX: 118; LEFT: 335px; POSITION: absolute; TOP: 196px" runat="server" Width="321px">Session State (Start Time and Identity)</asp:label><asp:textbox id="TextBox9" style="Z-INDEX: 119; LEFT: 334px; POSITION: absolute; TOP: 252px" runat="server" Width="211px"></asp:textbox>
			<H2><asp:label id="Label10" style="Z-INDEX: 120; LEFT: 48px; POSITION: absolute; TOP: 369px" runat="server">Client/Page Based State</asp:label></H2>
			<asp:label id="Label11" style="Z-INDEX: 121; LEFT: 435px; POSITION: absolute; TOP: 408px" runat="server" Width="324px">Hidden Control not seen during Runtime</asp:label><asp:textbox id="TextBox10" style="Z-INDEX: 122; LEFT: 334px; POSITION: absolute; TOP: 319px" runat="server"></asp:textbox><asp:label id="Label4" style="Z-INDEX: 123; LEFT: 334px; POSITION: absolute; TOP: 287px" runat="server">Application Cache</asp:label>
			<H2><asp:label id="Label12" style="Z-INDEX: 124; LEFT: 334px; POSITION: absolute; TOP: 75px" runat="server" Width="309px">Server Based State</asp:label></H2>
			<asp:RequiredFieldValidator id="RequiredFieldValidator1" style="Z-INDEX: 125; LEFT: 153px; POSITION: absolute; TOP: 321px" runat="server" Width="119px" ErrorMessage="Value Needed" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
		</form>
	</body>
</HTML>
