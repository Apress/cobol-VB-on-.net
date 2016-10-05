<%@ Page language="cobol" Codebehind="WebForm1.aspx.cob" 
AutoEventWireup="false" Inherits="MyWebUseValidationCobol.WebForm1" %>
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
			<DIV style="DISPLAY: inline; Z-INDEX: 101; LEFT: 47px; WIDTH: 365px; POSITION: absolute; TOP: 23px; HEIGHT: 28px" ms_positioning="FlowLayout">User 
				Validation using COBOL and ASP.NET</DIV>
			<asp:TextBox id="TextBox1" style="Z-INDEX: 102; LEFT: 213px; POSITION: absolute; TOP: 64px" runat="server" Width="60px" Height="37px"></asp:TextBox>
			<asp:TextBox id="TextBox2" style="Z-INDEX: 103; LEFT: 202px; POSITION: absolute; TOP: 118px" runat="server" Width="59px" Height="37px"></asp:TextBox>
			<asp:TextBox id="TextBox3" style="Z-INDEX: 105; LEFT: 287px; POSITION: absolute; TOP: 177px" runat="server" Width="73px"></asp:TextBox>
			<asp:TextBox id="TextBox4" style="Z-INDEX: 106; LEFT: 269px; POSITION: absolute; TOP: 222px" runat="server" Width="76px" Height="33px"></asp:TextBox>
			<DIV style="DISPLAY: inline; Z-INDEX: 107; LEFT: 46px; WIDTH: 86px; POSITION: absolute; TOP: 63px; HEIGHT: 32px" ms_positioning="FlowLayout">CompareValidator</DIV>
			<DIV style="DISPLAY: inline; Z-INDEX: 112; LEFT: 51px; WIDTH: 86px; POSITION: absolute; TOP: 121px; HEIGHT: 32px" ms_positioning="FlowLayout">RangeValidator</DIV>
			<DIV style="DISPLAY: inline; Z-INDEX: 109; LEFT: 48px; WIDTH: 86px; POSITION: absolute; TOP: 175px; HEIGHT: 32px" ms_positioning="FlowLayout">RegularExpressionValidator</DIV>
			<DIV style="DISPLAY: inline; Z-INDEX: 110; LEFT: 48px; WIDTH: 86px; POSITION: absolute; TOP: 223px; HEIGHT: 32px" ms_positioning="FlowLayout">RequiredFieldValidator</DIV>
			<DIV style="DISPLAY: inline; Z-INDEX: 111; LEFT: 51px; WIDTH: 86px; POSITION: absolute; TOP: 279px; HEIGHT: 32px" ms_positioning="FlowLayout">SummaryValidator</DIV>
			<asp:CompareValidator id="CompareValidator1" style="Z-INDEX: 113; LEFT: 299px; POSITION: absolute; TOP: 72px" runat="server" ErrorMessage="Value not Equal to 9" ControlToValidate="TextBox1" ValueToCompare="9"></asp:CompareValidator>
			<asp:RangeValidator id="RangeValidator1" style="Z-INDEX: 114; LEFT: 303px; POSITION: absolute; TOP: 128px" runat="server" ErrorMessage="Value is higher than 10" ControlToValidate="TextBox2" MaximumValue="10"></asp:RangeValidator>
			<asp:RegularExpressionValidator id="RegularExpressionValidator1" style="Z-INDEX: 116; LEFT: 385px; POSITION: absolute; TOP: 173px" runat="server" ErrorMessage="Value not Valid Phone Number format" ControlToValidate="TextBox3" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
			<asp:RequiredFieldValidator id="RequiredFieldValidator1" style="Z-INDEX: 117; LEFT: 391px; POSITION: absolute; TOP: 226px" runat="server" ErrorMessage="Must Enter a Value" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
			<asp:ValidationSummary id="ValidationSummary1" style="Z-INDEX: 118; LEFT: 240px; POSITION: absolute; TOP: 280px" runat="server" Width="312px" Height="147px"></asp:ValidationSummary>
			<asp:Button id="Button1" style="Z-INDEX: 119; LEFT: 49px; POSITION: absolute; TOP: 392px" runat="server" Text="Post the Form"></asp:Button></form>
	</body>
</HTML>
