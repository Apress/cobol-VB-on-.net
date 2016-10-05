000010 IDENTIFICATION DIVISION.
000020 CLASS-ID. WebForm1 AS "WebApplicationSampleCobol.WebForm1"
000030     INHERITS CLASS-PAGE.
000040 ENVIRONMENT DIVISION.
000050 CONFIGURATION SECTION.
000060 SPECIAL-NAMES.
000070 REPOSITORY.
000080     CLASS CLASS-EVENTARGS AS "System.EventArgs"
000090     DELEGATE DELEGATE-EVENTHANDLER AS "System.EventHandler"
000100     CLASS CLASS-OBJECT AS "System.Object"
000110     CLASS CLASS-PAGE AS "System.Web.UI.Page"
000120     CLASS CLASS-BUTTON AS "System.Web.UI.WebControls.Button"
000130     CLASS CLASS-TEXTBOX AS "System.Web.UI.WebControls.TextBox"
000140     PROPERTY PROP-BUTTON1 AS "Button1"
000150     PROPERTY PROP-TEXT AS "Text"
000160     .
000170
000180 OBJECT.
000190 DATA DIVISION.
000200 WORKING-STORAGE SECTION.
000210 01 Button1 OBJECT REFERENCE CLASS-BUTTON PROPERTY.
000220 01 TextBox1 OBJECT REFERENCE CLASS-TEXTBOX PROPERTY.
000230 PROCEDURE DIVISION.
000240
000250* Required method for Designer support - do not modify
000260* the contents of this method with the code editor.
000270 METHOD-ID. INITIALIZECOMPONENT AS "InitializeComponent" PRIVATE.
000280 DATA DIVISION.
000290 WORKING-STORAGE SECTION.
000300 01 TEMP1 OBJECT REFERENCE CLASS-BUTTON.
000310 01 TEMP2 OBJECT REFERENCE DELEGATE-EVENTHANDLER.
000320 01 TEMP3 OBJECT REFERENCE DELEGATE-EVENTHANDLER.
000330 PROCEDURE DIVISION.
000340*>>IMP BEGIN-EMBEDDED-CODEDOM
000350*<embedded-codedom>
000360*<object type="System.CodeDom.CodeAttachEventStatement">
000370*<prop name="Event">
000380*<object type="System.CodeDom.CodeEventReferenceExpression">
000390*<prop name="TargetObject">
000400*<object type="System.CodeDom.CodeFieldReferenceExpression">
000410*<prop name="TargetObject">
000420*<object type="System.CodeDom.CodeThisReferenceExpression">
000430*</object>
000440*</prop>
000450*<prop name="FieldName">
000460*<string value="Button1" />
000470*</prop>
000480*</object>
000490*</prop>
000500*<prop name="EventName">
000510*<string value="Click" />
000520*</prop>
000530*</object>
000540*</prop>
000550*<prop name="Listener">
000560*<object type="System.CodeDom.CodeDelegateCreateExpression">
000570*<prop name="DelegateType">
000580*<object type="System.CodeDom.CodeTypeReference">
000590*<prop name="BaseType">
000600*<string value="System.EventHandler" />
000610*</prop>
000620*</object>
000630*</prop>
000640*<prop name="TargetObject">
000650*<object type="System.CodeDom.CodeThisReferenceExpression">
000660*</object>
000670*</prop>
000680*<prop name="MethodName">
000690*<string value="Button1_Click" />
000700*</prop>
000710*</object>
000720*</prop>
000730*</object>
000740*<object type="System.CodeDom.CodeAttachEventStatement">
000750*<prop name="Event">
000760*<object type="System.CodeDom.CodeEventReferenceExpression">
000770*<prop name="TargetObject">
000780*<object type="System.CodeDom.CodeThisReferenceExpression">
000790*</object>
000800*</prop>
000810*<prop name="EventName">
000820*<string value="Load" />
000830*</prop>
000840*</object>
000850*</prop>
000860*<prop name="Listener">
000870*<object type="System.CodeDom.CodeDelegateCreateExpression">
000880*<prop name="DelegateType">
000890*<object type="System.CodeDom.CodeTypeReference">
000900*<prop name="BaseType">
000910*<string value="System.EventHandler" />
000920*</prop>
000930*</object>
000940*</prop>
000950*<prop name="TargetObject">
000960*<object type="System.CodeDom.CodeThisReferenceExpression">
000970*</object>
000980*</prop>
000990*<prop name="MethodName">
001000*<string value="Page_Load" />
001010*</prop>
001020*</object>
001030*</prop>
001040*</object>
001050*</embedded-codedom>
001060*>>IMP END-EMBEDDED-CODEDOM
001070     SET TEMP1 TO PROP-BUTTON1 OF SELF
001080     INVOKE DELEGATE-EVENTHANDLER "NEW" USING BY VALUE SELF BY VALUE N"Button1_Click" RETURNING TEMP2
001090     INVOKE TEMP1 "add_Click" USING BY VALUE TEMP2
001100     INVOKE DELEGATE-EVENTHANDLER "NEW" USING BY VALUE SELF BY VALUE N"Page_Load" RETURNING TEMP3
001110     INVOKE SELF "add_Load" USING BY VALUE TEMP3
001120 END METHOD INITIALIZECOMPONENT.
001130
001140 METHOD-ID. ONINIT AS "OnInit" OVERRIDE PROTECTED.
001150 DATA DIVISION.
001160 LINKAGE SECTION.
001170 01 PARAM-E OBJECT REFERENCE CLASS-EVENTARGS.
001180 PROCEDURE DIVISION USING BY VALUE PARAM-E.
001190     INVOKE SELF "InitializeComponent".
001200     INVOKE SUPER "OnInit" USING BY VALUE PARAM-E.
001210 END METHOD ONINIT.
001220
001230 METHOD-ID. PAGE_LOAD AS "Page_Load" PRIVATE.
001240 DATA DIVISION.
001250 LINKAGE SECTION.
001260 01 PARAM-SENDER OBJECT REFERENCE CLASS-OBJECT.
001270 01 PARAM-E OBJECT REFERENCE CLASS-EVENTARGS.
001280 PROCEDURE DIVISION USING BY VALUE PARAM-SENDER PARAM-E.
001300 END METHOD PAGE_LOAD.
001310 
001320 METHOD-ID. Button1_Click PRIVATE.
001330 DATA DIVISION.
001340 LINKAGE SECTION.
001350 01 sender OBJECT REFERENCE CLASS-OBJECT.
001360 01 e OBJECT REFERENCE CLASS-EVENTARGS.
001370 PROCEDURE DIVISION USING BY VALUE sender e.
001371      SET PROP-TEXT OF TextBox1 TO "Hello World".
001380 END METHOD Button1_Click.
001390
001400 END OBJECT.
001410 END CLASS WebForm1.