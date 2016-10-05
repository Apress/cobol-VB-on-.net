000010 IDENTIFICATION DIVISION.
000020 CLASS-ID. Form1 AS "MyMSMQExampleCOBOL.Form1"
000030     INHERITS CLASS-FORM.
000040 ENVIRONMENT DIVISION.
000050 CONFIGURATION SECTION.
000060 SPECIAL-NAMES.
000070     CUSTOM-ATTRIBUTE STA-THREAD CLASS CLASS-STA-THREAD
000080     .
000090 REPOSITORY.
000100     CLASS CLASS-BOOLEAN AS "System.Boolean"
000110     CLASS CLASS-NAMEVALUECOLLECTION AS "System.Collections.Specialized.NameValueCollection"
000120     CLASS CLASS-CONTAINER AS "System.ComponentModel.Container"
000130     INTERFACE INTERFACE-ICONTAINER AS "System.ComponentModel.IContainer"
000140     INTERFACE INTERFACE-ISUPPORTINITIALIZE AS "System.ComponentModel.ISupportInitialize"
000150     CLASS CLASS-CONFIGURATIONSETTINGS AS "System.Configuration.ConfigurationSettings"
000160     CLASS DataColumn AS "System.Data.DataColumn"
000170     CLASS DataColumnArray AS "System.Data.DataColumn[]"
000180     CLASS DataRow AS "System.Data.DataRow"
000190     CLASS DataRowCollection AS "System.Data.DataRowCollection"
000200     CLASS DataSet AS "System.Data.DataSet"
000210     CLASS DataTable AS "System.Data.DataTable"
000220     CLASS SqlCommand AS "System.Data.SqlClient.SqlCommand"
000230     CLASS SqlConnection AS "System.Data.SqlClient.SqlConnection"
000240     CLASS SqlDataAdapter AS "System.Data.SqlClient.SqlDataAdapter"
000250     CLASS CLASS-POINT AS "System.Drawing.Point"
000260     CLASS CLASS-SIZE AS "System.Drawing.Size"
000270     CLASS CLASS-SYSTEMCOLORS AS "System.Drawing.SystemColors"
000280     CLASS CLASS-EVENTARGS AS "System.EventArgs"
000290     DELEGATE DELEGATE-EVENTHANDLER AS "System.EventHandler"
000300     CLASS CLASS-GUID AS "System.Guid"
000310     CLASS CLASS-MESSAGEQUEUE AS "System.Messaging.MessageQueue"
000320     CLASS CLASS-OBJECT AS "System.Object"
000330     CLASS CLASS-STA-THREAD AS "System.STAThreadAttribute"
000340     CLASS CLASS-STRING AS "System.String"
000350     CLASS CLASS-STRINGBUILDER AS "System.Text.StringBuilder"
000360     CLASS SystemType AS "System.Type"
000370     CLASS CLASS-APPLICATION AS "System.Windows.Forms.Application"
000380     CLASS CLASS-BUTTON AS "System.Windows.Forms.Button"
000390     CLASS ARRAY-CONTROL AS "System.Windows.Forms.Control[]"
000400     CLASS CLASS-CONTROLCOLLECTION AS "System.Windows.Forms.Control+ControlCollection"
000410     CLASS CLASS-DATAGRID AS "System.Windows.Forms.DataGrid"
000420     CLASS CLASS-FORM AS "System.Windows.Forms.Form"
000430     CLASS CLASS-LABEL AS "System.Windows.Forms.Label"
000440     CLASS CLASS-PROGRESSBAR AS "System.Windows.Forms.ProgressBar"
000450     CLASS CLASS-STATUSBAR AS "System.Windows.Forms.StatusBar"
000460     CLASS CLASS-TOOLBAR AS "System.Windows.Forms.ToolBar"
000470     CLASS CLASS-TOOLTIP AS "System.Windows.Forms.ToolTip"
000480     PROPERTY PROP-ALTERNATINGBACKCOLOR AS "AlternatingBackColor"
000490     PROPERTY PROP-APPSETTINGS AS "AppSettings"
000500     PROPERTY PROP-AUTOSCALEBASESIZE AS "AutoScaleBaseSize"
000510     PROPERTY PROP-BUTTON1 AS "button1"
000520     PROPERTY PROP-CAPTIONTEXT AS "CaptionText"
000530     PROPERTY PROP-CLIENTSIZE AS "ClientSize"
000540     PROPERTY PROP-ColumnName AS "ColumnName"
000550     PROPERTY PROP-Columns AS "Columns"
000560     PROPERTY PROP-CommandText AS "CommandText"
000570     PROPERTY PROP-COMPONENTS AS "components"
000580     PROPERTY PROP-Connection AS "Connection"
000590     PROPERTY PROP-ConnectionString AS "ConnectionString"
000600     PROPERTY PROP-CONTROLS AS "Controls"
000610     PROPERTY PROP-CONTROLTEXT AS "ControlText"
000620     PROPERTY PROP-DATAGRID1 AS "dataGrid1"
000630     PROPERTY PROP-DATAMEMBER AS "DataMember"
000640     PROPERTY PROP-DataSource AS "DataSource"
000650     PROPERTY PROP-DataType AS "DataType"
000660     PROPERTY PROP-DROPDOWNARROWS AS "DropDownArrows"
000670     PROPERTY PROP-EMPTY AS "Empty"
000680     PROPERTY PROP-HEADERFORECOLOR AS "HeaderForeColor"
000690     PROPERTY PROP-LABEL1 AS "label1"
000700     PROPERTY PROP-LABEL2 AS "label2"
000710     PROPERTY PROP-LOCATION AS "Location"
000720     PROPERTY PROP-MESSAGEQUEUE1 AS "messageQueue1"
000730     PROPERTY PROP-NAME AS "Name"
000740     PROPERTY PROP-PATH AS "Path"
000750     PROPERTY PROP-PrimaryKey AS "PrimaryKey"
000760     PROPERTY PROP-PROGRESSBAR1 AS "progressBar1"
000770     PROPERTY PROP-SelectCommand AS "SelectCommand"
000780     PROPERTY PROP-SHOWTOOLTIPS AS "ShowToolTips"
000790     PROPERTY PROP-SIZE AS "Size"
000800     PROPERTY PROP-STATUSBAR1 AS "statusBar1"
000810     PROPERTY PROP-SYNCHRONIZINGOBJECT AS "SynchronizingObject"
000820     PROPERTY PROP-TABINDEX AS "TabIndex"
000830     PROPERTY PROP-Tables AS "Tables"
000840     PROPERTY PROP-TEXT AS "Text"
000850     PROPERTY PROP-TOOLBAR1 AS "toolBar1"
000860     PROPERTY PROP-TOOLTIP1 AS "toolTip1"
000870     PROPERTY PROP-Unique AS "Unique"
000880     PROPERTY PROP-VISIBLE AS "Visible"
000890     PROPERTY PROP-WINDOW AS "Window"
000900     .
000910
000920 STATIC.
000930 DATA DIVISION.
000940 WORKING-STORAGE SECTION.
000950 PROCEDURE DIVISION.
000960
000970 METHOD-ID. MAIN AS "Main" CUSTOM-ATTRIBUTE IS STA-THREAD.
000980 DATA DIVISION.
000990 WORKING-STORAGE SECTION.
001000 01 TEMP-1 OBJECT REFERENCE Form1.
001010 PROCEDURE DIVISION.
001020     INVOKE Form1 "NEW" RETURNING TEMP-1.
001030     INVOKE CLASS-APPLICATION "Run" USING BY VALUE TEMP-1.
001040 END METHOD MAIN.
001050
001060 END STATIC.
001070
001080 OBJECT
001090     .
001100 DATA DIVISION.
001110 WORKING-STORAGE SECTION.
001120 01 myGUID OBJECT REFERENCE CLASS-GUID.
001130 01 mySqlConnection OBJECT REFERENCE SqlConnection.
001140 01 mySqlDataAdapter OBJECT REFERENCE SqlDataAdapter.
001150 01 mySqlCommand OBJECT REFERENCE SqlCommand.
001160 01 myDataSet OBJECT REFERENCE DataSet.
001170 01 myDataTable OBJECT REFERENCE DataTable.
001180 01 myDataRow OBJECT REFERENCE DataRow.
001190 01 myDataColumn OBJECT REFERENCE DataColumn.
001200 01 myPrimaryKeyColumn OBJECT REFERENCE DataColumn.
001210 01 myPrimaryKeyColumns OBJECT REFERENCE DataColumnArray.
001220 01 myDataRowCollection OBJECT REFERENCE DataRowCollection.
001230 01 messageQueue1 OBJECT REFERENCE CLASS-MESSAGEQUEUE.
001240 01 label1 OBJECT REFERENCE CLASS-LABEL.
001250 01 label2 OBJECT REFERENCE CLASS-LABEL.
001260 01 myCLASS-STRING OBJECT REFERENCE CLASS-STRING.
001270 01 myDisplayString PIC X(30).
001280 01 myInt PIC S9(9) COMP-5.
001290 01 myOtherInt PIC S9(9) COMP-5.
001300 01 NOT-END-OF-READ PIC 1 USAGE BIT.
001310 01 statusBar1 OBJECT REFERENCE CLASS-STATUSBAR.
001320 01 progressBar1 OBJECT REFERENCE CLASS-PROGRESSBAR.
001330 01 dataGrid1 OBJECT REFERENCE CLASS-DATAGRID.
001340 01 button1 OBJECT REFERENCE CLASS-BUTTON.
001350 01 toolTip1 OBJECT REFERENCE CLASS-TOOLTIP.
001360 01 components OBJECT REFERENCE INTERFACE-ICONTAINER.
001370 PROCEDURE DIVISION.
001380
001390 METHOD-ID. NEW.
001400 PROCEDURE DIVISION.
001410     INVOKE SELF "InitializeComponent".
001420 END METHOD NEW.
001430
001440 METHOD-ID. DISPOSE AS "Dispose" OVERRIDE PROTECTED.
001450 DATA DIVISION.
001460 WORKING-STORAGE SECTION.
001470 01 TEMP-1 PIC 1.
001480 LINKAGE SECTION.
001490 01 disposing OBJECT REFERENCE CLASS-BOOLEAN.
001500 PROCEDURE DIVISION USING BY VALUE disposing.
001510     SET TEMP-1 TO disposing.
001520     IF TEMP-1 = B"1" THEN
001530       IF components NOT = NULL THEN
001540         INVOKE components "Dispose"
001550       END-IF
001560     END-IF.
001570     INVOKE SUPER "Dispose" USING BY VALUE disposing.
001580 END METHOD DISPOSE.
001590
001600* Required method for Designer support - do not modify
001610* the contents of this method with the code editor.
001620 METHOD-ID. INITIALIZECOMPONENT AS "InitializeComponent" PRIVATE.
001630 DATA DIVISION.
001640 WORKING-STORAGE SECTION.
001650 01 TEMP1 OBJECT REFERENCE CLASS-CONTAINER.
001660 01 TEMP2 OBJECT REFERENCE CLASS-STATUSBAR.
001670 01 TEMP3 OBJECT REFERENCE CLASS-PROGRESSBAR.
001680 01 TEMP4 OBJECT REFERENCE CLASS-DATAGRID.
001690 01 TEMP5 OBJECT REFERENCE CLASS-BUTTON.
001700 01 TEMP6 OBJECT REFERENCE INTERFACE-ICONTAINER.
001710 01 TEMP7 OBJECT REFERENCE CLASS-TOOLTIP.
001720 01 TEMP8 OBJECT REFERENCE CLASS-MESSAGEQUEUE.
001730 01 TEMP9 OBJECT REFERENCE CLASS-LABEL.
001740 01 TEMP10 OBJECT REFERENCE CLASS-LABEL.
001750 01 TEMP11 OBJECT REFERENCE CLASS-DATAGRID.
001760 01 TEMP12 OBJECT REFERENCE INTERFACE-ISUPPORTINITIALIZE.
001770 01 TEMP13 PIC S9(9) COMP-5.
001780 01 TEMP14 PIC S9(9) COMP-5.
001790 01 TEMP15 OBJECT REFERENCE CLASS-POINT.
001800 01 TEMP16 OBJECT REFERENCE CLASS-STATUSBAR.
001810 01 TEMP17 OBJECT REFERENCE CLASS-STRING.
001820 01 TEMP18 OBJECT REFERENCE CLASS-STATUSBAR.
001830 01 TEMP19 PIC S9(9) COMP-5.
001840 01 TEMP20 PIC S9(9) COMP-5.
001850 01 TEMP21 OBJECT REFERENCE CLASS-SIZE.
001860 01 TEMP22 OBJECT REFERENCE CLASS-STATUSBAR.
001870 01 TEMP23 PIC S9(9) COMP-5.
001880 01 TEMP24 OBJECT REFERENCE CLASS-STATUSBAR.
001890 01 TEMP25 OBJECT REFERENCE CLASS-STRING.
001900 01 TEMP26 OBJECT REFERENCE CLASS-STATUSBAR.
001910 01 TEMP27 PIC S9(9) COMP-5.
001920 01 TEMP28 PIC S9(9) COMP-5.
001930 01 TEMP29 OBJECT REFERENCE CLASS-POINT.
001940 01 TEMP30 OBJECT REFERENCE CLASS-PROGRESSBAR.
001950 01 TEMP31 OBJECT REFERENCE CLASS-STRING.
001960 01 TEMP32 OBJECT REFERENCE CLASS-PROGRESSBAR.
001970 01 TEMP33 PIC S9(9) COMP-5.
001980 01 TEMP34 PIC S9(9) COMP-5.
001990 01 TEMP35 OBJECT REFERENCE CLASS-SIZE.
002000 01 TEMP36 OBJECT REFERENCE CLASS-PROGRESSBAR.
002010 01 TEMP37 PIC S9(9) COMP-5.
002020 01 TEMP38 OBJECT REFERENCE CLASS-PROGRESSBAR.
002030 01 TEMP39 OBJECT REFERENCE CLASS-BOOLEAN.
002040 01 TEMP40 OBJECT REFERENCE CLASS-PROGRESSBAR.
002050 01 TEMP41 OBJECT REFERENCE CLASS-STRING.
002060 01 TEMP42 OBJECT REFERENCE CLASS-DATAGRID.
002070 01 TEMP43 OBJECT REFERENCE CLASS-STRING.
002080 01 TEMP44 OBJECT REFERENCE CLASS-DATAGRID.
002090 01 TEMP45 OBJECT REFERENCE CLASS-DATAGRID.
002100 01 TEMP46 PIC S9(9) COMP-5.
002110 01 TEMP47 PIC S9(9) COMP-5.
002120 01 TEMP48 OBJECT REFERENCE CLASS-POINT.
002130 01 TEMP49 OBJECT REFERENCE CLASS-DATAGRID.
002140 01 TEMP50 OBJECT REFERENCE CLASS-STRING.
002150 01 TEMP51 OBJECT REFERENCE CLASS-DATAGRID.
002160 01 TEMP52 PIC S9(9) COMP-5.
002170 01 TEMP53 PIC S9(9) COMP-5.
002180 01 TEMP54 OBJECT REFERENCE CLASS-SIZE.
002190 01 TEMP55 OBJECT REFERENCE CLASS-DATAGRID.
002200 01 TEMP56 PIC S9(9) COMP-5.
002210 01 TEMP57 OBJECT REFERENCE CLASS-DATAGRID.
002220 01 TEMP58 OBJECT REFERENCE CLASS-TOOLTIP.
002230 01 TEMP59 OBJECT REFERENCE CLASS-DATAGRID.
002240 01 TEMP60 OBJECT REFERENCE CLASS-STRING.
002250 01 TEMP61 OBJECT REFERENCE CLASS-BOOLEAN.
002260 01 TEMP62 OBJECT REFERENCE CLASS-DATAGRID.
002270 01 TEMP63 PIC S9(9) COMP-5.
002280 01 TEMP64 PIC S9(9) COMP-5.
002290 01 TEMP65 OBJECT REFERENCE CLASS-POINT.
002300 01 TEMP66 OBJECT REFERENCE CLASS-BUTTON.
002310 01 TEMP67 OBJECT REFERENCE CLASS-STRING.
002320 01 TEMP68 OBJECT REFERENCE CLASS-BUTTON.
002330 01 TEMP69 PIC S9(9) COMP-5.
002340 01 TEMP70 PIC S9(9) COMP-5.
002350 01 TEMP71 OBJECT REFERENCE CLASS-SIZE.
002360 01 TEMP72 OBJECT REFERENCE CLASS-BUTTON.
002370 01 TEMP73 PIC S9(9) COMP-5.
002380 01 TEMP74 OBJECT REFERENCE CLASS-BUTTON.
002390 01 TEMP75 OBJECT REFERENCE CLASS-STRING.
002400 01 TEMP76 OBJECT REFERENCE CLASS-BUTTON.
002410 01 TEMP77 OBJECT REFERENCE CLASS-TOOLTIP.
002420 01 TEMP78 OBJECT REFERENCE CLASS-BUTTON.
002430 01 TEMP79 OBJECT REFERENCE CLASS-STRING.
002440 01 TEMP80 OBJECT REFERENCE CLASS-BUTTON.
002450 01 TEMP81 OBJECT REFERENCE DELEGATE-EVENTHANDLER.
002460 01 TEMP82 OBJECT REFERENCE CLASS-STRING.
002470 01 TEMP83 OBJECT REFERENCE CLASS-MESSAGEQUEUE.
002480 01 TEMP84 OBJECT REFERENCE CLASS-MESSAGEQUEUE.
002490 01 TEMP85 PIC S9(9) COMP-5.
002500 01 TEMP86 PIC S9(9) COMP-5.
002510 01 TEMP87 OBJECT REFERENCE CLASS-POINT.
002520 01 TEMP88 OBJECT REFERENCE CLASS-LABEL.
002530 01 TEMP89 OBJECT REFERENCE CLASS-STRING.
002540 01 TEMP90 OBJECT REFERENCE CLASS-LABEL.
002550 01 TEMP91 PIC S9(9) COMP-5.
002560 01 TEMP92 PIC S9(9) COMP-5.
002570 01 TEMP93 OBJECT REFERENCE CLASS-SIZE.
002580 01 TEMP94 OBJECT REFERENCE CLASS-LABEL.
002590 01 TEMP95 PIC S9(9) COMP-5.
002600 01 TEMP96 OBJECT REFERENCE CLASS-LABEL.
002610 01 TEMP97 OBJECT REFERENCE CLASS-STRING.
002620 01 TEMP98 OBJECT REFERENCE CLASS-LABEL.
002630 01 TEMP99 PIC S9(9) COMP-5.
002640 01 TEMP100 PIC S9(9) COMP-5.
002650 01 TEMP101 OBJECT REFERENCE CLASS-POINT.
002660 01 TEMP102 OBJECT REFERENCE CLASS-LABEL.
002670 01 TEMP103 OBJECT REFERENCE CLASS-STRING.
002680 01 TEMP104 OBJECT REFERENCE CLASS-LABEL.
002690 01 TEMP105 PIC S9(9) COMP-5.
002700 01 TEMP106 PIC S9(9) COMP-5.
002710 01 TEMP107 OBJECT REFERENCE CLASS-SIZE.
002720 01 TEMP108 OBJECT REFERENCE CLASS-LABEL.
002730 01 TEMP109 PIC S9(9) COMP-5.
002740 01 TEMP110 OBJECT REFERENCE CLASS-LABEL.
002750 01 TEMP111 OBJECT REFERENCE CLASS-STRING.
002760 01 TEMP112 OBJECT REFERENCE CLASS-LABEL.
002770 01 TEMP113 PIC S9(9) COMP-5.
002780 01 TEMP114 PIC S9(9) COMP-5.
002790 01 TEMP115 OBJECT REFERENCE CLASS-SIZE.
002800 01 TEMP116 PIC S9(9) COMP-5.
002810 01 TEMP117 PIC S9(9) COMP-5.
002820 01 TEMP118 OBJECT REFERENCE CLASS-SIZE.
002830 01 TEMP119 OBJECT REFERENCE CLASS-CONTROLCOLLECTION.
002840 01 TEMP120 OBJECT REFERENCE CLASS-LABEL.
002850 01 TEMP121 OBJECT REFERENCE CLASS-LABEL.
002860 01 TEMP122 OBJECT REFERENCE CLASS-BUTTON.
002870 01 TEMP123 OBJECT REFERENCE CLASS-DATAGRID.
002880 01 TEMP124 OBJECT REFERENCE CLASS-PROGRESSBAR.
002890 01 TEMP125 OBJECT REFERENCE CLASS-STATUSBAR.
002900 01 TEMP126 PIC S9(9) COMP-5.
002910 01 TEMP127 OBJECT REFERENCE ARRAY-CONTROL.
002920 01 TEMP128 OBJECT REFERENCE CLASS-STRING.
002930 01 TEMP129 OBJECT REFERENCE CLASS-STRING.
002940 01 TEMP130 OBJECT REFERENCE DELEGATE-EVENTHANDLER.
002950 01 TEMP131 OBJECT REFERENCE CLASS-DATAGRID.
002960 01 TEMP132 OBJECT REFERENCE INTERFACE-ISUPPORTINITIALIZE.
002970 01 TEMP133 OBJECT REFERENCE CLASS-BOOLEAN.
002980 PROCEDURE DIVISION.
002990*>>IMP BEGIN-EMBEDDED-CODEDOM
003000*<embedded-codedom>
003010*<object type="System.CodeDom.CodeAssignStatement">
003020*<prop name="Left">
003030*<object type="System.CodeDom.CodeFieldReferenceExpression">
003040*<prop name="TargetObject">
003050*<object type="System.CodeDom.CodeThisReferenceExpression">
003060*</object>
003070*</prop>
003080*<prop name="FieldName">
003090*<string value="components" />
003100*</prop>
003110*</object>
003120*</prop>
003130*<prop name="Right">
003140*<object type="System.CodeDom.CodeObjectCreateExpression">
003150*<prop name="CreateType">
003160*<object type="System.CodeDom.CodeTypeReference">
003170*<prop name="BaseType">
003180*<string value="System.ComponentModel.Container" />
003190*</prop>
003200*</object>
003210*</prop>
003220*</object>
003230*</prop>
003240*</object>
003250*<object type="System.CodeDom.CodeAssignStatement">
003260*<prop name="Left">
003270*<object type="System.CodeDom.CodeFieldReferenceExpression">
003280*<prop name="TargetObject">
003290*<object type="System.CodeDom.CodeThisReferenceExpression">
003300*</object>
003310*</prop>
003320*<prop name="FieldName">
003330*<string value="statusBar1" />
003340*</prop>
003350*</object>
003360*</prop>
003370*<prop name="Right">
003380*<object type="System.CodeDom.CodeObjectCreateExpression">
003390*<prop name="CreateType">
003400*<object type="System.CodeDom.CodeTypeReference">
003410*<prop name="BaseType">
003420*<string value="System.Windows.Forms.StatusBar" />
003430*</prop>
003440*</object>
003450*</prop>
003460*</object>
003470*</prop>
003480*</object>
003490*<object type="System.CodeDom.CodeAssignStatement">
003500*<prop name="Left">
003510*<object type="System.CodeDom.CodeFieldReferenceExpression">
003520*<prop name="TargetObject">
003530*<object type="System.CodeDom.CodeThisReferenceExpression">
003540*</object>
003550*</prop>
003560*<prop name="FieldName">
003570*<string value="progressBar1" />
003580*</prop>
003590*</object>
003600*</prop>
003610*<prop name="Right">
003620*<object type="System.CodeDom.CodeObjectCreateExpression">
003630*<prop name="CreateType">
003640*<object type="System.CodeDom.CodeTypeReference">
003650*<prop name="BaseType">
003660*<string value="System.Windows.Forms.ProgressBar" />
003670*</prop>
003680*</object>
003690*</prop>
003700*</object>
003710*</prop>
003720*</object>
003730*<object type="System.CodeDom.CodeAssignStatement">
003740*<prop name="Left">
003750*<object type="System.CodeDom.CodeFieldReferenceExpression">
003760*<prop name="TargetObject">
003770*<object type="System.CodeDom.CodeThisReferenceExpression">
003780*</object>
003790*</prop>
003800*<prop name="FieldName">
003810*<string value="dataGrid1" />
003820*</prop>
003830*</object>
003840*</prop>
003850*<prop name="Right">
003860*<object type="System.CodeDom.CodeObjectCreateExpression">
003870*<prop name="CreateType">
003880*<object type="System.CodeDom.CodeTypeReference">
003890*<prop name="BaseType">
003900*<string value="System.Windows.Forms.DataGrid" />
003910*</prop>
003920*</object>
003930*</prop>
003940*</object>
003950*</prop>
003960*</object>
003970*<object type="System.CodeDom.CodeAssignStatement">
003980*<prop name="Left">
003990*<object type="System.CodeDom.CodeFieldReferenceExpression">
004000*<prop name="TargetObject">
004010*<object type="System.CodeDom.CodeThisReferenceExpression">
004020*</object>
004030*</prop>
004040*<prop name="FieldName">
004050*<string value="button1" />
004060*</prop>
004070*</object>
004080*</prop>
004090*<prop name="Right">
004100*<object type="System.CodeDom.CodeObjectCreateExpression">
004110*<prop name="CreateType">
004120*<object type="System.CodeDom.CodeTypeReference">
004130*<prop name="BaseType">
004140*<string value="System.Windows.Forms.Button" />
004150*</prop>
004160*</object>
004170*</prop>
004180*</object>
004190*</prop>
004200*</object>
004210*<object type="System.CodeDom.CodeAssignStatement">
004220*<prop name="Left">
004230*<object type="System.CodeDom.CodeFieldReferenceExpression">
004240*<prop name="TargetObject">
004250*<object type="System.CodeDom.CodeThisReferenceExpression">
004260*</object>
004270*</prop>
004280*<prop name="FieldName">
004290*<string value="toolTip1" />
004300*</prop>
004310*</object>
004320*</prop>
004330*<prop name="Right">
004340*<object type="System.CodeDom.CodeObjectCreateExpression">
004350*<prop name="CreateType">
004360*<object type="System.CodeDom.CodeTypeReference">
004370*<prop name="BaseType">
004380*<string value="System.Windows.Forms.ToolTip" />
004390*</prop>
004400*</object>
004410*</prop>
004420*<prop name="Parameters" method="add">
004430*<object type="System.CodeDom.CodeFieldReferenceExpression">
004440*<prop name="TargetObject">
004450*<object type="System.CodeDom.CodeThisReferenceExpression">
004460*</object>
004470*</prop>
004480*<prop name="FieldName">
004490*<string value="components" />
004500*</prop>
004510*</object>
004520*</prop>
004530*</object>
004540*</prop>
004550*</object>
004560*<object type="System.CodeDom.CodeAssignStatement">
004570*<prop name="Left">
004580*<object type="System.CodeDom.CodeFieldReferenceExpression">
004590*<prop name="TargetObject">
004600*<object type="System.CodeDom.CodeThisReferenceExpression">
004610*</object>
004620*</prop>
004630*<prop name="FieldName">
004640*<string value="messageQueue1" />
004650*</prop>
004660*</object>
004670*</prop>
004680*<prop name="Right">
004690*<object type="System.CodeDom.CodeObjectCreateExpression">
004700*<prop name="CreateType">
004710*<object type="System.CodeDom.CodeTypeReference">
004720*<prop name="BaseType">
004730*<string value="System.Messaging.MessageQueue" />
004740*</prop>
004750*</object>
004760*</prop>
004770*</object>
004780*</prop>
004790*</object>
004800*<object type="System.CodeDom.CodeAssignStatement">
004810*<prop name="Left">
004820*<object type="System.CodeDom.CodeFieldReferenceExpression">
004830*<prop name="TargetObject">
004840*<object type="System.CodeDom.CodeThisReferenceExpression">
004850*</object>
004860*</prop>
004870*<prop name="FieldName">
004880*<string value="label1" />
004890*</prop>
004900*</object>
004910*</prop>
004920*<prop name="Right">
004930*<object type="System.CodeDom.CodeObjectCreateExpression">
004940*<prop name="CreateType">
004950*<object type="System.CodeDom.CodeTypeReference">
004960*<prop name="BaseType">
004970*<string value="System.Windows.Forms.Label" />
004980*</prop>
004990*</object>
005000*</prop>
005010*</object>
005020*</prop>
005030*</object>
005040*<object type="System.CodeDom.CodeAssignStatement">
005050*<prop name="Left">
005060*<object type="System.CodeDom.CodeFieldReferenceExpression">
005070*<prop name="TargetObject">
005080*<object type="System.CodeDom.CodeThisReferenceExpression">
005090*</object>
005100*</prop>
005110*<prop name="FieldName">
005120*<string value="label2" />
005130*</prop>
005140*</object>
005150*</prop>
005160*<prop name="Right">
005170*<object type="System.CodeDom.CodeObjectCreateExpression">
005180*<prop name="CreateType">
005190*<object type="System.CodeDom.CodeTypeReference">
005200*<prop name="BaseType">
005210*<string value="System.Windows.Forms.Label" />
005220*</prop>
005230*</object>
005240*</prop>
005250*</object>
005260*</prop>
005270*</object>
005280*<object type="System.CodeDom.CodeExpressionStatement">
005290*<prop name="Expression">
005300*<object type="System.CodeDom.CodeMethodInvokeExpression">
005310*<prop name="Method">
005320*<object type="System.CodeDom.CodeMethodReferenceExpression">
005330*<prop name="TargetObject">
005340*<object type="System.CodeDom.CodeCastExpression">
005350*<prop name="TargetType">
005360*<object type="System.CodeDom.CodeTypeReference">
005370*<prop name="BaseType">
005380*<string value="System.ComponentModel.ISupportInitialize" />
005390*</prop>
005400*</object>
005410*</prop>
005420*<prop name="Expression">
005430*<object type="System.CodeDom.CodeFieldReferenceExpression">
005440*<prop name="TargetObject">
005450*<object type="System.CodeDom.CodeThisReferenceExpression">
005460*</object>
005470*</prop>
005480*<prop name="FieldName">
005490*<string value="dataGrid1" />
005500*</prop>
005510*</object>
005520*</prop>
005530*</object>
005540*</prop>
005550*<prop name="MethodName">
005560*<string value="BeginInit" />
005570*</prop>
005580*</object>
005590*</prop>
005600*</object>
005610*</prop>
005620*</object>
005630*<object type="System.CodeDom.CodeExpressionStatement">
005640*<prop name="Expression">
005650*<object type="System.CodeDom.CodeMethodInvokeExpression">
005660*<prop name="Method">
005670*<object type="System.CodeDom.CodeMethodReferenceExpression">
005680*<prop name="TargetObject">
005690*<object type="System.CodeDom.CodeThisReferenceExpression">
005700*</object>
005710*</prop>
005720*<prop name="MethodName">
005730*<string value="SuspendLayout" />
005740*</prop>
005750*</object>
005760*</prop>
005770*</object>
005780*</prop>
005790*</object>
005800*<object type="System.CodeDom.CodeCommentStatement">
005810*<prop name="Comment">
005820*<object type="System.CodeDom.CodeComment">
005830*<prop name="Text">
005840*<string value="" />
005850*</prop>
005860*</object>
005870*</prop>
005880*</object>
005890*<object type="System.CodeDom.CodeCommentStatement">
005900*<prop name="Comment">
005910*<object type="System.CodeDom.CodeComment">
005920*<prop name="Text">
005930*<string value="statusBar1" />
005940*</prop>
005950*</object>
005960*</prop>
005970*</object>
005980*<object type="System.CodeDom.CodeCommentStatement">
005990*<prop name="Comment">
006000*<object type="System.CodeDom.CodeComment">
006010*<prop name="Text">
006020*<string value="" />
006030*</prop>
006040*</object>
006050*</prop>
006060*</object>
006070*<object type="System.CodeDom.CodeAssignStatement">
006080*<prop name="Left">
006090*<object type="System.CodeDom.CodePropertyReferenceExpression">
006100*<prop name="TargetObject">
006110*<object type="System.CodeDom.CodeFieldReferenceExpression">
006120*<prop name="TargetObject">
006130*<object type="System.CodeDom.CodeThisReferenceExpression">
006140*</object>
006150*</prop>
006160*<prop name="FieldName">
006170*<string value="statusBar1" />
006180*</prop>
006190*</object>
006200*</prop>
006210*<prop name="PropertyName">
006220*<string value="Location" />
006230*</prop>
006240*</object>
006250*</prop>
006260*<prop name="Right">
006270*<object type="System.CodeDom.CodeObjectCreateExpression">
006280*<prop name="CreateType">
006290*<object type="System.CodeDom.CodeTypeReference">
006300*<prop name="BaseType">
006310*<string value="System.Drawing.Point" />
006320*</prop>
006330*</object>
006340*</prop>
006350*<prop name="Parameters" method="add">
006360*<object type="System.CodeDom.CodePrimitiveExpression">
006370*<prop name="Value">
006380*<int32 value="0" />
006390*</prop>
006400*</object>
006410*<object type="System.CodeDom.CodePrimitiveExpression">
006420*<prop name="Value">
006430*<int32 value="245" />
006440*</prop>
006450*</object>
006460*</prop>
006470*</object>
006480*</prop>
006490*</object>
006500*<object type="System.CodeDom.CodeAssignStatement">
006510*<prop name="Left">
006520*<object type="System.CodeDom.CodePropertyReferenceExpression">
006530*<prop name="TargetObject">
006540*<object type="System.CodeDom.CodeFieldReferenceExpression">
006550*<prop name="TargetObject">
006560*<object type="System.CodeDom.CodeThisReferenceExpression">
006570*</object>
006580*</prop>
006590*<prop name="FieldName">
006600*<string value="statusBar1" />
006610*</prop>
006620*</object>
006630*</prop>
006640*<prop name="PropertyName">
006650*<string value="Name" />
006660*</prop>
006670*</object>
006680*</prop>
006690*<prop name="Right">
006700*<object type="System.CodeDom.CodePrimitiveExpression">
006710*<prop name="Value">
006720*<string value="statusBar1" />
006730*</prop>
006740*</object>
006750*</prop>
006760*</object>
006770*<object type="System.CodeDom.CodeAssignStatement">
006780*<prop name="Left">
006790*<object type="System.CodeDom.CodePropertyReferenceExpression">
006800*<prop name="TargetObject">
006810*<object type="System.CodeDom.CodeFieldReferenceExpression">
006820*<prop name="TargetObject">
006830*<object type="System.CodeDom.CodeThisReferenceExpression">
006840*</object>
006850*</prop>
006860*<prop name="FieldName">
006870*<string value="statusBar1" />
006880*</prop>
006890*</object>
006900*</prop>
006910*<prop name="PropertyName">
006920*<string value="Size" />
006930*</prop>
006940*</object>
006950*</prop>
006960*<prop name="Right">
006970*<object type="System.CodeDom.CodeObjectCreateExpression">
006980*<prop name="CreateType">
006990*<object type="System.CodeDom.CodeTypeReference">
007000*<prop name="BaseType">
007010*<string value="System.Drawing.Size" />
007020*</prop>
007030*</object>
007040*</prop>
007050*<prop name="Parameters" method="add">
007060*<object type="System.CodeDom.CodePrimitiveExpression">
007070*<prop name="Value">
007080*<int32 value="445" />
007090*</prop>
007100*</object>
007110*<object type="System.CodeDom.CodePrimitiveExpression">
007120*<prop name="Value">
007130*<int32 value="21" />
007140*</prop>
007150*</object>
007160*</prop>
007170*</object>
007180*</prop>
007190*</object>
007200*<object type="System.CodeDom.CodeAssignStatement">
007210*<prop name="Left">
007220*<object type="System.CodeDom.CodePropertyReferenceExpression">
007230*<prop name="TargetObject">
007240*<object type="System.CodeDom.CodeFieldReferenceExpression">
007250*<prop name="TargetObject">
007260*<object type="System.CodeDom.CodeThisReferenceExpression">
007270*</object>
007280*</prop>
007290*<prop name="FieldName">
007300*<string value="statusBar1" />
007310*</prop>
007320*</object>
007330*</prop>
007340*<prop name="PropertyName">
007350*<string value="TabIndex" />
007360*</prop>
007370*</object>
007380*</prop>
007390*<prop name="Right">
007400*<object type="System.CodeDom.CodePrimitiveExpression">
007410*<prop name="Value">
007420*<int32 value="0" />
007430*</prop>
007440*</object>
007450*</prop>
007460*</object>
007470*<object type="System.CodeDom.CodeAssignStatement">
007480*<prop name="Left">
007490*<object type="System.CodeDom.CodePropertyReferenceExpression">
007500*<prop name="TargetObject">
007510*<object type="System.CodeDom.CodeFieldReferenceExpression">
007520*<prop name="TargetObject">
007530*<object type="System.CodeDom.CodeThisReferenceExpression">
007540*</object>
007550*</prop>
007560*<prop name="FieldName">
007570*<string value="statusBar1" />
007580*</prop>
007590*</object>
007600*</prop>
007610*<prop name="PropertyName">
007620*<string value="Text" />
007630*</prop>
007640*</object>
007650*</prop>
007660*<prop name="Right">
007670*<object type="System.CodeDom.CodePrimitiveExpression">
007680*<prop name="Value">
007690*<string value="Please Click the Button to Load the DataGrid" />
007700*</prop>
007710*</object>
007720*</prop>
007730*</object>
007740*<object type="System.CodeDom.CodeCommentStatement">
007750*<prop name="Comment">
007760*<object type="System.CodeDom.CodeComment">
007770*<prop name="Text">
007780*<string value="" />
007790*</prop>
007800*</object>
007810*</prop>
007820*</object>
007830*<object type="System.CodeDom.CodeCommentStatement">
007840*<prop name="Comment">
007850*<object type="System.CodeDom.CodeComment">
007860*<prop name="Text">
007870*<string value="progressBar1" />
007880*</prop>
007890*</object>
007900*</prop>
007910*</object>
007920*<object type="System.CodeDom.CodeCommentStatement">
007930*<prop name="Comment">
007940*<object type="System.CodeDom.CodeComment">
007950*<prop name="Text">
007960*<string value="" />
007970*</prop>
007980*</object>
007990*</prop>
008000*</object>
008010*<object type="System.CodeDom.CodeAssignStatement">
008020*<prop name="Left">
008030*<object type="System.CodeDom.CodePropertyReferenceExpression">
008040*<prop name="TargetObject">
008050*<object type="System.CodeDom.CodeFieldReferenceExpression">
008060*<prop name="TargetObject">
008070*<object type="System.CodeDom.CodeThisReferenceExpression">
008080*</object>
008090*</prop>
008100*<prop name="FieldName">
008110*<string value="progressBar1" />
008120*</prop>
008130*</object>
008140*</prop>
008150*<prop name="PropertyName">
008160*<string value="Location" />
008170*</prop>
008180*</object>
008190*</prop>
008200*<prop name="Right">
008210*<object type="System.CodeDom.CodeObjectCreateExpression">
008220*<prop name="CreateType">
008230*<object type="System.CodeDom.CodeTypeReference">
008240*<prop name="BaseType">
008250*<string value="System.Drawing.Point" />
008260*</prop>
008270*</object>
008280*</prop>
008290*<prop name="Parameters" method="add">
008300*<object type="System.CodeDom.CodePrimitiveExpression">
008310*<prop name="Value">
008320*<int32 value="7" />
008330*</prop>
008340*</object>
008350*<object type="System.CodeDom.CodePrimitiveExpression">
008360*<prop name="Value">
008370*<int32 value="220" />
008380*</prop>
008390*</object>
008400*</prop>
008410*</object>
008420*</prop>
008430*</object>
008440*<object type="System.CodeDom.CodeAssignStatement">
008450*<prop name="Left">
008460*<object type="System.CodeDom.CodePropertyReferenceExpression">
008470*<prop name="TargetObject">
008480*<object type="System.CodeDom.CodeFieldReferenceExpression">
008490*<prop name="TargetObject">
008500*<object type="System.CodeDom.CodeThisReferenceExpression">
008510*</object>
008520*</prop>
008530*<prop name="FieldName">
008540*<string value="progressBar1" />
008550*</prop>
008560*</object>
008570*</prop>
008580*<prop name="PropertyName">
008590*<string value="Name" />
008600*</prop>
008610*</object>
008620*</prop>
008630*<prop name="Right">
008640*<object type="System.CodeDom.CodePrimitiveExpression">
008650*<prop name="Value">
008660*<string value="progressBar1" />
008670*</prop>
008680*</object>
008690*</prop>
008700*</object>
008710*<object type="System.CodeDom.CodeAssignStatement">
008720*<prop name="Left">
008730*<object type="System.CodeDom.CodePropertyReferenceExpression">
008740*<prop name="TargetObject">
008750*<object type="System.CodeDom.CodeFieldReferenceExpression">
008760*<prop name="TargetObject">
008770*<object type="System.CodeDom.CodeThisReferenceExpression">
008780*</object>
008790*</prop>
008800*<prop name="FieldName">
008810*<string value="progressBar1" />
008820*</prop>
008830*</object>
008840*</prop>
008850*<prop name="PropertyName">
008860*<string value="Size" />
008870*</prop>
008880*</object>
008890*</prop>
008900*<prop name="Right">
008910*<object type="System.CodeDom.CodeObjectCreateExpression">
008920*<prop name="CreateType">
008930*<object type="System.CodeDom.CodeTypeReference">
008940*<prop name="BaseType">
008950*<string value="System.Drawing.Size" />
008960*</prop>
008970*</object>
008980*</prop>
008990*<prop name="Parameters" method="add">
009000*<object type="System.CodeDom.CodePrimitiveExpression">
009010*<prop name="Value">
009020*<int32 value="293" />
009030*</prop>
009040*</object>
009050*<object type="System.CodeDom.CodePrimitiveExpression">
009060*<prop name="Value">
009070*<int32 value="21" />
009080*</prop>
009090*</object>
009100*</prop>
009110*</object>
009120*</prop>
009130*</object>
009140*<object type="System.CodeDom.CodeAssignStatement">
009150*<prop name="Left">
009160*<object type="System.CodeDom.CodePropertyReferenceExpression">
009170*<prop name="TargetObject">
009180*<object type="System.CodeDom.CodeFieldReferenceExpression">
009190*<prop name="TargetObject">
009200*<object type="System.CodeDom.CodeThisReferenceExpression">
009210*</object>
009220*</prop>
009230*<prop name="FieldName">
009240*<string value="progressBar1" />
009250*</prop>
009260*</object>
009270*</prop>
009280*<prop name="PropertyName">
009290*<string value="TabIndex" />
009300*</prop>
009310*</object>
009320*</prop>
009330*<prop name="Right">
009340*<object type="System.CodeDom.CodePrimitiveExpression">
009350*<prop name="Value">
009360*<int32 value="1" />
009370*</prop>
009380*</object>
009390*</prop>
009400*</object>
009410*<object type="System.CodeDom.CodeAssignStatement">
009420*<prop name="Left">
009430*<object type="System.CodeDom.CodePropertyReferenceExpression">
009440*<prop name="TargetObject">
009450*<object type="System.CodeDom.CodeFieldReferenceExpression">
009460*<prop name="TargetObject">
009470*<object type="System.CodeDom.CodeThisReferenceExpression">
009480*</object>
009490*</prop>
009500*<prop name="FieldName">
009510*<string value="progressBar1" />
009520*</prop>
009530*</object>
009540*</prop>
009550*<prop name="PropertyName">
009560*<string value="Visible" />
009570*</prop>
009580*</object>
009590*</prop>
009600*<prop name="Right">
009610*<object type="System.CodeDom.CodePrimitiveExpression">
009620*<prop name="Value">
009630*<bool value="False" />
009640*</prop>
009650*</object>
009660*</prop>
009670*</object>
009680*<object type="System.CodeDom.CodeCommentStatement">
009690*<prop name="Comment">
009700*<object type="System.CodeDom.CodeComment">
009710*<prop name="Text">
009720*<string value="" />
009730*</prop>
009740*</object>
009750*</prop>
009760*</object>
009770*<object type="System.CodeDom.CodeCommentStatement">
009780*<prop name="Comment">
009790*<object type="System.CodeDom.CodeComment">
009800*<prop name="Text">
009810*<string value="dataGrid1" />
009820*</prop>
009830*</object>
009840*</prop>
009850*</object>
009860*<object type="System.CodeDom.CodeCommentStatement">
009870*<prop name="Comment">
009880*<object type="System.CodeDom.CodeComment">
009890*<prop name="Text">
009900*<string value="" />
009910*</prop>
009920*</object>
009930*</prop>
009940*</object>
009950*<object type="System.CodeDom.CodeAssignStatement">
009960*<prop name="Left">
009970*<object type="System.CodeDom.CodePropertyReferenceExpression">
009980*<prop name="TargetObject">
009990*<object type="System.CodeDom.CodeFieldReferenceExpression">
010000*<prop name="TargetObject">
010010*<object type="System.CodeDom.CodeThisReferenceExpression">
010020*</object>
010030*</prop>
010040*<prop name="FieldName">
010050*<string value="dataGrid1" />
010060*</prop>
010070*</object>
010080*</prop>
010090*<prop name="PropertyName">
010100*<string value="CaptionText" />
010110*</prop>
010120*</object>
010130*</prop>
010140*<prop name="Right">
010150*<object type="System.CodeDom.CodePrimitiveExpression">
010160*<prop name="Value">
010170*<string value="Categories Table" />
010180*</prop>
010190*</object>
010200*</prop>
010210*</object>
010220*<object type="System.CodeDom.CodeAssignStatement">
010230*<prop name="Left">
010240*<object type="System.CodeDom.CodePropertyReferenceExpression">
010250*<prop name="TargetObject">
010260*<object type="System.CodeDom.CodeFieldReferenceExpression">
010270*<prop name="TargetObject">
010280*<object type="System.CodeDom.CodeThisReferenceExpression">
010290*</object>
010300*</prop>
010310*<prop name="FieldName">
010320*<string value="dataGrid1" />
010330*</prop>
010340*</object>
010350*</prop>
010360*<prop name="PropertyName">
010370*<string value="DataMember" />
010380*</prop>
010390*</object>
010400*</prop>
010410*<prop name="Right">
010420*<object type="System.CodeDom.CodePrimitiveExpression">
010430*<prop name="Value">
010440*<string value="" />
010450*</prop>
010460*</object>
010470*</prop>
010480*</object>
010490*<object type="System.CodeDom.CodeAssignStatement">
010500*<prop name="Left">
010510*<object type="System.CodeDom.CodePropertyReferenceExpression">
010520*<prop name="TargetObject">
010530*<object type="System.CodeDom.CodeFieldReferenceExpression">
010540*<prop name="TargetObject">
010550*<object type="System.CodeDom.CodeThisReferenceExpression">
010560*</object>
010570*</prop>
010580*<prop name="FieldName">
010590*<string value="dataGrid1" />
010600*</prop>
010610*</object>
010620*</prop>
010630*<prop name="PropertyName">
010640*<string value="HeaderForeColor" />
010650*</prop>
010660*</object>
010670*</prop>
010680*<prop name="Right">
010690*<object type="System.CodeDom.CodePropertyReferenceExpression">
010700*<prop name="TargetObject">
010710*<object type="System.CodeDom.CodeTypeReferenceExpression">
010720*<prop name="Type">
010730*<object type="System.CodeDom.CodeTypeReference">
010740*<prop name="BaseType">
010750*<string value="System.Drawing.SystemColors" />
010760*</prop>
010770*</object>
010780*</prop>
010790*</object>
010800*</prop>
010810*<prop name="PropertyName">
010820*<string value="ControlText" />
010830*</prop>
010840*</object>
010850*</prop>
010860*</object>
010870*<object type="System.CodeDom.CodeAssignStatement">
010880*<prop name="Left">
010890*<object type="System.CodeDom.CodePropertyReferenceExpression">
010900*<prop name="TargetObject">
010910*<object type="System.CodeDom.CodeFieldReferenceExpression">
010920*<prop name="TargetObject">
010930*<object type="System.CodeDom.CodeThisReferenceExpression">
010940*</object>
010950*</prop>
010960*<prop name="FieldName">
010970*<string value="dataGrid1" />
010980*</prop>
010990*</object>
011000*</prop>
011010*<prop name="PropertyName">
011020*<string value="Location" />
011030*</prop>
011040*</object>
011050*</prop>
011060*<prop name="Right">
011070*<object type="System.CodeDom.CodeObjectCreateExpression">
011080*<prop name="CreateType">
011090*<object type="System.CodeDom.CodeTypeReference">
011100*<prop name="BaseType">
011110*<string value="System.Drawing.Point" />
011120*</prop>
011130*</object>
011140*</prop>
011150*<prop name="Parameters" method="add">
011160*<object type="System.CodeDom.CodePrimitiveExpression">
011170*<prop name="Value">
011180*<int32 value="15" />
011190*</prop>
011200*</object>
011210*<object type="System.CodeDom.CodePrimitiveExpression">
011220*<prop name="Value">
011230*<int32 value="61" />
011240*</prop>
011250*</object>
011260*</prop>
011270*</object>
011280*</prop>
011290*</object>
011300*<object type="System.CodeDom.CodeAssignStatement">
011310*<prop name="Left">
011320*<object type="System.CodeDom.CodePropertyReferenceExpression">
011330*<prop name="TargetObject">
011340*<object type="System.CodeDom.CodeFieldReferenceExpression">
011350*<prop name="TargetObject">
011360*<object type="System.CodeDom.CodeThisReferenceExpression">
011370*</object>
011380*</prop>
011390*<prop name="FieldName">
011400*<string value="dataGrid1" />
011410*</prop>
011420*</object>
011430*</prop>
011440*<prop name="PropertyName">
011450*<string value="Name" />
011460*</prop>
011470*</object>
011480*</prop>
011490*<prop name="Right">
011500*<object type="System.CodeDom.CodePrimitiveExpression">
011510*<prop name="Value">
011520*<string value="dataGrid1" />
011530*</prop>
011540*</object>
011550*</prop>
011560*</object>
011570*<object type="System.CodeDom.CodeAssignStatement">
011580*<prop name="Left">
011590*<object type="System.CodeDom.CodePropertyReferenceExpression">
011600*<prop name="TargetObject">
011610*<object type="System.CodeDom.CodeFieldReferenceExpression">
011620*<prop name="TargetObject">
011630*<object type="System.CodeDom.CodeThisReferenceExpression">
011640*</object>
011650*</prop>
011660*<prop name="FieldName">
011670*<string value="dataGrid1" />
011680*</prop>
011690*</object>
011700*</prop>
011710*<prop name="PropertyName">
011720*<string value="Size" />
011730*</prop>
011740*</object>
011750*</prop>
011760*<prop name="Right">
011770*<object type="System.CodeDom.CodeObjectCreateExpression">
011780*<prop name="CreateType">
011790*<object type="System.CodeDom.CodeTypeReference">
011800*<prop name="BaseType">
011810*<string value="System.Drawing.Size" />
011820*</prop>
011830*</object>
011840*</prop>
011850*<prop name="Parameters" method="add">
011860*<object type="System.CodeDom.CodePrimitiveExpression">
011870*<prop name="Value">
011880*<int32 value="263" />
011890*</prop>
011900*</object>
011910*<object type="System.CodeDom.CodePrimitiveExpression">
011920*<prop name="Value">
011930*<int32 value="143" />
011940*</prop>
011950*</object>
011960*</prop>
011970*</object>
011980*</prop>
011990*</object>
012000*<object type="System.CodeDom.CodeAssignStatement">
012010*<prop name="Left">
012020*<object type="System.CodeDom.CodePropertyReferenceExpression">
012030*<prop name="TargetObject">
012040*<object type="System.CodeDom.CodeFieldReferenceExpression">
012050*<prop name="TargetObject">
012060*<object type="System.CodeDom.CodeThisReferenceExpression">
012070*</object>
012080*</prop>
012090*<prop name="FieldName">
012100*<string value="dataGrid1" />
012110*</prop>
012120*</object>
012130*</prop>
012140*<prop name="PropertyName">
012150*<string value="TabIndex" />
012160*</prop>
012170*</object>
012180*</prop>
012190*<prop name="Right">
012200*<object type="System.CodeDom.CodePrimitiveExpression">
012210*<prop name="Value">
012220*<int32 value="2" />
012230*</prop>
012240*</object>
012250*</prop>
012260*</object>
012270*<object type="System.CodeDom.CodeExpressionStatement">
012280*<prop name="Expression">
012290*<object type="System.CodeDom.CodeMethodInvokeExpression">
012300*<prop name="Method">
012310*<object type="System.CodeDom.CodeMethodReferenceExpression">
012320*<prop name="TargetObject">
012330*<object type="System.CodeDom.CodeFieldReferenceExpression">
012340*<prop name="TargetObject">
012350*<object type="System.CodeDom.CodeThisReferenceExpression">
012360*</object>
012370*</prop>
012380*<prop name="FieldName">
012390*<string value="toolTip1" />
012400*</prop>
012410*</object>
012420*</prop>
012430*<prop name="MethodName">
012440*<string value="SetToolTip" />
012450*</prop>
012460*</object>
012470*</prop>
012480*<prop name="Parameters" method="add">
012490*<object type="System.CodeDom.CodeFieldReferenceExpression">
012500*<prop name="TargetObject">
012510*<object type="System.CodeDom.CodeThisReferenceExpression">
012520*</object>
012530*</prop>
012540*<prop name="FieldName">
012550*<string value="dataGrid1" />
012560*</prop>
012570*</object>
012580*<object type="System.CodeDom.CodePrimitiveExpression">
012590*<prop name="Value">
012600*<string value="Click on Column Header to Sort By that Column" />
012610*</prop>
012620*</object>
012630*</prop>
012640*</object>
012650*</prop>
012660*</object>
012670*<object type="System.CodeDom.CodeAssignStatement">
012680*<prop name="Left">
012690*<object type="System.CodeDom.CodePropertyReferenceExpression">
012700*<prop name="TargetObject">
012710*<object type="System.CodeDom.CodeFieldReferenceExpression">
012720*<prop name="TargetObject">
012730*<object type="System.CodeDom.CodeThisReferenceExpression">
012740*</object>
012750*</prop>
012760*<prop name="FieldName">
012770*<string value="dataGrid1" />
012780*</prop>
012790*</object>
012800*</prop>
012810*<prop name="PropertyName">
012820*<string value="Visible" />
012830*</prop>
012840*</object>
012850*</prop>
012860*<prop name="Right">
012870*<object type="System.CodeDom.CodePrimitiveExpression">
012880*<prop name="Value">
012890*<bool value="False" />
012900*</prop>
012910*</object>
012920*</prop>
012930*</object>
012940*<object type="System.CodeDom.CodeCommentStatement">
012950*<prop name="Comment">
012960*<object type="System.CodeDom.CodeComment">
012970*<prop name="Text">
012980*<string value="" />
012990*</prop>
013000*</object>
013010*</prop>
013020*</object>
013030*<object type="System.CodeDom.CodeCommentStatement">
013040*<prop name="Comment">
013050*<object type="System.CodeDom.CodeComment">
013060*<prop name="Text">
013070*<string value="button1" />
013080*</prop>
013090*</object>
013100*</prop>
013110*</object>
013120*<object type="System.CodeDom.CodeCommentStatement">
013130*<prop name="Comment">
013140*<object type="System.CodeDom.CodeComment">
013150*<prop name="Text">
013160*<string value="" />
013170*</prop>
013180*</object>
013190*</prop>
013200*</object>
013210*<object type="System.CodeDom.CodeAssignStatement">
013220*<prop name="Left">
013230*<object type="System.CodeDom.CodePropertyReferenceExpression">
013240*<prop name="TargetObject">
013250*<object type="System.CodeDom.CodeFieldReferenceExpression">
013260*<prop name="TargetObject">
013270*<object type="System.CodeDom.CodeThisReferenceExpression">
013280*</object>
013290*</prop>
013300*<prop name="FieldName">
013310*<string value="button1" />
013320*</prop>
013330*</object>
013340*</prop>
013350*<prop name="PropertyName">
013360*<string value="Location" />
013370*</prop>
013380*</object>
013390*</prop>
013400*<prop name="Right">
013410*<object type="System.CodeDom.CodeObjectCreateExpression">
013420*<prop name="CreateType">
013430*<object type="System.CodeDom.CodeTypeReference">
013440*<prop name="BaseType">
013450*<string value="System.Drawing.Point" />
013460*</prop>
013470*</object>
013480*</prop>
013490*<prop name="Parameters" method="add">
013500*<object type="System.CodeDom.CodePrimitiveExpression">
013510*<prop name="Value">
013520*<int32 value="7" />
013530*</prop>
013540*</object>
013550*<object type="System.CodeDom.CodePrimitiveExpression">
013560*<prop name="Value">
013570*<int32 value="8" />
013580*</prop>
013590*</object>
013600*</prop>
013610*</object>
013620*</prop>
013630*</object>
013640*<object type="System.CodeDom.CodeAssignStatement">
013650*<prop name="Left">
013660*<object type="System.CodeDom.CodePropertyReferenceExpression">
013670*<prop name="TargetObject">
013680*<object type="System.CodeDom.CodeFieldReferenceExpression">
013690*<prop name="TargetObject">
013700*<object type="System.CodeDom.CodeThisReferenceExpression">
013710*</object>
013720*</prop>
013730*<prop name="FieldName">
013740*<string value="button1" />
013750*</prop>
013760*</object>
013770*</prop>
013780*<prop name="PropertyName">
013790*<string value="Name" />
013800*</prop>
013810*</object>
013820*</prop>
013830*<prop name="Right">
013840*<object type="System.CodeDom.CodePrimitiveExpression">
013850*<prop name="Value">
013860*<string value="button1" />
013870*</prop>
013880*</object>
013890*</prop>
013900*</object>
013910*<object type="System.CodeDom.CodeAssignStatement">
013920*<prop name="Left">
013930*<object type="System.CodeDom.CodePropertyReferenceExpression">
013940*<prop name="TargetObject">
013950*<object type="System.CodeDom.CodeFieldReferenceExpression">
013960*<prop name="TargetObject">
013970*<object type="System.CodeDom.CodeThisReferenceExpression">
013980*</object>
013990*</prop>
014000*<prop name="FieldName">
014010*<string value="button1" />
014020*</prop>
014030*</object>
014040*</prop>
014050*<prop name="PropertyName">
014060*<string value="Size" />
014070*</prop>
014080*</object>
014090*</prop>
014100*<prop name="Right">
014110*<object type="System.CodeDom.CodeObjectCreateExpression">
014120*<prop name="CreateType">
014130*<object type="System.CodeDom.CodeTypeReference">
014140*<prop name="BaseType">
014150*<string value="System.Drawing.Size" />
014160*</prop>
014170*</object>
014180*</prop>
014190*<prop name="Parameters" method="add">
014200*<object type="System.CodeDom.CodePrimitiveExpression">
014210*<prop name="Value">
014220*<int32 value="139" />
014230*</prop>
014240*</object>
014250*<object type="System.CodeDom.CodePrimitiveExpression">
014260*<prop name="Value">
014270*<int32 value="21" />
014280*</prop>
014290*</object>
014300*</prop>
014310*</object>
014320*</prop>
014330*</object>
014340*<object type="System.CodeDom.CodeAssignStatement">
014350*<prop name="Left">
014360*<object type="System.CodeDom.CodePropertyReferenceExpression">
014370*<prop name="TargetObject">
014380*<object type="System.CodeDom.CodeFieldReferenceExpression">
014390*<prop name="TargetObject">
014400*<object type="System.CodeDom.CodeThisReferenceExpression">
014410*</object>
014420*</prop>
014430*<prop name="FieldName">
014440*<string value="button1" />
014450*</prop>
014460*</object>
014470*</prop>
014480*<prop name="PropertyName">
014490*<string value="TabIndex" />
014500*</prop>
014510*</object>
014520*</prop>
014530*<prop name="Right">
014540*<object type="System.CodeDom.CodePrimitiveExpression">
014550*<prop name="Value">
014560*<int32 value="3" />
014570*</prop>
014580*</object>
014590*</prop>
014600*</object>
014610*<object type="System.CodeDom.CodeAssignStatement">
014620*<prop name="Left">
014630*<object type="System.CodeDom.CodePropertyReferenceExpression">
014640*<prop name="TargetObject">
014650*<object type="System.CodeDom.CodeFieldReferenceExpression">
014660*<prop name="TargetObject">
014670*<object type="System.CodeDom.CodeThisReferenceExpression">
014680*</object>
014690*</prop>
014700*<prop name="FieldName">
014710*<string value="button1" />
014720*</prop>
014730*</object>
014740*</prop>
014750*<prop name="PropertyName">
014760*<string value="Text" />
014770*</prop>
014780*</object>
014790*</prop>
014800*<prop name="Right">
014810*<object type="System.CodeDom.CodePrimitiveExpression">
014820*<prop name="Value">
014830*<string value="Click to Load Datagrid" />
014840*</prop>
014850*</object>
014860*</prop>
014870*</object>
014880*<object type="System.CodeDom.CodeExpressionStatement">
014890*<prop name="Expression">
014900*<object type="System.CodeDom.CodeMethodInvokeExpression">
014910*<prop name="Method">
014920*<object type="System.CodeDom.CodeMethodReferenceExpression">
014930*<prop name="TargetObject">
014940*<object type="System.CodeDom.CodeFieldReferenceExpression">
014950*<prop name="TargetObject">
014960*<object type="System.CodeDom.CodeThisReferenceExpression">
014970*</object>
014980*</prop>
014990*<prop name="FieldName">
015000*<string value="toolTip1" />
015010*</prop>
015020*</object>
015030*</prop>
015040*<prop name="MethodName">
015050*<string value="SetToolTip" />
015060*</prop>
015070*</object>
015080*</prop>
015090*<prop name="Parameters" method="add">
015100*<object type="System.CodeDom.CodeFieldReferenceExpression">
015110*<prop name="TargetObject">
015120*<object type="System.CodeDom.CodeThisReferenceExpression">
015130*</object>
015140*</prop>
015150*<prop name="FieldName">
015160*<string value="button1" />
015170*</prop>
015180*</object>
015190*<object type="System.CodeDom.CodePrimitiveExpression">
015200*<prop name="Value">
015210*<string value="Press this Button to load Datagrid" />
015220*</prop>
015230*</object>
015240*</prop>
015250*</object>
015260*</prop>
015270*</object>
015280*<object type="System.CodeDom.CodeAttachEventStatement">
015290*<prop name="Event">
015300*<object type="System.CodeDom.CodeEventReferenceExpression">
015310*<prop name="TargetObject">
015320*<object type="System.CodeDom.CodeFieldReferenceExpression">
015330*<prop name="TargetObject">
015340*<object type="System.CodeDom.CodeThisReferenceExpression">
015350*</object>
015360*</prop>
015370*<prop name="FieldName">
015380*<string value="button1" />
015390*</prop>
015400*</object>
015410*</prop>
015420*<prop name="EventName">
015430*<string value="Click" />
015440*</prop>
015450*</object>
015460*</prop>
015470*<prop name="Listener">
015480*<object type="System.CodeDom.CodeDelegateCreateExpression">
015490*<prop name="DelegateType">
015500*<object type="System.CodeDom.CodeTypeReference">
015510*<prop name="BaseType">
015520*<string value="System.EventHandler" />
015530*</prop>
015540*</object>
015550*</prop>
015560*<prop name="TargetObject">
015570*<object type="System.CodeDom.CodeThisReferenceExpression">
015580*</object>
015590*</prop>
015600*<prop name="MethodName">
015610*<string value="button1_Click" />
015620*</prop>
015630*</object>
015640*</prop>
015650*</object>
015660*<object type="System.CodeDom.CodeCommentStatement">
015670*<prop name="Comment">
015680*<object type="System.CodeDom.CodeComment">
015690*<prop name="Text">
015700*<string value="" />
015710*</prop>
015720*</object>
015730*</prop>
015740*</object>
015750*<object type="System.CodeDom.CodeCommentStatement">
015760*<prop name="Comment">
015770*<object type="System.CodeDom.CodeComment">
015780*<prop name="Text">
015790*<string value="messageQueue1" />
015800*</prop>
015810*</object>
015820*</prop>
015830*</object>
015840*<object type="System.CodeDom.CodeCommentStatement">
015850*<prop name="Comment">
015860*<object type="System.CodeDom.CodeComment">
015870*<prop name="Text">
015880*<string value="" />
015890*</prop>
015900*</object>
015910*</prop>
015920*</object>
015930*<object type="System.CodeDom.CodeAssignStatement">
015940*<prop name="Left">
015950*<object type="System.CodeDom.CodePropertyReferenceExpression">
015960*<prop name="TargetObject">
015970*<object type="System.CodeDom.CodeFieldReferenceExpression">
015980*<prop name="TargetObject">
015990*<object type="System.CodeDom.CodeThisReferenceExpression">
016000*</object>
016010*</prop>
016020*<prop name="FieldName">
016030*<string value="messageQueue1" />
016040*</prop>
016050*</object>
016060*</prop>
016070*<prop name="PropertyName">
016080*<string value="Path" />
016090*</prop>
016100*</object>
016110*</prop>
016120*<prop name="Right">
016130*<object type="System.CodeDom.CodePrimitiveExpression">
016140*<prop name="Value">
016150*<string value="FormatName:DIRECT=OS:.\private$\mymsmqexample" />
016160*</prop>
016170*</object>
016180*</prop>
016190*</object>
016200*<object type="System.CodeDom.CodeAssignStatement">
016210*<prop name="Left">
016220*<object type="System.CodeDom.CodePropertyReferenceExpression">
016230*<prop name="TargetObject">
016240*<object type="System.CodeDom.CodeFieldReferenceExpression">
016250*<prop name="TargetObject">
016260*<object type="System.CodeDom.CodeThisReferenceExpression">
016270*</object>
016280*</prop>
016290*<prop name="FieldName">
016300*<string value="messageQueue1" />
016310*</prop>
016320*</object>
016330*</prop>
016340*<prop name="PropertyName">
016350*<string value="SynchronizingObject" />
016360*</prop>
016370*</object>
016380*</prop>
016390*<prop name="Right">
016400*<object type="System.CodeDom.CodeThisReferenceExpression">
016410*</object>
016420*</prop>
016430*</object>
016440*<object type="System.CodeDom.CodeCommentStatement">
016450*<prop name="Comment">
016460*<object type="System.CodeDom.CodeComment">
016470*<prop name="Text">
016480*<string value="" />
016490*</prop>
016500*</object>
016510*</prop>
016520*</object>
016530*<object type="System.CodeDom.CodeCommentStatement">
016540*<prop name="Comment">
016550*<object type="System.CodeDom.CodeComment">
016560*<prop name="Text">
016570*<string value="label1" />
016580*</prop>
016590*</object>
016600*</prop>
016610*</object>
016620*<object type="System.CodeDom.CodeCommentStatement">
016630*<prop name="Comment">
016640*<object type="System.CodeDom.CodeComment">
016650*<prop name="Text">
016660*<string value="" />
016670*</prop>
016680*</object>
016690*</prop>
016700*</object>
016710*<object type="System.CodeDom.CodeAssignStatement">
016720*<prop name="Left">
016730*<object type="System.CodeDom.CodePropertyReferenceExpression">
016740*<prop name="TargetObject">
016750*<object type="System.CodeDom.CodeFieldReferenceExpression">
016760*<prop name="TargetObject">
016770*<object type="System.CodeDom.CodeThisReferenceExpression">
016780*</object>
016790*</prop>
016800*<prop name="FieldName">
016810*<string value="label1" />
016820*</prop>
016830*</object>
016840*</prop>
016850*<prop name="PropertyName">
016860*<string value="Location" />
016870*</prop>
016880*</object>
016890*</prop>
016900*<prop name="Right">
016910*<object type="System.CodeDom.CodeObjectCreateExpression">
016920*<prop name="CreateType">
016930*<object type="System.CodeDom.CodeTypeReference">
016940*<prop name="BaseType">
016950*<string value="System.Drawing.Point" />
016960*</prop>
016970*</object>
016980*</prop>
016990*<prop name="Parameters" method="add">
017000*<object type="System.CodeDom.CodePrimitiveExpression">
017010*<prop name="Value">
017020*<int32 value="161" />
017030*</prop>
017040*</object>
017050*<object type="System.CodeDom.CodePrimitiveExpression">
017060*<prop name="Value">
017070*<int32 value="8" />
017080*</prop>
017090*</object>
017100*</prop>
017110*</object>
017120*</prop>
017130*</object>
017140*<object type="System.CodeDom.CodeAssignStatement">
017150*<prop name="Left">
017160*<object type="System.CodeDom.CodePropertyReferenceExpression">
017170*<prop name="TargetObject">
017180*<object type="System.CodeDom.CodeFieldReferenceExpression">
017190*<prop name="TargetObject">
017200*<object type="System.CodeDom.CodeThisReferenceExpression">
017210*</object>
017220*</prop>
017230*<prop name="FieldName">
017240*<string value="label1" />
017250*</prop>
017260*</object>
017270*</prop>
017280*<prop name="PropertyName">
017290*<string value="Name" />
017300*</prop>
017310*</object>
017320*</prop>
017330*<prop name="Right">
017340*<object type="System.CodeDom.CodePrimitiveExpression">
017350*<prop name="Value">
017360*<string value="label1" />
017370*</prop>
017380*</object>
017390*</prop>
017400*</object>
017410*<object type="System.CodeDom.CodeAssignStatement">
017420*<prop name="Left">
017430*<object type="System.CodeDom.CodePropertyReferenceExpression">
017440*<prop name="TargetObject">
017450*<object type="System.CodeDom.CodeFieldReferenceExpression">
017460*<prop name="TargetObject">
017470*<object type="System.CodeDom.CodeThisReferenceExpression">
017480*</object>
017490*</prop>
017500*<prop name="FieldName">
017510*<string value="label1" />
017520*</prop>
017530*</object>
017540*</prop>
017550*<prop name="PropertyName">
017560*<string value="Size" />
017570*</prop>
017580*</object>
017590*</prop>
017600*<prop name="Right">
017610*<object type="System.CodeDom.CodeObjectCreateExpression">
017620*<prop name="CreateType">
017630*<object type="System.CodeDom.CodeTypeReference">
017640*<prop name="BaseType">
017650*<string value="System.Drawing.Size" />
017660*</prop>
017670*</object>
017680*</prop>
017690*<prop name="Parameters" method="add">
017700*<object type="System.CodeDom.CodePrimitiveExpression">
017710*<prop name="Value">
017720*<int32 value="219" />
017730*</prop>
017740*</object>
017750*<object type="System.CodeDom.CodePrimitiveExpression">
017760*<prop name="Value">
017770*<int32 value="22" />
017780*</prop>
017790*</object>
017800*</prop>
017810*</object>
017820*</prop>
017830*</object>
017840*<object type="System.CodeDom.CodeAssignStatement">
017850*<prop name="Left">
017860*<object type="System.CodeDom.CodePropertyReferenceExpression">
017870*<prop name="TargetObject">
017880*<object type="System.CodeDom.CodeFieldReferenceExpression">
017890*<prop name="TargetObject">
017900*<object type="System.CodeDom.CodeThisReferenceExpression">
017910*</object>
017920*</prop>
017930*<prop name="FieldName">
017940*<string value="label1" />
017950*</prop>
017960*</object>
017970*</prop>
017980*<prop name="PropertyName">
017990*<string value="TabIndex" />
018000*</prop>
018010*</object>
018020*</prop>
018030*<prop name="Right">
018040*<object type="System.CodeDom.CodePrimitiveExpression">
018050*<prop name="Value">
018060*<int32 value="4" />
018070*</prop>
018080*</object>
018090*</prop>
018100*</object>
018110*<object type="System.CodeDom.CodeAssignStatement">
018120*<prop name="Left">
018130*<object type="System.CodeDom.CodePropertyReferenceExpression">
018140*<prop name="TargetObject">
018150*<object type="System.CodeDom.CodeFieldReferenceExpression">
018160*<prop name="TargetObject">
018170*<object type="System.CodeDom.CodeThisReferenceExpression">
018180*</object>
018190*</prop>
018200*<prop name="FieldName">
018210*<string value="label1" />
018220*</prop>
018230*</object>
018240*</prop>
018250*<prop name="PropertyName">
018260*<string value="Text" />
018270*</prop>
018280*</object>
018290*</prop>
018300*<prop name="Right">
018310*<object type="System.CodeDom.CodePrimitiveExpression">
018320*<prop name="Value">
018330*<string value="MSMQ Message has not been sent yet" />
018340*</prop>
018350*</object>
018360*</prop>
018370*</object>
018380*<object type="System.CodeDom.CodeCommentStatement">
018390*<prop name="Comment">
018400*<object type="System.CodeDom.CodeComment">
018410*<prop name="Text">
018420*<string value="" />
018430*</prop>
018440*</object>
018450*</prop>
018460*</object>
018470*<object type="System.CodeDom.CodeCommentStatement">
018480*<prop name="Comment">
018490*<object type="System.CodeDom.CodeComment">
018500*<prop name="Text">
018510*<string value="label2" />
018520*</prop>
018530*</object>
018540*</prop>
018550*</object>
018560*<object type="System.CodeDom.CodeCommentStatement">
018570*<prop name="Comment">
018580*<object type="System.CodeDom.CodeComment">
018590*<prop name="Text">
018600*<string value="" />
018610*</prop>
018620*</object>
018630*</prop>
018640*</object>
018650*<object type="System.CodeDom.CodeAssignStatement">
018660*<prop name="Left">
018670*<object type="System.CodeDom.CodePropertyReferenceExpression">
018680*<prop name="TargetObject">
018690*<object type="System.CodeDom.CodeFieldReferenceExpression">
018700*<prop name="TargetObject">
018710*<object type="System.CodeDom.CodeThisReferenceExpression">
018720*</object>
018730*</prop>
018740*<prop name="FieldName">
018750*<string value="label2" />
018760*</prop>
018770*</object>
018780*</prop>
018790*<prop name="PropertyName">
018800*<string value="Location" />
018810*</prop>
018820*</object>
018830*</prop>
018840*<prop name="Right">
018850*<object type="System.CodeDom.CodeObjectCreateExpression">
018860*<prop name="CreateType">
018870*<object type="System.CodeDom.CodeTypeReference">
018880*<prop name="BaseType">
018890*<string value="System.Drawing.Point" />
018900*</prop>
018910*</object>
018920*</prop>
018930*<prop name="Parameters" method="add">
018940*<object type="System.CodeDom.CodePrimitiveExpression">
018950*<prop name="Value">
018960*<int32 value="161" />
018970*</prop>
018980*</object>
018990*<object type="System.CodeDom.CodePrimitiveExpression">
019000*<prop name="Value">
019010*<int32 value="30" />
019020*</prop>
019030*</object>
019040*</prop>
019050*</object>
019060*</prop>
019070*</object>
019080*<object type="System.CodeDom.CodeAssignStatement">
019090*<prop name="Left">
019100*<object type="System.CodeDom.CodePropertyReferenceExpression">
019110*<prop name="TargetObject">
019120*<object type="System.CodeDom.CodeFieldReferenceExpression">
019130*<prop name="TargetObject">
019140*<object type="System.CodeDom.CodeThisReferenceExpression">
019150*</object>
019160*</prop>
019170*<prop name="FieldName">
019180*<string value="label2" />
019190*</prop>
019200*</object>
019210*</prop>
019220*<prop name="PropertyName">
019230*<string value="Name" />
019240*</prop>
019250*</object>
019260*</prop>
019270*<prop name="Right">
019280*<object type="System.CodeDom.CodePrimitiveExpression">
019290*<prop name="Value">
019300*<string value="label2" />
019310*</prop>
019320*</object>
019330*</prop>
019340*</object>
019350*<object type="System.CodeDom.CodeAssignStatement">
019360*<prop name="Left">
019370*<object type="System.CodeDom.CodePropertyReferenceExpression">
019380*<prop name="TargetObject">
019390*<object type="System.CodeDom.CodeFieldReferenceExpression">
019400*<prop name="TargetObject">
019410*<object type="System.CodeDom.CodeThisReferenceExpression">
019420*</object>
019430*</prop>
019440*<prop name="FieldName">
019450*<string value="label2" />
019460*</prop>
019470*</object>
019480*</prop>
019490*<prop name="PropertyName">
019500*<string value="Size" />
019510*</prop>
019520*</object>
019530*</prop>
019540*<prop name="Right">
019550*<object type="System.CodeDom.CodeObjectCreateExpression">
019560*<prop name="CreateType">
019570*<object type="System.CodeDom.CodeTypeReference">
019580*<prop name="BaseType">
019590*<string value="System.Drawing.Size" />
019600*</prop>
019610*</object>
019620*</prop>
019630*<prop name="Parameters" method="add">
019640*<object type="System.CodeDom.CodePrimitiveExpression">
019650*<prop name="Value">
019660*<int32 value="270" />
019670*</prop>
019680*</object>
019690*<object type="System.CodeDom.CodePrimitiveExpression">
019700*<prop name="Value">
019710*<int32 value="15" />
019720*</prop>
019730*</object>
019740*</prop>
019750*</object>
019760*</prop>
019770*</object>
019780*<object type="System.CodeDom.CodeAssignStatement">
019790*<prop name="Left">
019800*<object type="System.CodeDom.CodePropertyReferenceExpression">
019810*<prop name="TargetObject">
019820*<object type="System.CodeDom.CodeFieldReferenceExpression">
019830*<prop name="TargetObject">
019840*<object type="System.CodeDom.CodeThisReferenceExpression">
019850*</object>
019860*</prop>
019870*<prop name="FieldName">
019880*<string value="label2" />
019890*</prop>
019900*</object>
019910*</prop>
019920*<prop name="PropertyName">
019930*<string value="TabIndex" />
019940*</prop>
019950*</object>
019960*</prop>
019970*<prop name="Right">
019980*<object type="System.CodeDom.CodePrimitiveExpression">
019990*<prop name="Value">
020000*<int32 value="5" />
020010*</prop>
020020*</object>
020030*</prop>
020040*</object>
020050*<object type="System.CodeDom.CodeAssignStatement">
020060*<prop name="Left">
020070*<object type="System.CodeDom.CodePropertyReferenceExpression">
020080*<prop name="TargetObject">
020090*<object type="System.CodeDom.CodeFieldReferenceExpression">
020100*<prop name="TargetObject">
020110*<object type="System.CodeDom.CodeThisReferenceExpression">
020120*</object>
020130*</prop>
020140*<prop name="FieldName">
020150*<string value="label2" />
020160*</prop>
020170*</object>
020180*</prop>
020190*<prop name="PropertyName">
020200*<string value="Text" />
020210*</prop>
020220*</object>
020230*</prop>
020240*<prop name="Right">
020250*<object type="System.CodeDom.CodePrimitiveExpression">
020260*<prop name="Value">
020270*<string value="What is the GUID used for the MSMQ Message?" />
020280*</prop>
020290*</object>
020300*</prop>
020310*</object>
020320*<object type="System.CodeDom.CodeCommentStatement">
020330*<prop name="Comment">
020340*<object type="System.CodeDom.CodeComment">
020350*<prop name="Text">
020360*<string value="" />
020370*</prop>
020380*</object>
020390*</prop>
020400*</object>
020410*<object type="System.CodeDom.CodeCommentStatement">
020420*<prop name="Comment">
020430*<object type="System.CodeDom.CodeComment">
020440*<prop name="Text">
020450*<string value="Form1" />
020460*</prop>
020470*</object>
020480*</prop>
020490*</object>
020500*<object type="System.CodeDom.CodeCommentStatement">
020510*<prop name="Comment">
020520*<object type="System.CodeDom.CodeComment">
020530*<prop name="Text">
020540*<string value="" />
020550*</prop>
020560*</object>
020570*</prop>
020580*</object>
020590*<object type="System.CodeDom.CodeAssignStatement">
020600*<prop name="Left">
020610*<object type="System.CodeDom.CodePropertyReferenceExpression">
020620*<prop name="TargetObject">
020630*<object type="System.CodeDom.CodeThisReferenceExpression">
020640*</object>
020650*</prop>
020660*<prop name="PropertyName">
020670*<string value="AutoScaleBaseSize" />
020680*</prop>
020690*</object>
020700*</prop>
020710*<prop name="Right">
020720*<object type="System.CodeDom.CodeObjectCreateExpression">
020730*<prop name="CreateType">
020740*<object type="System.CodeDom.CodeTypeReference">
020750*<prop name="BaseType">
020760*<string value="System.Drawing.Size" />
020770*</prop>
020780*</object>
020790*</prop>
020800*<prop name="Parameters" method="add">
020810*<object type="System.CodeDom.CodePrimitiveExpression">
020820*<prop name="Value">
020830*<int32 value="5" />
020840*</prop>
020850*</object>
020860*<object type="System.CodeDom.CodePrimitiveExpression">
020870*<prop name="Value">
020880*<int32 value="13" />
020890*</prop>
020900*</object>
020910*</prop>
020920*</object>
020930*</prop>
020940*</object>
020950*<object type="System.CodeDom.CodeAssignStatement">
020960*<prop name="Left">
020970*<object type="System.CodeDom.CodePropertyReferenceExpression">
020980*<prop name="TargetObject">
020990*<object type="System.CodeDom.CodeThisReferenceExpression">
021000*</object>
021010*</prop>
021020*<prop name="PropertyName">
021030*<string value="ClientSize" />
021040*</prop>
021050*</object>
021060*</prop>
021070*<prop name="Right">
021080*<object type="System.CodeDom.CodeObjectCreateExpression">
021090*<prop name="CreateType">
021100*<object type="System.CodeDom.CodeTypeReference">
021110*<prop name="BaseType">
021120*<string value="System.Drawing.Size" />
021130*</prop>
021140*</object>
021150*</prop>
021160*<prop name="Parameters" method="add">
021170*<object type="System.CodeDom.CodePrimitiveExpression">
021180*<prop name="Value">
021190*<int32 value="445" />
021200*</prop>
021210*</object>
021220*<object type="System.CodeDom.CodePrimitiveExpression">
021230*<prop name="Value">
021240*<int32 value="266" />
021250*</prop>
021260*</object>
021270*</prop>
021280*</object>
021290*</prop>
021300*</object>
021310*<object type="System.CodeDom.CodeExpressionStatement">
021320*<prop name="Expression">
021330*<object type="System.CodeDom.CodeMethodInvokeExpression">
021340*<prop name="Method">
021350*<object type="System.CodeDom.CodeMethodReferenceExpression">
021360*<prop name="TargetObject">
021370*<object type="System.CodeDom.CodePropertyReferenceExpression">
021380*<prop name="TargetObject">
021390*<object type="System.CodeDom.CodeThisReferenceExpression">
021400*</object>
021410*</prop>
021420*<prop name="PropertyName">
021430*<string value="Controls" />
021440*</prop>
021450*</object>
021460*</prop>
021470*<prop name="MethodName">
021480*<string value="AddRange" />
021490*</prop>
021500*</object>
021510*</prop>
021520*<prop name="Parameters" method="add">
021530*<object type="System.CodeDom.CodeArrayCreateExpression">
021540*<prop name="CreateType">
021550*<object type="System.CodeDom.CodeTypeReference">
021560*<prop name="BaseType">
021570*<string value="System.Windows.Forms.Control" />
021580*</prop>
021590*</object>
021600*</prop>
021610*<prop name="Initializers" method="add">
021620*<object type="System.CodeDom.CodeFieldReferenceExpression">
021630*<prop name="TargetObject">
021640*<object type="System.CodeDom.CodeThisReferenceExpression">
021650*</object>
021660*</prop>
021670*<prop name="FieldName">
021680*<string value="label2" />
021690*</prop>
021700*</object>
021710*<object type="System.CodeDom.CodeFieldReferenceExpression">
021720*<prop name="TargetObject">
021730*<object type="System.CodeDom.CodeThisReferenceExpression">
021740*</object>
021750*</prop>
021760*<prop name="FieldName">
021770*<string value="label1" />
021780*</prop>
021790*</object>
021800*<object type="System.CodeDom.CodeFieldReferenceExpression">
021810*<prop name="TargetObject">
021820*<object type="System.CodeDom.CodeThisReferenceExpression">
021830*</object>
021840*</prop>
021850*<prop name="FieldName">
021860*<string value="button1" />
021870*</prop>
021880*</object>
021890*<object type="System.CodeDom.CodeFieldReferenceExpression">
021900*<prop name="TargetObject">
021910*<object type="System.CodeDom.CodeThisReferenceExpression">
021920*</object>
021930*</prop>
021940*<prop name="FieldName">
021950*<string value="dataGrid1" />
021960*</prop>
021970*</object>
021980*<object type="System.CodeDom.CodeFieldReferenceExpression">
021990*<prop name="TargetObject">
022000*<object type="System.CodeDom.CodeThisReferenceExpression">
022010*</object>
022020*</prop>
022030*<prop name="FieldName">
022040*<string value="progressBar1" />
022050*</prop>
022060*</object>
022070*<object type="System.CodeDom.CodeFieldReferenceExpression">
022080*<prop name="TargetObject">
022090*<object type="System.CodeDom.CodeThisReferenceExpression">
022100*</object>
022110*</prop>
022120*<prop name="FieldName">
022130*<string value="statusBar1" />
022140*</prop>
022150*</object>
022160*</prop>
022170*<prop name="Size">
022180*<int32 value="0" />
022190*</prop>
022200*<prop name="SizeExpression">
022210*<null />
022220*</prop>
022230*</object>
022240*</prop>
022250*</object>
022260*</prop>
022270*</object>
022280*<object type="System.CodeDom.CodeAssignStatement">
022290*<prop name="Left">
022300*<object type="System.CodeDom.CodePropertyReferenceExpression">
022310*<prop name="TargetObject">
022320*<object type="System.CodeDom.CodeThisReferenceExpression">
022330*</object>
022340*</prop>
022350*<prop name="PropertyName">
022360*<string value="Name" />
022370*</prop>
022380*</object>
022390*</prop>
022400*<prop name="Right">
022410*<object type="System.CodeDom.CodePrimitiveExpression">
022420*<prop name="Value">
022430*<string value="Form1" />
022440*</prop>
022450*</object>
022460*</prop>
022470*</object>
022480*<object type="System.CodeDom.CodeAssignStatement">
022490*<prop name="Left">
022500*<object type="System.CodeDom.CodePropertyReferenceExpression">
022510*<prop name="TargetObject">
022520*<object type="System.CodeDom.CodeThisReferenceExpression">
022530*</object>
022540*</prop>
022550*<prop name="PropertyName">
022560*<string value="Text" />
022570*</prop>
022580*</object>
022590*</prop>
022600*<prop name="Right">
022610*<object type="System.CodeDom.CodePrimitiveExpression">
022620*<prop name="Value">
022630*<string value="MyMSMQExampleCOBOL" />
022640*</prop>
022650*</object>
022660*</prop>
022670*</object>
022680*<object type="System.CodeDom.CodeAttachEventStatement">
022690*<prop name="Event">
022700*<object type="System.CodeDom.CodeEventReferenceExpression">
022710*<prop name="TargetObject">
022720*<object type="System.CodeDom.CodeThisReferenceExpression">
022730*</object>
022740*</prop>
022750*<prop name="EventName">
022760*<string value="Load" />
022770*</prop>
022780*</object>
022790*</prop>
022800*<prop name="Listener">
022810*<object type="System.CodeDom.CodeDelegateCreateExpression">
022820*<prop name="DelegateType">
022830*<object type="System.CodeDom.CodeTypeReference">
022840*<prop name="BaseType">
022850*<string value="System.EventHandler" />
022860*</prop>
022870*</object>
022880*</prop>
022890*<prop name="TargetObject">
022900*<object type="System.CodeDom.CodeThisReferenceExpression">
022910*</object>
022920*</prop>
022930*<prop name="MethodName">
022940*<string value="Form1_Load" />
022950*</prop>
022960*</object>
022970*</prop>
022980*</object>
022990*<object type="System.CodeDom.CodeExpressionStatement">
023000*<prop name="Expression">
023010*<object type="System.CodeDom.CodeMethodInvokeExpression">
023020*<prop name="Method">
023030*<object type="System.CodeDom.CodeMethodReferenceExpression">
023040*<prop name="TargetObject">
023050*<object type="System.CodeDom.CodeCastExpression">
023060*<prop name="TargetType">
023070*<object type="System.CodeDom.CodeTypeReference">
023080*<prop name="BaseType">
023090*<string value="System.ComponentModel.ISupportInitialize" />
023100*</prop>
023110*</object>
023120*</prop>
023130*<prop name="Expression">
023140*<object type="System.CodeDom.CodeFieldReferenceExpression">
023150*<prop name="TargetObject">
023160*<object type="System.CodeDom.CodeThisReferenceExpression">
023170*</object>
023180*</prop>
023190*<prop name="FieldName">
023200*<string value="dataGrid1" />
023210*</prop>
023220*</object>
023230*</prop>
023240*</object>
023250*</prop>
023260*<prop name="MethodName">
023270*<string value="EndInit" />
023280*</prop>
023290*</object>
023300*</prop>
023310*</object>
023320*</prop>
023330*</object>
023340*<object type="System.CodeDom.CodeExpressionStatement">
023350*<prop name="Expression">
023360*<object type="System.CodeDom.CodeMethodInvokeExpression">
023370*<prop name="Method">
023380*<object type="System.CodeDom.CodeMethodReferenceExpression">
023390*<prop name="TargetObject">
023400*<object type="System.CodeDom.CodeThisReferenceExpression">
023410*</object>
023420*</prop>
023430*<prop name="MethodName">
023440*<string value="ResumeLayout" />
023450*</prop>
023460*</object>
023470*</prop>
023480*<prop name="Parameters" method="add">
023490*<object type="System.CodeDom.CodePrimitiveExpression">
023500*<prop name="Value">
023510*<bool value="False" />
023520*</prop>
023530*</object>
023540*</prop>
023550*</object>
023560*</prop>
023570*</object>
023580*</embedded-codedom>
023590*>>IMP END-EMBEDDED-CODEDOM
023600     INVOKE CLASS-CONTAINER "NEW" RETURNING TEMP1
023610     SET PROP-COMPONENTS OF SELF TO TEMP1
023620     INVOKE CLASS-STATUSBAR "NEW" RETURNING TEMP2
023630     SET PROP-STATUSBAR1 OF SELF TO TEMP2
023640     INVOKE CLASS-PROGRESSBAR "NEW" RETURNING TEMP3
023650     SET PROP-PROGRESSBAR1 OF SELF TO TEMP3
023660     INVOKE CLASS-DATAGRID "NEW" RETURNING TEMP4
023670     SET PROP-DATAGRID1 OF SELF TO TEMP4
023680     INVOKE CLASS-BUTTON "NEW" RETURNING TEMP5
023690     SET PROP-BUTTON1 OF SELF TO TEMP5
023700     SET TEMP6 TO PROP-COMPONENTS OF SELF
023710     INVOKE CLASS-TOOLTIP "NEW" USING BY VALUE TEMP6 RETURNING TEMP7
023720     SET PROP-TOOLTIP1 OF SELF TO TEMP7
023730     INVOKE CLASS-MESSAGEQUEUE "NEW" RETURNING TEMP8
023740     SET PROP-MESSAGEQUEUE1 OF SELF TO TEMP8
023750     INVOKE CLASS-LABEL "NEW" RETURNING TEMP9
023760     SET PROP-LABEL1 OF SELF TO TEMP9
023770     INVOKE CLASS-LABEL "NEW" RETURNING TEMP10
023780     SET PROP-LABEL2 OF SELF TO TEMP10
023790     SET TEMP11 TO PROP-DATAGRID1 OF SELF
023800     SET TEMP12 TO TEMP11 AS INTERFACE-ISUPPORTINITIALIZE
023810     INVOKE TEMP12 "BeginInit"
023820     INVOKE SELF "SuspendLayout"
023830*
023840*statusBar1
023850*
023860     MOVE 0 TO TEMP13
023870     MOVE 245 TO TEMP14
023880     INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP13 BY VALUE TEMP14 RETURNING TEMP15
023890     SET TEMP16 TO PROP-STATUSBAR1 OF SELF
023900     SET PROP-LOCATION OF TEMP16 TO TEMP15
023910     SET TEMP17 TO N"statusBar1"
023920     SET TEMP18 TO PROP-STATUSBAR1 OF SELF
023930     SET PROP-NAME OF TEMP18 TO TEMP17
023940     MOVE 445 TO TEMP19
023950     MOVE 21 TO TEMP20
023960     INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP19 BY VALUE TEMP20 RETURNING TEMP21
023970     SET TEMP22 TO PROP-STATUSBAR1 OF SELF
023980     SET PROP-SIZE OF TEMP22 TO TEMP21
023990     MOVE 0 TO TEMP23
024000     SET TEMP24 TO PROP-STATUSBAR1 OF SELF
024010     MOVE TEMP23 TO PROP-TABINDEX OF TEMP24
024020     SET TEMP25 TO N"Please Click the Button to Load the DataGrid"
024030     SET TEMP26 TO PROP-STATUSBAR1 OF SELF
024040     SET PROP-TEXT OF TEMP26 TO TEMP25
024050*
024060*progressBar1
024070*
024080     MOVE 7 TO TEMP27
024090     MOVE 220 TO TEMP28
024100     INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP27 BY VALUE TEMP28 RETURNING TEMP29
024110     SET TEMP30 TO PROP-PROGRESSBAR1 OF SELF
024120     SET PROP-LOCATION OF TEMP30 TO TEMP29
024130     SET TEMP31 TO N"progressBar1"
024140     SET TEMP32 TO PROP-PROGRESSBAR1 OF SELF
024150     SET PROP-NAME OF TEMP32 TO TEMP31
024160     MOVE 293 TO TEMP33
024170     MOVE 21 TO TEMP34
024180     INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP33 BY VALUE TEMP34 RETURNING TEMP35
024190     SET TEMP36 TO PROP-PROGRESSBAR1 OF SELF
024200     SET PROP-SIZE OF TEMP36 TO TEMP35
024210     MOVE 1 TO TEMP37
024220     SET TEMP38 TO PROP-PROGRESSBAR1 OF SELF
024230     MOVE TEMP37 TO PROP-TABINDEX OF TEMP38
024240     SET TEMP39 TO B"0"
024250     SET TEMP40 TO PROP-PROGRESSBAR1 OF SELF
024260     SET PROP-VISIBLE OF TEMP40 TO TEMP39
024270*
024280*dataGrid1
024290*
024300     SET TEMP41 TO N"Categories Table"
024310     SET TEMP42 TO PROP-DATAGRID1 OF SELF
024320     SET PROP-CAPTIONTEXT OF TEMP42 TO TEMP41
024330     SET TEMP43 TO PROP-EMPTY OF CLASS-STRING
024340     SET TEMP44 TO PROP-DATAGRID1 OF SELF
024350     SET PROP-DATAMEMBER OF TEMP44 TO TEMP43
024360     SET TEMP45 TO PROP-DATAGRID1 OF SELF
024370     SET PROP-HEADERFORECOLOR OF TEMP45 TO PROP-CONTROLTEXT OF CLASS-SYSTEMCOLORS
024380     MOVE 15 TO TEMP46
024390     MOVE 61 TO TEMP47
024400     INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP46 BY VALUE TEMP47 RETURNING TEMP48
024410     SET TEMP49 TO PROP-DATAGRID1 OF SELF
024420     SET PROP-LOCATION OF TEMP49 TO TEMP48
024430     SET TEMP50 TO N"dataGrid1"
024440     SET TEMP51 TO PROP-DATAGRID1 OF SELF
024450     SET PROP-NAME OF TEMP51 TO TEMP50
024460     MOVE 263 TO TEMP52
024470     MOVE 143 TO TEMP53
024480     INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP52 BY VALUE TEMP53 RETURNING TEMP54
024490     SET TEMP55 TO PROP-DATAGRID1 OF SELF
024500     SET PROP-SIZE OF TEMP55 TO TEMP54
024510     MOVE 2 TO TEMP56
024520     SET TEMP57 TO PROP-DATAGRID1 OF SELF
024530     MOVE TEMP56 TO PROP-TABINDEX OF TEMP57
024540     SET TEMP59 TO PROP-DATAGRID1 OF SELF
024550     SET TEMP60 TO N"Click on Column Header to Sort By that Column"
024560     SET TEMP58 TO PROP-TOOLTIP1 OF SELF
024570     INVOKE TEMP58 "SetToolTip" USING BY VALUE TEMP59 BY VALUE TEMP60
024580     SET TEMP61 TO B"0"
024590     SET TEMP62 TO PROP-DATAGRID1 OF SELF
024600     SET PROP-VISIBLE OF TEMP62 TO TEMP61
024610*
024620*button1
024630*
024640     MOVE 7 TO TEMP63
024650     MOVE 8 TO TEMP64
024660     INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP63 BY VALUE TEMP64 RETURNING TEMP65
024670     SET TEMP66 TO PROP-BUTTON1 OF SELF
024680     SET PROP-LOCATION OF TEMP66 TO TEMP65
024690     SET TEMP67 TO N"button1"
024700     SET TEMP68 TO PROP-BUTTON1 OF SELF
024710     SET PROP-NAME OF TEMP68 TO TEMP67
024720     MOVE 139 TO TEMP69
024730     MOVE 21 TO TEMP70
024740     INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP69 BY VALUE TEMP70 RETURNING TEMP71
024750     SET TEMP72 TO PROP-BUTTON1 OF SELF
024760     SET PROP-SIZE OF TEMP72 TO TEMP71
024770     MOVE 3 TO TEMP73
024780     SET TEMP74 TO PROP-BUTTON1 OF SELF
024790     MOVE TEMP73 TO PROP-TABINDEX OF TEMP74
024800     SET TEMP75 TO N"Click to Load Datagrid"
024810     SET TEMP76 TO PROP-BUTTON1 OF SELF
024820     SET PROP-TEXT OF TEMP76 TO TEMP75
024830     SET TEMP78 TO PROP-BUTTON1 OF SELF
024840     SET TEMP79 TO N"Press this Button to load Datagrid"
024850     SET TEMP77 TO PROP-TOOLTIP1 OF SELF
024860     INVOKE TEMP77 "SetToolTip" USING BY VALUE TEMP78 BY VALUE TEMP79
024870     SET TEMP80 TO PROP-BUTTON1 OF SELF
024880     INVOKE DELEGATE-EVENTHANDLER "NEW" USING BY VALUE SELF BY VALUE N"button1_Click" RETURNING TEMP81
024890     INVOKE TEMP80 "add_Click" USING BY VALUE TEMP81
024900*
024910*messageQueue1
024920*
024930     SET TEMP82 TO N"FormatName:DIRECT=OS:.\private$\mymsmqexample"
024940     SET TEMP83 TO PROP-MESSAGEQUEUE1 OF SELF
024950     SET PROP-PATH OF TEMP83 TO TEMP82
024960     SET TEMP84 TO PROP-MESSAGEQUEUE1 OF SELF
024970     SET PROP-SYNCHRONIZINGOBJECT OF TEMP84 TO SELF
024980*
024990*label1
025000*
025010     MOVE 161 TO TEMP85
025020     MOVE 8 TO TEMP86
025030     INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP85 BY VALUE TEMP86 RETURNING TEMP87
025040     SET TEMP88 TO PROP-LABEL1 OF SELF
025050     SET PROP-LOCATION OF TEMP88 TO TEMP87
025060     SET TEMP89 TO N"label1"
025070     SET TEMP90 TO PROP-LABEL1 OF SELF
025080     SET PROP-NAME OF TEMP90 TO TEMP89
025090     MOVE 219 TO TEMP91
025100     MOVE 22 TO TEMP92
025110     INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP91 BY VALUE TEMP92 RETURNING TEMP93
025120     SET TEMP94 TO PROP-LABEL1 OF SELF
025130     SET PROP-SIZE OF TEMP94 TO TEMP93
025140     MOVE 4 TO TEMP95
025150     SET TEMP96 TO PROP-LABEL1 OF SELF
025160     MOVE TEMP95 TO PROP-TABINDEX OF TEMP96
025170     SET TEMP97 TO N"MSMQ Message has not been sent yet"
025180     SET TEMP98 TO PROP-LABEL1 OF SELF
025190     SET PROP-TEXT OF TEMP98 TO TEMP97
025200*
025210*label2
025220*
025230     MOVE 161 TO TEMP99
025240     MOVE 30 TO TEMP100
025250     INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP99 BY VALUE TEMP100 RETURNING TEMP101
025260     SET TEMP102 TO PROP-LABEL2 OF SELF
025270     SET PROP-LOCATION OF TEMP102 TO TEMP101
025280     SET TEMP103 TO N"label2"
025290     SET TEMP104 TO PROP-LABEL2 OF SELF
025300     SET PROP-NAME OF TEMP104 TO TEMP103
025310     MOVE 270 TO TEMP105
025320     MOVE 15 TO TEMP106
025330     INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP105 BY VALUE TEMP106 RETURNING TEMP107
025340     SET TEMP108 TO PROP-LABEL2 OF SELF
025350     SET PROP-SIZE OF TEMP108 TO TEMP107
025360     MOVE 5 TO TEMP109
025370     SET TEMP110 TO PROP-LABEL2 OF SELF
025380     MOVE TEMP109 TO PROP-TABINDEX OF TEMP110
025390     SET TEMP111 TO N"What is the GUID used for the MSMQ Message?"
025400     SET TEMP112 TO PROP-LABEL2 OF SELF
025410     SET PROP-TEXT OF TEMP112 TO TEMP111
025420*
025430*Form1
025440*
025450     MOVE 5 TO TEMP113
025460     MOVE 13 TO TEMP114
025470     INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP113 BY VALUE TEMP114 RETURNING TEMP115
025480     SET PROP-AUTOSCALEBASESIZE OF SELF TO TEMP115
025490     MOVE 445 TO TEMP116
025500     MOVE 266 TO TEMP117
025510     INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP116 BY VALUE TEMP117 RETURNING TEMP118
025520     SET PROP-CLIENTSIZE OF SELF TO TEMP118
025530     MOVE 6 TO TEMP126
025540     INVOKE ARRAY-CONTROL "NEW" USING BY VALUE TEMP126 RETURNING TEMP127
025550     SET TEMP120 TO PROP-LABEL2 OF SELF
025560     INVOKE TEMP127 "Set" USING BY VALUE 0 BY VALUE TEMP120
025570     SET TEMP121 TO PROP-LABEL1 OF SELF
025580     INVOKE TEMP127 "Set" USING BY VALUE 1 BY VALUE TEMP121
025590     SET TEMP122 TO PROP-BUTTON1 OF SELF
025600     INVOKE TEMP127 "Set" USING BY VALUE 2 BY VALUE TEMP122
025610     SET TEMP123 TO PROP-DATAGRID1 OF SELF
025620     INVOKE TEMP127 "Set" USING BY VALUE 3 BY VALUE TEMP123
025630     SET TEMP124 TO PROP-PROGRESSBAR1 OF SELF
025640     INVOKE TEMP127 "Set" USING BY VALUE 4 BY VALUE TEMP124
025650     SET TEMP125 TO PROP-STATUSBAR1 OF SELF
025660     INVOKE TEMP127 "Set" USING BY VALUE 5 BY VALUE TEMP125
025670     SET TEMP119 TO PROP-CONTROLS OF SELF
025680     INVOKE TEMP119 "AddRange" USING BY VALUE TEMP127
025690     SET TEMP128 TO N"Form1"
025700     SET PROP-NAME OF SELF TO TEMP128
025710     SET TEMP129 TO N"MyMSMQExampleCOBOL"
025720     SET PROP-TEXT OF SELF TO TEMP129
025730     INVOKE DELEGATE-EVENTHANDLER "NEW" USING BY VALUE SELF BY VALUE N"Form1_Load" RETURNING TEMP130
025740     INVOKE SELF "add_Load" USING BY VALUE TEMP130
025750     SET TEMP131 TO PROP-DATAGRID1 OF SELF
025760     SET TEMP132 TO TEMP131 AS INTERFACE-ISUPPORTINITIALIZE
025770     INVOKE TEMP132 "EndInit"
025780     SET TEMP133 TO B"0"
025790     INVOKE SELF "ResumeLayout" USING BY VALUE TEMP133
025800 END METHOD INITIALIZECOMPONENT.
025810 
025820 METHOD-ID. Form1_Load PRIVATE.
025830 DATA DIVISION.
025840 LINKAGE SECTION.
025850 01 sender OBJECT REFERENCE CLASS-OBJECT.
025860 01 e OBJECT REFERENCE CLASS-EVENTARGS.
025870 PROCEDURE DIVISION USING BY VALUE sender e.
025880 END METHOD Form1_Load.
025890 
025900 METHOD-ID. button1_Click PRIVATE.
025910 DATA DIVISION.
025920 WORKING-STORAGE SECTION.
025930 01 MyNewConnectionString  PIC X(100).
025940 01 MyNewAppSettings  OBJECT REFERENCE CLASS-NAMEVALUECOLLECTION.
025950 01 MyGUIDString PIC X(50).
025960
025970 LINKAGE SECTION.
025980 01 sender OBJECT REFERENCE CLASS-OBJECT.
025990 01 e OBJECT REFERENCE CLASS-EVENTARGS.
026000 PROCEDURE DIVISION USING BY VALUE sender e.
026010     SET PROP-VISIBLE OF progressBar1 TO B"1"
026020     INVOKE progressBar1 "Increment" USING BY VALUE 10
026030     SET PROP-TEXT OF statusBar1 TO "Updating DataGrid" 
026040     
026050***************************************************************
026060* Create a new DataTable.
026070     INVOKE DataTable "NEW" USING BY VALUE "myCategories"
026080         RETURNING myDataTable.
026090
026100* Create 1st myDataColumn.
026110     INVOKE DataColumn "NEW" RETURNING myDataColumn.
026120     SET PROP-DataType OF myDataColumn TO
026130         SystemType::"GetType"("System.Int32").
026140     SET PROP-ColumnName OF myDataColumn TO "CategoryID".
026150     SET PROP-Unique OF myDataColumn TO B"1".
026160     INVOKE PROP-Columns OF myDataTable "Add" 
026170       USING BY VALUE myDataColumn.
026180     
026190* Create 2nd myDataColumn.
026200     INVOKE DataColumn "NEW" RETURNING myDataColumn.
026210     SET PROP-DataType OF myDataColumn TO
026220         SystemType::"GetType"("System.String").
026230     SET PROP-ColumnName OF myDataColumn TO "CategoryName".
026240     INVOKE PROP-Columns OF myDataTable "Add" 
026250       USING BY VALUE myDataColumn.
026260
026270     INVOKE progressBar1 "Increment" USING BY VALUE 10
026280
026290* Create 3rd myDataColumn.
026300     INVOKE DataColumn "NEW" RETURNING myDataColumn.
026310     SET PROP-DataType OF myDataColumn TO
026320         SystemType::"GetType"("System.String").
026330     SET PROP-ColumnName OF myDataColumn TO "Description".
026340     INVOKE PROP-Columns OF myDataTable "Add" 
026350       USING BY VALUE myDataColumn.
026360     
026370* Create 4th myDataColumn.
026380     INVOKE DataColumn "NEW" RETURNING myDataColumn.
026390     SET PROP-DataType OF myDataColumn TO
026400         SystemType::"GetType"("System.Byte[]").
026410     SET PROP-ColumnName OF myDataColumn TO "Picture".
026420     INVOKE PROP-Columns OF myDataTable "Add" 
026430       USING BY VALUE myDataColumn.
026440
026450     INVOKE progressBar1 "Increment" USING BY VALUE 10
026460
026470* Assign primary key column to CategoryID column.
026480     INVOKE DataColumnArray "NEW" USING BY VALUE 1
026490         RETURNING myPrimaryKeyColumns.
026500     INVOKE PROP-Columns OF myDataTable "get_Item" 
026510       USING BY VALUE "CategoryID"
026520       RETURNING myPrimaryKeyColumn.
026530     INVOKE myPrimaryKeyColumns "Set" 
026540       USING BY VALUE 0 myPrimaryKeyColumn.
026550     SET PROP-PrimaryKey OF myDataTable TO myPrimaryKeyColumns.
026560     
026570* Reference the DataSet.
026580     INVOKE DataSet "NEW" RETURNING myDataSet.
026590* Associate the Table with the Dataset.
026600     INVOKE PROP-Tables OF myDataSet "Add" 
026610       USING BY VALUE myDataTable.
026620
026630     INVOKE progressBar1 "Increment" USING BY VALUE 10
026640
026650*  Reference Data Provider Objects
026660		INVOKE SqlConnection "NEW"  RETURNING  mySqlConnection 
026670      INVOKE SqlDataAdapter "NEW" RETURNING  mySqlDataAdapter 
026680      INVOKE SqlCommand "NEW"     RETURNING  mySqlCommand
026690      
026700*  Prepare to Connect to SQL Server Database
026710*  using Connection String
026720*      SET PROP-ConnectionString OF mySqlConnection TO
026730*      "user id=sa;pwd=;Database=northwind;Server=(LOCAL)"
026740
026750     SET MyNewAppSettings TO PROP-APPSETTINGS 
026760         OF CLASS-CONFIGURATIONSETTINGS
026770     INVOKE MyNewAppSettings "get_Item" 
026780         USING BY VALUE "MyCOBOLConnectionString" 
026790         RETURNING MyNewConnectionString
026800     SET PROP-ConnectionString OF mySqlConnection 
026810         TO MyNewConnectionString
026822      
026830*  Associate the Command Object with the Connection Object
026840      SET PROP-Connection OF mySqlCommand TO mySqlConnection    
026850*  Associate the Command Object with intended SQL Statement
026860      SET PROP-CommandText OF mySqlCommand TO "Select * from Categories"
026870*  Associate the DataAdapter Object with the Command Object
026880      SET PROP-SelectCommand OF mySqlDataAdapter TO mySqlCommand
026890
026900     INVOKE progressBar1 "Increment" USING BY VALUE 10
026910     
026920*  Have the DataAdapter Object Execute the SQL Statement and
026930*  store the result set in a DataSet DataTable named myCategories
026940     INVOKE mySqlDataAdapter "Fill" 
026950       USING BY VALUE myDataSet, "myCategories"
026960       
026970***************************************************************
026980     SET PROP-VISIBLE OF dataGrid1 TO B"1"
026990     SET PROP-DataSource OF dataGrid1 TO myDataSet
027000     SET PROP-DATAMEMBER OF dataGrid1 TO "myCategories"
027010***************************************************************
027020*  Close the Database Connection
027030      INVOKE mySqlConnection "Close".
027040    
027050		INVOKE progressBar1 "Increment" USING BY VALUE 10
027060      
027070      SET mySqlConnection TO NULL.
027080      SET mySqlDataAdapter TO NULL.
027090      SET mySqlCommand TO NULL.
027100      SET myDataTable TO NULL.
027110      
027120***************************************************************
027130      INVOKE progressBar1 "Increment" USING BY VALUE 40
027140      SET PROP-VISIBLE OF dataGrid1 TO B"1"
027150	    SET PROP-TEXT OF statusBar1 TO "Completed Filling DataGrid"
027160****************************************************************
027170      SET myGUID TO CLASS-GUID::"NewGuid"()
027180      SET MyGUIDString TO myGUID::"ToString"()
027190      INVOKE messageQueue1 "Send" 
027200      USING BY VALUE myDataSet, MyGUIDString
027210      SET PROP-TEXT OF label1 TO "MSMQ Message has been Sent!"
027220      SET PROP-TEXT OF label2 TO MyGUIDString
027230  
027240 END METHOD button1_Click.
027250
027260 END OBJECT.
027270 END CLASS Form1.