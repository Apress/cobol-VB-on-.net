000010 IDENTIFICATION DIVISION.
000020 CLASS-ID. Form1 AS "MyFirstWinFormCobol.Form1"
000030     INHERITS CLASS-FORM.
000040 ENVIRONMENT DIVISION.
000050 CONFIGURATION SECTION.
000060 SPECIAL-NAMES.
000070     CUSTOM-ATTRIBUTE STA-THREAD CLASS CLASS-STA-THREAD
000080     .
000090 REPOSITORY.
000100     CLASS CLASS-BOOLEAN AS "System.Boolean"
000110     CLASS CLASS-CONTAINER AS "System.ComponentModel.Container"
000120     CLASS CLASS-POINT AS "System.Drawing.Point"
000130     CLASS CLASS-SIZE AS "System.Drawing.Size"
000140     CLASS CLASS-EVENTARGS AS "System.EventArgs"
000150     DELEGATE DELEGATE-EVENTHANDLER AS "System.EventHandler"
000160     CLASS CLASS-OBJECT AS "System.Object"
000170     CLASS CLASS-STA-THREAD AS "System.STAThreadAttribute"
000180     CLASS CLASS-STRING AS "System.String"
000190     CLASS CLASS-APPLICATION AS "System.Windows.Forms.Application"
000200     CLASS CLASS-BUTTON AS "System.Windows.Forms.Button"
000210     CLASS ARRAY-CONTROL AS "System.Windows.Forms.Control[]"
000220     CLASS CLASS-CONTROLCOLLECTION AS "System.Windows.Forms.Control+ControlCollection"
000230     CLASS CLASS-FORM AS "System.Windows.Forms.Form"
000240     CLASS CLASS-TEXTBOX AS "System.Windows.Forms.TextBox"
000250     PROPERTY PROP-AUTOSCALEBASESIZE AS "AutoScaleBaseSize"
000260     PROPERTY PROP-BUTTON1 AS "button1"
000270     PROPERTY PROP-CLIENTSIZE AS "ClientSize"
000280     PROPERTY PROP-CONTROLS AS "Controls"
000290     PROPERTY PROP-LOCATION AS "Location"
000300     PROPERTY PROP-NAME AS "Name"
000310     PROPERTY PROP-SIZE AS "Size"
000320     PROPERTY PROP-TABINDEX AS "TabIndex"
000330     PROPERTY PROP-TEXT AS "Text"
000340     PROPERTY PROP-TEXTBOX1 AS "textBox1"
000350     .
000360
000370 STATIC.
000380 DATA DIVISION.
000390 WORKING-STORAGE SECTION.
000400 PROCEDURE DIVISION.
000410
000420 METHOD-ID. MAIN AS "Main" CUSTOM-ATTRIBUTE IS STA-THREAD.
000430 DATA DIVISION.
000440 WORKING-STORAGE SECTION.
000450 01 TEMP-1 OBJECT REFERENCE Form1.
000460 PROCEDURE DIVISION.
000470     INVOKE Form1 "NEW" RETURNING TEMP-1.
000480     INVOKE CLASS-APPLICATION "Run" USING BY VALUE TEMP-1.
000490 END METHOD MAIN.
000500
000510 END STATIC.
000520
000530 OBJECT
000540     .
000550 DATA DIVISION.
000560 WORKING-STORAGE SECTION.
000570 01 button1 OBJECT REFERENCE CLASS-BUTTON.
000580 01 textBox1 OBJECT REFERENCE CLASS-TEXTBOX.
000590 01 components OBJECT REFERENCE CLASS-CONTAINER.
000600 PROCEDURE DIVISION.
000610
000620 METHOD-ID. NEW.
000630 PROCEDURE DIVISION.
000640     INVOKE SELF "InitializeComponent".
000650 END METHOD NEW.
000660
000670 METHOD-ID. DISPOSE AS "Dispose" OVERRIDE PROTECTED.
000680 DATA DIVISION.
000690 WORKING-STORAGE SECTION.
000700 01 TEMP-1 PIC 1.
000710 LINKAGE SECTION.
000720 01 disposing OBJECT REFERENCE CLASS-BOOLEAN.
000730 PROCEDURE DIVISION USING BY VALUE disposing.
000740     SET TEMP-1 TO disposing.
000750     IF TEMP-1 = B"1" THEN
000760       IF components NOT = NULL THEN
000770         INVOKE components "Dispose"
000780       END-IF
000790     END-IF.
000800     INVOKE SUPER "Dispose" USING BY VALUE disposing.
000810 END METHOD DISPOSE.
000820
000830* Required method for Designer support - do not modify
000840* the contents of this method with the code editor.
000850 METHOD-ID. INITIALIZECOMPONENT AS "InitializeComponent" PRIVATE.
000860 DATA DIVISION.
000870 WORKING-STORAGE SECTION.
000880 01 TEMP1 OBJECT REFERENCE CLASS-BUTTON.
000890 01 TEMP2 OBJECT REFERENCE CLASS-TEXTBOX.
000900 01 TEMP3 PIC S9(9) COMP-5.
000910 01 TEMP4 PIC S9(9) COMP-5.
000920 01 TEMP5 OBJECT REFERENCE CLASS-POINT.
000930 01 TEMP6 OBJECT REFERENCE CLASS-BUTTON.
000940 01 TEMP7 OBJECT REFERENCE CLASS-STRING.
000950 01 TEMP8 OBJECT REFERENCE CLASS-BUTTON.
000960 01 TEMP9 PIC S9(9) COMP-5.
000970 01 TEMP10 OBJECT REFERENCE CLASS-BUTTON.
000980 01 TEMP11 OBJECT REFERENCE CLASS-STRING.
000990 01 TEMP12 OBJECT REFERENCE CLASS-BUTTON.
001000 01 TEMP13 OBJECT REFERENCE CLASS-BUTTON.
001010 01 TEMP14 OBJECT REFERENCE DELEGATE-EVENTHANDLER.
001020 01 TEMP15 PIC S9(9) COMP-5.
001030 01 TEMP16 PIC S9(9) COMP-5.
001040 01 TEMP17 OBJECT REFERENCE CLASS-POINT.
001050 01 TEMP18 OBJECT REFERENCE CLASS-TEXTBOX.
001060 01 TEMP19 OBJECT REFERENCE CLASS-STRING.
001070 01 TEMP20 OBJECT REFERENCE CLASS-TEXTBOX.
001080 01 TEMP21 PIC S9(9) COMP-5.
001090 01 TEMP22 OBJECT REFERENCE CLASS-TEXTBOX.
001100 01 TEMP23 OBJECT REFERENCE CLASS-STRING.
001110 01 TEMP24 OBJECT REFERENCE CLASS-TEXTBOX.
001120 01 TEMP25 PIC S9(9) COMP-5.
001130 01 TEMP26 PIC S9(9) COMP-5.
001140 01 TEMP27 OBJECT REFERENCE CLASS-SIZE.
001150 01 TEMP28 PIC S9(9) COMP-5.
001160 01 TEMP29 PIC S9(9) COMP-5.
001170 01 TEMP30 OBJECT REFERENCE CLASS-SIZE.
001180 01 TEMP31 OBJECT REFERENCE CLASS-CONTROLCOLLECTION.
001190 01 TEMP32 OBJECT REFERENCE CLASS-TEXTBOX.
001200 01 TEMP33 OBJECT REFERENCE CLASS-BUTTON.
001210 01 TEMP34 PIC S9(9) COMP-5.
001220 01 TEMP35 OBJECT REFERENCE ARRAY-CONTROL.
001230 01 TEMP36 OBJECT REFERENCE CLASS-STRING.
001240 01 TEMP37 OBJECT REFERENCE CLASS-STRING.
001250 01 TEMP38 OBJECT REFERENCE DELEGATE-EVENTHANDLER.
001260 01 TEMP39 OBJECT REFERENCE CLASS-BOOLEAN.
001270 PROCEDURE DIVISION.
001280*>>IMP BEGIN-EMBEDDED-CODEDOM
001290*<embedded-codedom>
001300*<object type="System.CodeDom.CodeAssignStatement">
001310*<prop name="Left">
001320*<object type="System.CodeDom.CodeFieldReferenceExpression">
001330*<prop name="TargetObject">
001340*<object type="System.CodeDom.CodeThisReferenceExpression">
001350*</object>
001360*</prop>
001370*<prop name="FieldName">
001380*<string value="button1" />
001390*</prop>
001400*</object>
001410*</prop>
001420*<prop name="Right">
001430*<object type="System.CodeDom.CodeObjectCreateExpression">
001440*<prop name="CreateType">
001450*<object type="System.CodeDom.CodeTypeReference">
001460*<prop name="BaseType">
001470*<string value="System.Windows.Forms.Button" />
001480*</prop>
001490*</object>
001500*</prop>
001510*</object>
001520*</prop>
001530*</object>
001540*<object type="System.CodeDom.CodeAssignStatement">
001550*<prop name="Left">
001560*<object type="System.CodeDom.CodeFieldReferenceExpression">
001570*<prop name="TargetObject">
001580*<object type="System.CodeDom.CodeThisReferenceExpression">
001590*</object>
001600*</prop>
001610*<prop name="FieldName">
001620*<string value="textBox1" />
001630*</prop>
001640*</object>
001650*</prop>
001660*<prop name="Right">
001670*<object type="System.CodeDom.CodeObjectCreateExpression">
001680*<prop name="CreateType">
001690*<object type="System.CodeDom.CodeTypeReference">
001700*<prop name="BaseType">
001710*<string value="System.Windows.Forms.TextBox" />
001720*</prop>
001730*</object>
001740*</prop>
001750*</object>
001760*</prop>
001770*</object>
001780*<object type="System.CodeDom.CodeExpressionStatement">
001790*<prop name="Expression">
001800*<object type="System.CodeDom.CodeMethodInvokeExpression">
001810*<prop name="Method">
001820*<object type="System.CodeDom.CodeMethodReferenceExpression">
001830*<prop name="TargetObject">
001840*<object type="System.CodeDom.CodeThisReferenceExpression">
001850*</object>
001860*</prop>
001870*<prop name="MethodName">
001880*<string value="SuspendLayout" />
001890*</prop>
001900*</object>
001910*</prop>
001920*</object>
001930*</prop>
001940*</object>
001950*<object type="System.CodeDom.CodeCommentStatement">
001960*<prop name="Comment">
001970*<object type="System.CodeDom.CodeComment">
001980*<prop name="Text">
001990*<string value="" />
002000*</prop>
002010*</object>
002020*</prop>
002030*</object>
002040*<object type="System.CodeDom.CodeCommentStatement">
002050*<prop name="Comment">
002060*<object type="System.CodeDom.CodeComment">
002070*<prop name="Text">
002080*<string value="button1" />
002090*</prop>
002100*</object>
002110*</prop>
002120*</object>
002130*<object type="System.CodeDom.CodeCommentStatement">
002140*<prop name="Comment">
002150*<object type="System.CodeDom.CodeComment">
002160*<prop name="Text">
002170*<string value="" />
002180*</prop>
002190*</object>
002200*</prop>
002210*</object>
002220*<object type="System.CodeDom.CodeAssignStatement">
002230*<prop name="Left">
002240*<object type="System.CodeDom.CodePropertyReferenceExpression">
002250*<prop name="TargetObject">
002260*<object type="System.CodeDom.CodeFieldReferenceExpression">
002270*<prop name="TargetObject">
002280*<object type="System.CodeDom.CodeThisReferenceExpression">
002290*</object>
002300*</prop>
002310*<prop name="FieldName">
002320*<string value="button1" />
002330*</prop>
002340*</object>
002350*</prop>
002360*<prop name="PropertyName">
002370*<string value="Location" />
002380*</prop>
002390*</object>
002400*</prop>
002410*<prop name="Right">
002420*<object type="System.CodeDom.CodeObjectCreateExpression">
002430*<prop name="CreateType">
002440*<object type="System.CodeDom.CodeTypeReference">
002450*<prop name="BaseType">
002460*<string value="System.Drawing.Point" />
002470*</prop>
002480*</object>
002490*</prop>
002500*<prop name="Parameters" method="add">
002510*<object type="System.CodeDom.CodePrimitiveExpression">
002520*<prop name="Value">
002530*<int32 value="16" />
002540*</prop>
002550*</object>
002560*<object type="System.CodeDom.CodePrimitiveExpression">
002570*<prop name="Value">
002580*<int32 value="16" />
002590*</prop>
002600*</object>
002610*</prop>
002620*</object>
002630*</prop>
002640*</object>
002650*<object type="System.CodeDom.CodeAssignStatement">
002660*<prop name="Left">
002670*<object type="System.CodeDom.CodePropertyReferenceExpression">
002680*<prop name="TargetObject">
002690*<object type="System.CodeDom.CodeFieldReferenceExpression">
002700*<prop name="TargetObject">
002710*<object type="System.CodeDom.CodeThisReferenceExpression">
002720*</object>
002730*</prop>
002740*<prop name="FieldName">
002750*<string value="button1" />
002760*</prop>
002770*</object>
002780*</prop>
002790*<prop name="PropertyName">
002800*<string value="Name" />
002810*</prop>
002820*</object>
002830*</prop>
002840*<prop name="Right">
002850*<object type="System.CodeDom.CodePrimitiveExpression">
002860*<prop name="Value">
002870*<string value="button1" />
002880*</prop>
002890*</object>
002900*</prop>
002910*</object>
002920*<object type="System.CodeDom.CodeAssignStatement">
002930*<prop name="Left">
002940*<object type="System.CodeDom.CodePropertyReferenceExpression">
002950*<prop name="TargetObject">
002960*<object type="System.CodeDom.CodeFieldReferenceExpression">
002970*<prop name="TargetObject">
002980*<object type="System.CodeDom.CodeThisReferenceExpression">
002990*</object>
003000*</prop>
003010*<prop name="FieldName">
003020*<string value="button1" />
003030*</prop>
003040*</object>
003050*</prop>
003060*<prop name="PropertyName">
003070*<string value="TabIndex" />
003080*</prop>
003090*</object>
003100*</prop>
003110*<prop name="Right">
003120*<object type="System.CodeDom.CodePrimitiveExpression">
003130*<prop name="Value">
003140*<int32 value="0" />
003150*</prop>
003160*</object>
003170*</prop>
003180*</object>
003190*<object type="System.CodeDom.CodeAssignStatement">
003200*<prop name="Left">
003210*<object type="System.CodeDom.CodePropertyReferenceExpression">
003220*<prop name="TargetObject">
003230*<object type="System.CodeDom.CodeFieldReferenceExpression">
003240*<prop name="TargetObject">
003250*<object type="System.CodeDom.CodeThisReferenceExpression">
003260*</object>
003270*</prop>
003280*<prop name="FieldName">
003290*<string value="button1" />
003300*</prop>
003310*</object>
003320*</prop>
003330*<prop name="PropertyName">
003340*<string value="Text" />
003350*</prop>
003360*</object>
003370*</prop>
003380*<prop name="Right">
003390*<object type="System.CodeDom.CodePrimitiveExpression">
003400*<prop name="Value">
003410*<string value="button1" />
003420*</prop>
003430*</object>
003440*</prop>
003450*</object>
003460*<object type="System.CodeDom.CodeAttachEventStatement">
003470*<prop name="Event">
003480*<object type="System.CodeDom.CodeEventReferenceExpression">
003490*<prop name="TargetObject">
003500*<object type="System.CodeDom.CodeFieldReferenceExpression">
003510*<prop name="TargetObject">
003520*<object type="System.CodeDom.CodeThisReferenceExpression">
003530*</object>
003540*</prop>
003550*<prop name="FieldName">
003560*<string value="button1" />
003570*</prop>
003580*</object>
003590*</prop>
003600*<prop name="EventName">
003610*<string value="Click" />
003620*</prop>
003630*</object>
003640*</prop>
003650*<prop name="Listener">
003660*<object type="System.CodeDom.CodeDelegateCreateExpression">
003670*<prop name="DelegateType">
003680*<object type="System.CodeDom.CodeTypeReference">
003690*<prop name="BaseType">
003700*<string value="System.EventHandler" />
003710*</prop>
003720*</object>
003730*</prop>
003740*<prop name="TargetObject">
003750*<object type="System.CodeDom.CodeThisReferenceExpression">
003760*</object>
003770*</prop>
003780*<prop name="MethodName">
003790*<string value="button1_Click" />
003800*</prop>
003810*</object>
003820*</prop>
003830*</object>
003840*<object type="System.CodeDom.CodeCommentStatement">
003850*<prop name="Comment">
003860*<object type="System.CodeDom.CodeComment">
003870*<prop name="Text">
003880*<string value="" />
003890*</prop>
003900*</object>
003910*</prop>
003920*</object>
003930*<object type="System.CodeDom.CodeCommentStatement">
003940*<prop name="Comment">
003950*<object type="System.CodeDom.CodeComment">
003960*<prop name="Text">
003970*<string value="textBox1" />
003980*</prop>
003990*</object>
004000*</prop>
004010*</object>
004020*<object type="System.CodeDom.CodeCommentStatement">
004030*<prop name="Comment">
004040*<object type="System.CodeDom.CodeComment">
004050*<prop name="Text">
004060*<string value="" />
004070*</prop>
004080*</object>
004090*</prop>
004100*</object>
004110*<object type="System.CodeDom.CodeAssignStatement">
004120*<prop name="Left">
004130*<object type="System.CodeDom.CodePropertyReferenceExpression">
004140*<prop name="TargetObject">
004150*<object type="System.CodeDom.CodeFieldReferenceExpression">
004160*<prop name="TargetObject">
004170*<object type="System.CodeDom.CodeThisReferenceExpression">
004180*</object>
004190*</prop>
004200*<prop name="FieldName">
004210*<string value="textBox1" />
004220*</prop>
004230*</object>
004240*</prop>
004250*<prop name="PropertyName">
004260*<string value="Location" />
004270*</prop>
004280*</object>
004290*</prop>
004300*<prop name="Right">
004310*<object type="System.CodeDom.CodeObjectCreateExpression">
004320*<prop name="CreateType">
004330*<object type="System.CodeDom.CodeTypeReference">
004340*<prop name="BaseType">
004350*<string value="System.Drawing.Point" />
004360*</prop>
004370*</object>
004380*</prop>
004390*<prop name="Parameters" method="add">
004400*<object type="System.CodeDom.CodePrimitiveExpression">
004410*<prop name="Value">
004420*<int32 value="16" />
004430*</prop>
004440*</object>
004450*<object type="System.CodeDom.CodePrimitiveExpression">
004460*<prop name="Value">
004470*<int32 value="56" />
004480*</prop>
004490*</object>
004500*</prop>
004510*</object>
004520*</prop>
004530*</object>
004540*<object type="System.CodeDom.CodeAssignStatement">
004550*<prop name="Left">
004560*<object type="System.CodeDom.CodePropertyReferenceExpression">
004570*<prop name="TargetObject">
004580*<object type="System.CodeDom.CodeFieldReferenceExpression">
004590*<prop name="TargetObject">
004600*<object type="System.CodeDom.CodeThisReferenceExpression">
004610*</object>
004620*</prop>
004630*<prop name="FieldName">
004640*<string value="textBox1" />
004650*</prop>
004660*</object>
004670*</prop>
004680*<prop name="PropertyName">
004690*<string value="Name" />
004700*</prop>
004710*</object>
004720*</prop>
004730*<prop name="Right">
004740*<object type="System.CodeDom.CodePrimitiveExpression">
004750*<prop name="Value">
004760*<string value="textBox1" />
004770*</prop>
004780*</object>
004790*</prop>
004800*</object>
004810*<object type="System.CodeDom.CodeAssignStatement">
004820*<prop name="Left">
004830*<object type="System.CodeDom.CodePropertyReferenceExpression">
004840*<prop name="TargetObject">
004850*<object type="System.CodeDom.CodeFieldReferenceExpression">
004860*<prop name="TargetObject">
004870*<object type="System.CodeDom.CodeThisReferenceExpression">
004880*</object>
004890*</prop>
004900*<prop name="FieldName">
004910*<string value="textBox1" />
004920*</prop>
004930*</object>
004940*</prop>
004950*<prop name="PropertyName">
004960*<string value="TabIndex" />
004970*</prop>
004980*</object>
004990*</prop>
005000*<prop name="Right">
005010*<object type="System.CodeDom.CodePrimitiveExpression">
005020*<prop name="Value">
005030*<int32 value="1" />
005040*</prop>
005050*</object>
005060*</prop>
005070*</object>
005080*<object type="System.CodeDom.CodeAssignStatement">
005090*<prop name="Left">
005100*<object type="System.CodeDom.CodePropertyReferenceExpression">
005110*<prop name="TargetObject">
005120*<object type="System.CodeDom.CodeFieldReferenceExpression">
005130*<prop name="TargetObject">
005140*<object type="System.CodeDom.CodeThisReferenceExpression">
005150*</object>
005160*</prop>
005170*<prop name="FieldName">
005180*<string value="textBox1" />
005190*</prop>
005200*</object>
005210*</prop>
005220*<prop name="PropertyName">
005230*<string value="Text" />
005240*</prop>
005250*</object>
005260*</prop>
005270*<prop name="Right">
005280*<object type="System.CodeDom.CodePrimitiveExpression">
005290*<prop name="Value">
005300*<string value="textBox1" />
005310*</prop>
005320*</object>
005330*</prop>
005340*</object>
005350*<object type="System.CodeDom.CodeCommentStatement">
005360*<prop name="Comment">
005370*<object type="System.CodeDom.CodeComment">
005380*<prop name="Text">
005390*<string value="" />
005400*</prop>
005410*</object>
005420*</prop>
005430*</object>
005440*<object type="System.CodeDom.CodeCommentStatement">
005450*<prop name="Comment">
005460*<object type="System.CodeDom.CodeComment">
005470*<prop name="Text">
005480*<string value="Form1" />
005490*</prop>
005500*</object>
005510*</prop>
005520*</object>
005530*<object type="System.CodeDom.CodeCommentStatement">
005540*<prop name="Comment">
005550*<object type="System.CodeDom.CodeComment">
005560*<prop name="Text">
005570*<string value="" />
005580*</prop>
005590*</object>
005600*</prop>
005610*</object>
005620*<object type="System.CodeDom.CodeAssignStatement">
005630*<prop name="Left">
005640*<object type="System.CodeDom.CodePropertyReferenceExpression">
005650*<prop name="TargetObject">
005660*<object type="System.CodeDom.CodeThisReferenceExpression">
005670*</object>
005680*</prop>
005690*<prop name="PropertyName">
005700*<string value="AutoScaleBaseSize" />
005710*</prop>
005720*</object>
005730*</prop>
005740*<prop name="Right">
005750*<object type="System.CodeDom.CodeObjectCreateExpression">
005760*<prop name="CreateType">
005770*<object type="System.CodeDom.CodeTypeReference">
005780*<prop name="BaseType">
005790*<string value="System.Drawing.Size" />
005800*</prop>
005810*</object>
005820*</prop>
005830*<prop name="Parameters" method="add">
005840*<object type="System.CodeDom.CodePrimitiveExpression">
005850*<prop name="Value">
005860*<int32 value="6" />
005870*</prop>
005880*</object>
005890*<object type="System.CodeDom.CodePrimitiveExpression">
005900*<prop name="Value">
005910*<int32 value="15" />
005920*</prop>
005930*</object>
005940*</prop>
005950*</object>
005960*</prop>
005970*</object>
005980*<object type="System.CodeDom.CodeAssignStatement">
005990*<prop name="Left">
006000*<object type="System.CodeDom.CodePropertyReferenceExpression">
006010*<prop name="TargetObject">
006020*<object type="System.CodeDom.CodeThisReferenceExpression">
006030*</object>
006040*</prop>
006050*<prop name="PropertyName">
006060*<string value="ClientSize" />
006070*</prop>
006080*</object>
006090*</prop>
006100*<prop name="Right">
006110*<object type="System.CodeDom.CodeObjectCreateExpression">
006120*<prop name="CreateType">
006130*<object type="System.CodeDom.CodeTypeReference">
006140*<prop name="BaseType">
006150*<string value="System.Drawing.Size" />
006160*</prop>
006170*</object>
006180*</prop>
006190*<prop name="Parameters" method="add">
006200*<object type="System.CodeDom.CodePrimitiveExpression">
006210*<prop name="Value">
006220*<int32 value="292" />
006230*</prop>
006240*</object>
006250*<object type="System.CodeDom.CodePrimitiveExpression">
006260*<prop name="Value">
006270*<int32 value="270" />
006280*</prop>
006290*</object>
006300*</prop>
006310*</object>
006320*</prop>
006330*</object>
006340*<object type="System.CodeDom.CodeExpressionStatement">
006350*<prop name="Expression">
006360*<object type="System.CodeDom.CodeMethodInvokeExpression">
006370*<prop name="Method">
006380*<object type="System.CodeDom.CodeMethodReferenceExpression">
006390*<prop name="TargetObject">
006400*<object type="System.CodeDom.CodePropertyReferenceExpression">
006410*<prop name="TargetObject">
006420*<object type="System.CodeDom.CodeThisReferenceExpression">
006430*</object>
006440*</prop>
006450*<prop name="PropertyName">
006460*<string value="Controls" />
006470*</prop>
006480*</object>
006490*</prop>
006500*<prop name="MethodName">
006510*<string value="AddRange" />
006520*</prop>
006530*</object>
006540*</prop>
006550*<prop name="Parameters" method="add">
006560*<object type="System.CodeDom.CodeArrayCreateExpression">
006570*<prop name="CreateType">
006580*<object type="System.CodeDom.CodeTypeReference">
006590*<prop name="BaseType">
006600*<string value="System.Windows.Forms.Control" />
006610*</prop>
006620*</object>
006630*</prop>
006640*<prop name="Initializers" method="add">
006650*<object type="System.CodeDom.CodeFieldReferenceExpression">
006660*<prop name="TargetObject">
006670*<object type="System.CodeDom.CodeThisReferenceExpression">
006680*</object>
006690*</prop>
006700*<prop name="FieldName">
006710*<string value="textBox1" />
006720*</prop>
006730*</object>
006740*<object type="System.CodeDom.CodeFieldReferenceExpression">
006750*<prop name="TargetObject">
006760*<object type="System.CodeDom.CodeThisReferenceExpression">
006770*</object>
006780*</prop>
006790*<prop name="FieldName">
006800*<string value="button1" />
006810*</prop>
006820*</object>
006830*</prop>
006840*<prop name="Size">
006850*<int32 value="0" />
006860*</prop>
006870*<prop name="SizeExpression">
006880*<null />
006890*</prop>
006900*</object>
006910*</prop>
006920*</object>
006930*</prop>
006940*</object>
006950*<object type="System.CodeDom.CodeAssignStatement">
006960*<prop name="Left">
006970*<object type="System.CodeDom.CodePropertyReferenceExpression">
006980*<prop name="TargetObject">
006990*<object type="System.CodeDom.CodeThisReferenceExpression">
007000*</object>
007010*</prop>
007020*<prop name="PropertyName">
007030*<string value="Name" />
007040*</prop>
007050*</object>
007060*</prop>
007070*<prop name="Right">
007080*<object type="System.CodeDom.CodePrimitiveExpression">
007090*<prop name="Value">
007100*<string value="Form1" />
007110*</prop>
007120*</object>
007130*</prop>
007140*</object>
007150*<object type="System.CodeDom.CodeAssignStatement">
007160*<prop name="Left">
007170*<object type="System.CodeDom.CodePropertyReferenceExpression">
007180*<prop name="TargetObject">
007190*<object type="System.CodeDom.CodeThisReferenceExpression">
007200*</object>
007210*</prop>
007220*<prop name="PropertyName">
007230*<string value="Text" />
007240*</prop>
007250*</object>
007260*</prop>
007270*<prop name="Right">
007280*<object type="System.CodeDom.CodePrimitiveExpression">
007290*<prop name="Value">
007300*<string value="Form1" />
007310*</prop>
007320*</object>
007330*</prop>
007340*</object>
007350*<object type="System.CodeDom.CodeAttachEventStatement">
007360*<prop name="Event">
007370*<object type="System.CodeDom.CodeEventReferenceExpression">
007380*<prop name="TargetObject">
007390*<object type="System.CodeDom.CodeThisReferenceExpression">
007400*</object>
007410*</prop>
007420*<prop name="EventName">
007430*<string value="Load" />
007440*</prop>
007450*</object>
007460*</prop>
007470*<prop name="Listener">
007480*<object type="System.CodeDom.CodeDelegateCreateExpression">
007490*<prop name="DelegateType">
007500*<object type="System.CodeDom.CodeTypeReference">
007510*<prop name="BaseType">
007520*<string value="System.EventHandler" />
007530*</prop>
007540*</object>
007550*</prop>
007560*<prop name="TargetObject">
007570*<object type="System.CodeDom.CodeThisReferenceExpression">
007580*</object>
007590*</prop>
007600*<prop name="MethodName">
007610*<string value="Form1_Load" />
007620*</prop>
007630*</object>
007640*</prop>
007650*</object>
007660*<object type="System.CodeDom.CodeExpressionStatement">
007670*<prop name="Expression">
007680*<object type="System.CodeDom.CodeMethodInvokeExpression">
007690*<prop name="Method">
007700*<object type="System.CodeDom.CodeMethodReferenceExpression">
007710*<prop name="TargetObject">
007720*<object type="System.CodeDom.CodeThisReferenceExpression">
007730*</object>
007740*</prop>
007750*<prop name="MethodName">
007760*<string value="ResumeLayout" />
007770*</prop>
007780*</object>
007790*</prop>
007800*<prop name="Parameters" method="add">
007810*<object type="System.CodeDom.CodePrimitiveExpression">
007820*<prop name="Value">
007830*<bool value="False" />
007840*</prop>
007850*</object>
007860*</prop>
007870*</object>
007880*</prop>
007890*</object>
007900*</embedded-codedom>
007910*>>IMP END-EMBEDDED-CODEDOM
007920     INVOKE CLASS-BUTTON "NEW" RETURNING TEMP1
007930     SET PROP-BUTTON1 OF SELF TO TEMP1
007940     INVOKE CLASS-TEXTBOX "NEW" RETURNING TEMP2
007950     SET PROP-TEXTBOX1 OF SELF TO TEMP2
007960     INVOKE SELF "SuspendLayout"
007970*
007980*button1
007990*
008000     MOVE 16 TO TEMP3
008010     MOVE 16 TO TEMP4
008020     INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP3 BY VALUE TEMP4 RETURNING TEMP5
008030     SET TEMP6 TO PROP-BUTTON1 OF SELF
008040     SET PROP-LOCATION OF TEMP6 TO TEMP5
008050     SET TEMP7 TO N"button1"
008060     SET TEMP8 TO PROP-BUTTON1 OF SELF
008070     SET PROP-NAME OF TEMP8 TO TEMP7
008080     MOVE 0 TO TEMP9
008090     SET TEMP10 TO PROP-BUTTON1 OF SELF
008100     MOVE TEMP9 TO PROP-TABINDEX OF TEMP10
008110     SET TEMP11 TO N"button1"
008120     SET TEMP12 TO PROP-BUTTON1 OF SELF
008130     SET PROP-TEXT OF TEMP12 TO TEMP11
008140     SET TEMP13 TO PROP-BUTTON1 OF SELF
008150     INVOKE DELEGATE-EVENTHANDLER "NEW" USING BY VALUE SELF BY VALUE N"button1_Click" RETURNING TEMP14
008160     INVOKE TEMP13 "add_Click" USING BY VALUE TEMP14
008170*
008180*textBox1
008190*
008200     MOVE 16 TO TEMP15
008210     MOVE 56 TO TEMP16
008220     INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP15 BY VALUE TEMP16 RETURNING TEMP17
008230     SET TEMP18 TO PROP-TEXTBOX1 OF SELF
008240     SET PROP-LOCATION OF TEMP18 TO TEMP17
008250     SET TEMP19 TO N"textBox1"
008260     SET TEMP20 TO PROP-TEXTBOX1 OF SELF
008270     SET PROP-NAME OF TEMP20 TO TEMP19
008280     MOVE 1 TO TEMP21
008290     SET TEMP22 TO PROP-TEXTBOX1 OF SELF
008300     MOVE TEMP21 TO PROP-TABINDEX OF TEMP22
008310     SET TEMP23 TO N"textBox1"
008320     SET TEMP24 TO PROP-TEXTBOX1 OF SELF
008330     SET PROP-TEXT OF TEMP24 TO TEMP23
008340*
008350*Form1
008360*
008370     MOVE 6 TO TEMP25
008380     MOVE 15 TO TEMP26
008390     INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP25 BY VALUE TEMP26 RETURNING TEMP27
008400     SET PROP-AUTOSCALEBASESIZE OF SELF TO TEMP27
008410     MOVE 292 TO TEMP28
008420     MOVE 270 TO TEMP29
008430     INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP28 BY VALUE TEMP29 RETURNING TEMP30
008440     SET PROP-CLIENTSIZE OF SELF TO TEMP30
008450     MOVE 2 TO TEMP34
008460     INVOKE ARRAY-CONTROL "NEW" USING BY VALUE TEMP34 RETURNING TEMP35
008470     SET TEMP32 TO PROP-TEXTBOX1 OF SELF
008480     INVOKE TEMP35 "Set" USING BY VALUE 0 BY VALUE TEMP32
008490     SET TEMP33 TO PROP-BUTTON1 OF SELF
008500     INVOKE TEMP35 "Set" USING BY VALUE 1 BY VALUE TEMP33
008510     SET TEMP31 TO PROP-CONTROLS OF SELF
008520     INVOKE TEMP31 "AddRange" USING BY VALUE TEMP35
008530     SET TEMP36 TO N"Form1"
008540     SET PROP-NAME OF SELF TO TEMP36
008550     SET TEMP37 TO N"Form1"
008560     SET PROP-TEXT OF SELF TO TEMP37
008570     INVOKE DELEGATE-EVENTHANDLER "NEW" USING BY VALUE SELF BY VALUE N"Form1_Load" RETURNING TEMP38
008580     INVOKE SELF "add_Load" USING BY VALUE TEMP38
008590     SET TEMP39 TO B"0"
008600     INVOKE SELF "ResumeLayout" USING BY VALUE TEMP39
008610 END METHOD INITIALIZECOMPONENT.
008620 
008630 METHOD-ID. button1_Click PRIVATE.
008640 DATA DIVISION.
008650 LINKAGE SECTION.
008660 01 sender OBJECT REFERENCE CLASS-OBJECT.
008670 01 e OBJECT REFERENCE CLASS-EVENTARGS.
008680 PROCEDURE DIVISION USING BY VALUE sender e.
008690     SET PROP-TEXT OF textBox1 TO "Hello, World".
008700 END METHOD button1_Click.
008710 
008720 METHOD-ID. Form1_Load PRIVATE.
008730 DATA DIVISION.
008740 LINKAGE SECTION.
008750 01 sender OBJECT REFERENCE CLASS-OBJECT.
008760 01 e OBJECT REFERENCE CLASS-EVENTARGS.
008770 PROCEDURE DIVISION USING BY VALUE sender e.
008780 END METHOD Form1_Load.
008790
008800 END OBJECT.
008810 END CLASS Form1.