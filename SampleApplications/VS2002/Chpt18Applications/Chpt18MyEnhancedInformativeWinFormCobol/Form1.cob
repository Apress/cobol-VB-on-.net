000010 IDENTIFICATION DIVISION.
000020 CLASS-ID. Form1 AS "MyEnhancedInformativeWinFormCobol.Form1"
000030     INHERITS CLASS-FORM.
000040 ENVIRONMENT DIVISION.
000050 CONFIGURATION SECTION.
000060 SPECIAL-NAMES.
000070     CUSTOM-ATTRIBUTE STA-THREAD CLASS CLASS-STA-THREAD
000080     .
000090 REPOSITORY.
000100     CLASS CLASS-BOOLEAN AS "System.Boolean"
000110     CLASS CLASS-CONTAINER AS "System.ComponentModel.Container"
000120     INTERFACE INTERFACE-ICONTAINER AS "System.ComponentModel.IContainer"
000130     INTERFACE INTERFACE-ISUPPORTINITIALIZE AS "System.ComponentModel.ISupportInitialize"
000140     CLASS DataColumn AS "System.Data.DataColumn"
000150     CLASS DataColumnArray AS "System.Data.DataColumn[]"
000160     CLASS DataRow AS "System.Data.DataRow"
000170     CLASS DataRowCollection AS "System.Data.DataRowCollection"
000180     CLASS DataSet AS "System.Data.DataSet"
000190     CLASS DataTable AS "System.Data.DataTable"
000200     CLASS SqlCommand AS "System.Data.SqlClient.SqlCommand"
000210     CLASS SqlConnection AS "System.Data.SqlClient.SqlConnection"
000220     CLASS SqlDataAdapter AS "System.Data.SqlClient.SqlDataAdapter"
000230     CLASS CLASS-POINT AS "System.Drawing.Point"
000240     CLASS CLASS-SIZE AS "System.Drawing.Size"
000250     CLASS CLASS-SYSTEMCOLORS AS "System.Drawing.SystemColors"
000260     CLASS CLASS-EVENTARGS AS "System.EventArgs"
000270     DELEGATE DELEGATE-EVENTHANDLER AS "System.EventHandler"
000280     CLASS CLASS-OBJECT AS "System.Object"
000290     CLASS CLASS-STA-THREAD AS "System.STAThreadAttribute"
000300     CLASS CLASS-STRING AS "System.String"
000310     CLASS SystemType AS "System.Type"
000320     CLASS CLASS-APPLICATION AS "System.Windows.Forms.Application"
000330     CLASS CLASS-BUTTON AS "System.Windows.Forms.Button"
000340     CLASS ARRAY-CONTROL AS "System.Windows.Forms.Control[]"
000350     CLASS CLASS-CONTROLCOLLECTION AS "System.Windows.Forms.Control+ControlCollection"
000360     CLASS CLASS-DATAGRID AS "System.Windows.Forms.DataGrid"
000370     CLASS CLASS-FORM AS "System.Windows.Forms.Form"
000380     CLASS CLASS-PROGRESSBAR AS "System.Windows.Forms.ProgressBar"
000390     CLASS CLASS-STATUSBAR AS "System.Windows.Forms.StatusBar"
000400     CLASS CLASS-TOOLBAR AS "System.Windows.Forms.ToolBar"
000410     CLASS CLASS-TOOLTIP AS "System.Windows.Forms.ToolTip"
000411       
000413     CLASS CLASS-NAMEVALUECOLLECTION AS 
000414           "System.Collections.Specialized.NameValueCollection"
000416     CLASS CLASS-CONFIGURATIONSETTINGS AS 
000417           "System.Configuration.ConfigurationSettings"
000418     PROPERTY PROP-APPSETTINGS AS "AppSettings"
000419     
000422     PROPERTY PROP-ALTERNATINGBACKCOLOR AS "AlternatingBackColor"
000430     PROPERTY PROP-AUTOSCALEBASESIZE AS "AutoScaleBaseSize"
000440     PROPERTY PROP-BUTTON1 AS "button1"
000450     PROPERTY PROP-CAPTIONTEXT AS "CaptionText"
000460     PROPERTY PROP-CLIENTSIZE AS "ClientSize"
000470     PROPERTY PROP-ColumnName AS "ColumnName"
000480     PROPERTY PROP-Columns AS "Columns"
000490     PROPERTY PROP-CommandText AS "CommandText"
000500     PROPERTY PROP-COMPONENTS AS "components"
000510     PROPERTY PROP-Connection AS "Connection"
000520     PROPERTY PROP-ConnectionString AS "ConnectionString"
000530     PROPERTY PROP-CONTROLS AS "Controls"
000540     PROPERTY PROP-CONTROLTEXT AS "ControlText"
000550     PROPERTY PROP-DATAGRID1 AS "dataGrid1"
000560     PROPERTY PROP-DATAMEMBER AS "DataMember"
000570     PROPERTY PROP-DataSource AS "DataSource"
000580     PROPERTY PROP-DataType AS "DataType"
000590     PROPERTY PROP-DROPDOWNARROWS AS "DropDownArrows"
000600     PROPERTY PROP-EMPTY AS "Empty"
000610     PROPERTY PROP-HEADERFORECOLOR AS "HeaderForeColor"
000620     PROPERTY PROP-LOCATION AS "Location"
000630     PROPERTY PROP-NAME AS "Name"
000640     PROPERTY PROP-PrimaryKey AS "PrimaryKey"
000650     PROPERTY PROP-PROGRESSBAR1 AS "progressBar1"
000660     PROPERTY PROP-SelectCommand AS "SelectCommand"
000670     PROPERTY PROP-SHOWTOOLTIPS AS "ShowToolTips"
000680     PROPERTY PROP-SIZE AS "Size"
000690     PROPERTY PROP-STATUSBAR1 AS "statusBar1"
000700     PROPERTY PROP-TABINDEX AS "TabIndex"
000710     PROPERTY PROP-Tables AS "Tables"
000720     PROPERTY PROP-TEXT AS "Text"
000730     PROPERTY PROP-TOOLBAR1 AS "toolBar1"
000740     PROPERTY PROP-TOOLTIP1 AS "toolTip1"
000750     PROPERTY PROP-Unique AS "Unique"
000760     PROPERTY PROP-VISIBLE AS "Visible"
000770     PROPERTY PROP-WINDOW AS "Window"
000780     .
000790
000800 STATIC.
000810 DATA DIVISION.
000820 WORKING-STORAGE SECTION.
000830 PROCEDURE DIVISION.
000840
000850 METHOD-ID. MAIN AS "Main" CUSTOM-ATTRIBUTE IS STA-THREAD.
000860 DATA DIVISION.
000870 WORKING-STORAGE SECTION.
000880 01 TEMP-1 OBJECT REFERENCE Form1.
000890 PROCEDURE DIVISION.
000900     INVOKE Form1 "NEW" RETURNING TEMP-1.
000910     INVOKE CLASS-APPLICATION "Run" USING BY VALUE TEMP-1.
000920 END METHOD MAIN.
000930
000940 END STATIC.
000950
000960 OBJECT
000970     .
000980 DATA DIVISION.
000990 WORKING-STORAGE SECTION.
001000 01 mySqlConnection OBJECT REFERENCE SqlConnection.
001010 01 mySqlDataAdapter OBJECT REFERENCE SqlDataAdapter.
001020 01 mySqlCommand OBJECT REFERENCE SqlCommand.
001030 01 myDataSet OBJECT REFERENCE DataSet.
001040 01 myDataTable OBJECT REFERENCE DataTable.
001050 01 myDataRow OBJECT REFERENCE DataRow.
001060 01 myDataColumn OBJECT REFERENCE DataColumn.
001070 01 myPrimaryKeyColumn OBJECT REFERENCE DataColumn.
001080 01 myPrimaryKeyColumns OBJECT REFERENCE DataColumnArray.
001090 01 myDataRowCollection OBJECT REFERENCE DataRowCollection.
001100 01 myCLASS-STRING OBJECT REFERENCE CLASS-STRING.
001110 01 myDisplayString PIC X(30).
001120 01 myInt PIC S9(9) COMP-5.
001130 01 myOtherInt PIC S9(9) COMP-5.
001140 01 NOT-END-OF-READ PIC 1 USAGE BIT.
001150 01 statusBar1 OBJECT REFERENCE CLASS-STATUSBAR.
001160 01 progressBar1 OBJECT REFERENCE CLASS-PROGRESSBAR.
001170 01 dataGrid1 OBJECT REFERENCE CLASS-DATAGRID.
001180 01 button1 OBJECT REFERENCE CLASS-BUTTON.
001190 01 toolTip1 OBJECT REFERENCE CLASS-TOOLTIP.
001200 01 components OBJECT REFERENCE INTERFACE-ICONTAINER.
001210 PROCEDURE DIVISION.
001220
001230 METHOD-ID. NEW.
001240 PROCEDURE DIVISION.
001250     INVOKE SELF "InitializeComponent".
001260 END METHOD NEW.
001270
001280 METHOD-ID. DISPOSE AS "Dispose" OVERRIDE PROTECTED.
001290 DATA DIVISION.
001300 WORKING-STORAGE SECTION.
001310 01 TEMP-1 PIC 1.
001320 LINKAGE SECTION.
001330 01 disposing OBJECT REFERENCE CLASS-BOOLEAN.
001340 PROCEDURE DIVISION USING BY VALUE disposing.
001350     SET TEMP-1 TO disposing.
001360     IF TEMP-1 = B"1" THEN
001370       IF components NOT = NULL THEN
001380         INVOKE components "Dispose"
001390       END-IF
001400     END-IF.
001410     INVOKE SUPER "Dispose" USING BY VALUE disposing.
001420 END METHOD DISPOSE.
001430
001440* Required method for Designer support - do not modify
001450* the contents of this method with the code editor.
001460 METHOD-ID. INITIALIZECOMPONENT AS "InitializeComponent" PRIVATE.
001470 DATA DIVISION.
001480 WORKING-STORAGE SECTION.
001490 01 TEMP1 OBJECT REFERENCE CLASS-CONTAINER.
001500 01 TEMP2 OBJECT REFERENCE CLASS-STATUSBAR.
001510 01 TEMP3 OBJECT REFERENCE CLASS-PROGRESSBAR.
001520 01 TEMP4 OBJECT REFERENCE CLASS-DATAGRID.
001530 01 TEMP5 OBJECT REFERENCE CLASS-BUTTON.
001540 01 TEMP6 OBJECT REFERENCE INTERFACE-ICONTAINER.
001550 01 TEMP7 OBJECT REFERENCE CLASS-TOOLTIP.
001560 01 TEMP8 OBJECT REFERENCE CLASS-DATAGRID.
001570 01 TEMP9 OBJECT REFERENCE INTERFACE-ISUPPORTINITIALIZE.
001580 01 TEMP10 PIC S9(9) COMP-5.
001590 01 TEMP11 PIC S9(9) COMP-5.
001600 01 TEMP12 OBJECT REFERENCE CLASS-POINT.
001610 01 TEMP13 OBJECT REFERENCE CLASS-STATUSBAR.
001620 01 TEMP14 OBJECT REFERENCE CLASS-STRING.
001630 01 TEMP15 OBJECT REFERENCE CLASS-STATUSBAR.
001640 01 TEMP16 PIC S9(9) COMP-5.
001650 01 TEMP17 PIC S9(9) COMP-5.
001660 01 TEMP18 OBJECT REFERENCE CLASS-SIZE.
001670 01 TEMP19 OBJECT REFERENCE CLASS-STATUSBAR.
001680 01 TEMP20 PIC S9(9) COMP-5.
001690 01 TEMP21 OBJECT REFERENCE CLASS-STATUSBAR.
001700 01 TEMP22 OBJECT REFERENCE CLASS-STRING.
001710 01 TEMP23 OBJECT REFERENCE CLASS-STATUSBAR.
001720 01 TEMP24 PIC S9(9) COMP-5.
001730 01 TEMP25 PIC S9(9) COMP-5.
001740 01 TEMP26 OBJECT REFERENCE CLASS-POINT.
001750 01 TEMP27 OBJECT REFERENCE CLASS-PROGRESSBAR.
001760 01 TEMP28 OBJECT REFERENCE CLASS-STRING.
001770 01 TEMP29 OBJECT REFERENCE CLASS-PROGRESSBAR.
001780 01 TEMP30 PIC S9(9) COMP-5.
001790 01 TEMP31 PIC S9(9) COMP-5.
001800 01 TEMP32 OBJECT REFERENCE CLASS-SIZE.
001810 01 TEMP33 OBJECT REFERENCE CLASS-PROGRESSBAR.
001820 01 TEMP34 PIC S9(9) COMP-5.
001830 01 TEMP35 OBJECT REFERENCE CLASS-PROGRESSBAR.
001840 01 TEMP36 OBJECT REFERENCE CLASS-BOOLEAN.
001850 01 TEMP37 OBJECT REFERENCE CLASS-PROGRESSBAR.
001860 01 TEMP38 OBJECT REFERENCE CLASS-STRING.
001870 01 TEMP39 OBJECT REFERENCE CLASS-DATAGRID.
001880 01 TEMP40 OBJECT REFERENCE CLASS-STRING.
001890 01 TEMP41 OBJECT REFERENCE CLASS-DATAGRID.
001900 01 TEMP42 OBJECT REFERENCE CLASS-DATAGRID.
001910 01 TEMP43 PIC S9(9) COMP-5.
001920 01 TEMP44 PIC S9(9) COMP-5.
001930 01 TEMP45 OBJECT REFERENCE CLASS-POINT.
001940 01 TEMP46 OBJECT REFERENCE CLASS-DATAGRID.
001950 01 TEMP47 OBJECT REFERENCE CLASS-STRING.
001960 01 TEMP48 OBJECT REFERENCE CLASS-DATAGRID.
001970 01 TEMP49 PIC S9(9) COMP-5.
001980 01 TEMP50 PIC S9(9) COMP-5.
001990 01 TEMP51 OBJECT REFERENCE CLASS-SIZE.
002000 01 TEMP52 OBJECT REFERENCE CLASS-DATAGRID.
002010 01 TEMP53 PIC S9(9) COMP-5.
002020 01 TEMP54 OBJECT REFERENCE CLASS-DATAGRID.
002030 01 TEMP55 OBJECT REFERENCE CLASS-TOOLTIP.
002040 01 TEMP56 OBJECT REFERENCE CLASS-DATAGRID.
002050 01 TEMP57 OBJECT REFERENCE CLASS-STRING.
002060 01 TEMP58 OBJECT REFERENCE CLASS-BOOLEAN.
002070 01 TEMP59 OBJECT REFERENCE CLASS-DATAGRID.
002080 01 TEMP60 PIC S9(9) COMP-5.
002090 01 TEMP61 PIC S9(9) COMP-5.
002100 01 TEMP62 OBJECT REFERENCE CLASS-POINT.
002110 01 TEMP63 OBJECT REFERENCE CLASS-BUTTON.
002120 01 TEMP64 OBJECT REFERENCE CLASS-STRING.
002130 01 TEMP65 OBJECT REFERENCE CLASS-BUTTON.
002140 01 TEMP66 PIC S9(9) COMP-5.
002150 01 TEMP67 PIC S9(9) COMP-5.
002160 01 TEMP68 OBJECT REFERENCE CLASS-SIZE.
002170 01 TEMP69 OBJECT REFERENCE CLASS-BUTTON.
002180 01 TEMP70 PIC S9(9) COMP-5.
002190 01 TEMP71 OBJECT REFERENCE CLASS-BUTTON.
002200 01 TEMP72 OBJECT REFERENCE CLASS-STRING.
002210 01 TEMP73 OBJECT REFERENCE CLASS-BUTTON.
002220 01 TEMP74 OBJECT REFERENCE CLASS-TOOLTIP.
002230 01 TEMP75 OBJECT REFERENCE CLASS-BUTTON.
002240 01 TEMP76 OBJECT REFERENCE CLASS-STRING.
002250 01 TEMP77 OBJECT REFERENCE CLASS-BUTTON.
002260 01 TEMP78 OBJECT REFERENCE DELEGATE-EVENTHANDLER.
002270 01 TEMP79 PIC S9(9) COMP-5.
002280 01 TEMP80 PIC S9(9) COMP-5.
002290 01 TEMP81 OBJECT REFERENCE CLASS-SIZE.
002300 01 TEMP82 PIC S9(9) COMP-5.
002310 01 TEMP83 PIC S9(9) COMP-5.
002320 01 TEMP84 OBJECT REFERENCE CLASS-SIZE.
002330 01 TEMP85 OBJECT REFERENCE CLASS-CONTROLCOLLECTION.
002340 01 TEMP86 OBJECT REFERENCE CLASS-BUTTON.
002350 01 TEMP87 OBJECT REFERENCE CLASS-DATAGRID.
002360 01 TEMP88 OBJECT REFERENCE CLASS-PROGRESSBAR.
002370 01 TEMP89 OBJECT REFERENCE CLASS-STATUSBAR.
002380 01 TEMP90 PIC S9(9) COMP-5.
002390 01 TEMP91 OBJECT REFERENCE ARRAY-CONTROL.
002400 01 TEMP92 OBJECT REFERENCE CLASS-STRING.
002410 01 TEMP93 OBJECT REFERENCE CLASS-STRING.
002420 01 TEMP94 OBJECT REFERENCE DELEGATE-EVENTHANDLER.
002430 01 TEMP95 OBJECT REFERENCE CLASS-DATAGRID.
002440 01 TEMP96 OBJECT REFERENCE INTERFACE-ISUPPORTINITIALIZE.
002450 01 TEMP97 OBJECT REFERENCE CLASS-BOOLEAN.
002460 PROCEDURE DIVISION.
002470*>>IMP BEGIN-EMBEDDED-CODEDOM
002480*<embedded-codedom>
002490*<object type="System.CodeDom.CodeAssignStatement">
002500*<prop name="Left">
002510*<object type="System.CodeDom.CodeFieldReferenceExpression">
002520*<prop name="TargetObject">
002530*<object type="System.CodeDom.CodeThisReferenceExpression">
002540*</object>
002550*</prop>
002560*<prop name="FieldName">
002570*<string value="components" />
002580*</prop>
002590*</object>
002600*</prop>
002610*<prop name="Right">
002620*<object type="System.CodeDom.CodeObjectCreateExpression">
002630*<prop name="CreateType">
002640*<object type="System.CodeDom.CodeTypeReference">
002650*<prop name="BaseType">
002660*<string value="System.ComponentModel.Container" />
002670*</prop>
002680*</object>
002690*</prop>
002700*</object>
002710*</prop>
002720*</object>
002730*<object type="System.CodeDom.CodeAssignStatement">
002740*<prop name="Left">
002750*<object type="System.CodeDom.CodeFieldReferenceExpression">
002760*<prop name="TargetObject">
002770*<object type="System.CodeDom.CodeThisReferenceExpression">
002780*</object>
002790*</prop>
002800*<prop name="FieldName">
002810*<string value="statusBar1" />
002820*</prop>
002830*</object>
002840*</prop>
002850*<prop name="Right">
002860*<object type="System.CodeDom.CodeObjectCreateExpression">
002870*<prop name="CreateType">
002880*<object type="System.CodeDom.CodeTypeReference">
002890*<prop name="BaseType">
002900*<string value="System.Windows.Forms.StatusBar" />
002910*</prop>
002920*</object>
002930*</prop>
002940*</object>
002950*</prop>
002960*</object>
002970*<object type="System.CodeDom.CodeAssignStatement">
002980*<prop name="Left">
002990*<object type="System.CodeDom.CodeFieldReferenceExpression">
003000*<prop name="TargetObject">
003010*<object type="System.CodeDom.CodeThisReferenceExpression">
003020*</object>
003030*</prop>
003040*<prop name="FieldName">
003050*<string value="progressBar1" />
003060*</prop>
003070*</object>
003080*</prop>
003090*<prop name="Right">
003100*<object type="System.CodeDom.CodeObjectCreateExpression">
003110*<prop name="CreateType">
003120*<object type="System.CodeDom.CodeTypeReference">
003130*<prop name="BaseType">
003140*<string value="System.Windows.Forms.ProgressBar" />
003150*</prop>
003160*</object>
003170*</prop>
003180*</object>
003190*</prop>
003200*</object>
003210*<object type="System.CodeDom.CodeAssignStatement">
003220*<prop name="Left">
003230*<object type="System.CodeDom.CodeFieldReferenceExpression">
003240*<prop name="TargetObject">
003250*<object type="System.CodeDom.CodeThisReferenceExpression">
003260*</object>
003270*</prop>
003280*<prop name="FieldName">
003290*<string value="dataGrid1" />
003300*</prop>
003310*</object>
003320*</prop>
003330*<prop name="Right">
003340*<object type="System.CodeDom.CodeObjectCreateExpression">
003350*<prop name="CreateType">
003360*<object type="System.CodeDom.CodeTypeReference">
003370*<prop name="BaseType">
003380*<string value="System.Windows.Forms.DataGrid" />
003390*</prop>
003400*</object>
003410*</prop>
003420*</object>
003430*</prop>
003440*</object>
003450*<object type="System.CodeDom.CodeAssignStatement">
003460*<prop name="Left">
003470*<object type="System.CodeDom.CodeFieldReferenceExpression">
003480*<prop name="TargetObject">
003490*<object type="System.CodeDom.CodeThisReferenceExpression">
003500*</object>
003510*</prop>
003520*<prop name="FieldName">
003530*<string value="button1" />
003540*</prop>
003550*</object>
003560*</prop>
003570*<prop name="Right">
003580*<object type="System.CodeDom.CodeObjectCreateExpression">
003590*<prop name="CreateType">
003600*<object type="System.CodeDom.CodeTypeReference">
003610*<prop name="BaseType">
003620*<string value="System.Windows.Forms.Button" />
003630*</prop>
003640*</object>
003650*</prop>
003660*</object>
003670*</prop>
003680*</object>
003690*<object type="System.CodeDom.CodeAssignStatement">
003700*<prop name="Left">
003710*<object type="System.CodeDom.CodeFieldReferenceExpression">
003720*<prop name="TargetObject">
003730*<object type="System.CodeDom.CodeThisReferenceExpression">
003740*</object>
003750*</prop>
003760*<prop name="FieldName">
003770*<string value="toolTip1" />
003780*</prop>
003790*</object>
003800*</prop>
003810*<prop name="Right">
003820*<object type="System.CodeDom.CodeObjectCreateExpression">
003830*<prop name="CreateType">
003840*<object type="System.CodeDom.CodeTypeReference">
003850*<prop name="BaseType">
003860*<string value="System.Windows.Forms.ToolTip" />
003870*</prop>
003880*</object>
003890*</prop>
003900*<prop name="Parameters" method="add">
003910*<object type="System.CodeDom.CodeFieldReferenceExpression">
003920*<prop name="TargetObject">
003930*<object type="System.CodeDom.CodeThisReferenceExpression">
003940*</object>
003950*</prop>
003960*<prop name="FieldName">
003970*<string value="components" />
003980*</prop>
003990*</object>
004000*</prop>
004010*</object>
004020*</prop>
004030*</object>
004040*<object type="System.CodeDom.CodeExpressionStatement">
004050*<prop name="Expression">
004060*<object type="System.CodeDom.CodeMethodInvokeExpression">
004070*<prop name="Method">
004080*<object type="System.CodeDom.CodeMethodReferenceExpression">
004090*<prop name="TargetObject">
004100*<object type="System.CodeDom.CodeCastExpression">
004110*<prop name="TargetType">
004120*<object type="System.CodeDom.CodeTypeReference">
004130*<prop name="BaseType">
004140*<string value="System.ComponentModel.ISupportInitialize" />
004150*</prop>
004160*</object>
004170*</prop>
004180*<prop name="Expression">
004190*<object type="System.CodeDom.CodeFieldReferenceExpression">
004200*<prop name="TargetObject">
004210*<object type="System.CodeDom.CodeThisReferenceExpression">
004220*</object>
004230*</prop>
004240*<prop name="FieldName">
004250*<string value="dataGrid1" />
004260*</prop>
004270*</object>
004280*</prop>
004290*</object>
004300*</prop>
004310*<prop name="MethodName">
004320*<string value="BeginInit" />
004330*</prop>
004340*</object>
004350*</prop>
004360*</object>
004370*</prop>
004380*</object>
004390*<object type="System.CodeDom.CodeExpressionStatement">
004400*<prop name="Expression">
004410*<object type="System.CodeDom.CodeMethodInvokeExpression">
004420*<prop name="Method">
004430*<object type="System.CodeDom.CodeMethodReferenceExpression">
004440*<prop name="TargetObject">
004450*<object type="System.CodeDom.CodeThisReferenceExpression">
004460*</object>
004470*</prop>
004480*<prop name="MethodName">
004490*<string value="SuspendLayout" />
004500*</prop>
004510*</object>
004520*</prop>
004530*</object>
004540*</prop>
004550*</object>
004560*<object type="System.CodeDom.CodeCommentStatement">
004570*<prop name="Comment">
004580*<object type="System.CodeDom.CodeComment">
004590*<prop name="Text">
004600*<string value="" />
004610*</prop>
004620*</object>
004630*</prop>
004640*</object>
004650*<object type="System.CodeDom.CodeCommentStatement">
004660*<prop name="Comment">
004670*<object type="System.CodeDom.CodeComment">
004680*<prop name="Text">
004690*<string value="statusBar1" />
004700*</prop>
004710*</object>
004720*</prop>
004730*</object>
004740*<object type="System.CodeDom.CodeCommentStatement">
004750*<prop name="Comment">
004760*<object type="System.CodeDom.CodeComment">
004770*<prop name="Text">
004780*<string value="" />
004790*</prop>
004800*</object>
004810*</prop>
004820*</object>
004830*<object type="System.CodeDom.CodeAssignStatement">
004840*<prop name="Left">
004850*<object type="System.CodeDom.CodePropertyReferenceExpression">
004860*<prop name="TargetObject">
004870*<object type="System.CodeDom.CodeFieldReferenceExpression">
004880*<prop name="TargetObject">
004890*<object type="System.CodeDom.CodeThisReferenceExpression">
004900*</object>
004910*</prop>
004920*<prop name="FieldName">
004930*<string value="statusBar1" />
004940*</prop>
004950*</object>
004960*</prop>
004970*<prop name="PropertyName">
004980*<string value="Location" />
004990*</prop>
005000*</object>
005010*</prop>
005020*<prop name="Right">
005030*<object type="System.CodeDom.CodeObjectCreateExpression">
005040*<prop name="CreateType">
005050*<object type="System.CodeDom.CodeTypeReference">
005060*<prop name="BaseType">
005070*<string value="System.Drawing.Point" />
005080*</prop>
005090*</object>
005100*</prop>
005110*<prop name="Parameters" method="add">
005120*<object type="System.CodeDom.CodePrimitiveExpression">
005130*<prop name="Value">
005140*<int32 value="0" />
005150*</prop>
005160*</object>
005170*<object type="System.CodeDom.CodePrimitiveExpression">
005180*<prop name="Value">
005190*<int32 value="248" />
005200*</prop>
005210*</object>
005220*</prop>
005230*</object>
005240*</prop>
005250*</object>
005260*<object type="System.CodeDom.CodeAssignStatement">
005270*<prop name="Left">
005280*<object type="System.CodeDom.CodePropertyReferenceExpression">
005290*<prop name="TargetObject">
005300*<object type="System.CodeDom.CodeFieldReferenceExpression">
005310*<prop name="TargetObject">
005320*<object type="System.CodeDom.CodeThisReferenceExpression">
005330*</object>
005340*</prop>
005350*<prop name="FieldName">
005360*<string value="statusBar1" />
005370*</prop>
005380*</object>
005390*</prop>
005400*<prop name="PropertyName">
005410*<string value="Name" />
005420*</prop>
005430*</object>
005440*</prop>
005450*<prop name="Right">
005460*<object type="System.CodeDom.CodePrimitiveExpression">
005470*<prop name="Value">
005480*<string value="statusBar1" />
005490*</prop>
005500*</object>
005510*</prop>
005520*</object>
005530*<object type="System.CodeDom.CodeAssignStatement">
005540*<prop name="Left">
005550*<object type="System.CodeDom.CodePropertyReferenceExpression">
005560*<prop name="TargetObject">
005570*<object type="System.CodeDom.CodeFieldReferenceExpression">
005580*<prop name="TargetObject">
005590*<object type="System.CodeDom.CodeThisReferenceExpression">
005600*</object>
005610*</prop>
005620*<prop name="FieldName">
005630*<string value="statusBar1" />
005640*</prop>
005650*</object>
005660*</prop>
005670*<prop name="PropertyName">
005680*<string value="Size" />
005690*</prop>
005700*</object>
005710*</prop>
005720*<prop name="Right">
005730*<object type="System.CodeDom.CodeObjectCreateExpression">
005740*<prop name="CreateType">
005750*<object type="System.CodeDom.CodeTypeReference">
005760*<prop name="BaseType">
005770*<string value="System.Drawing.Size" />
005780*</prop>
005790*</object>
005800*</prop>
005810*<prop name="Parameters" method="add">
005820*<object type="System.CodeDom.CodePrimitiveExpression">
005830*<prop name="Value">
005840*<int32 value="408" />
005850*</prop>
005860*</object>
005870*<object type="System.CodeDom.CodePrimitiveExpression">
005880*<prop name="Value">
005890*<int32 value="22" />
005900*</prop>
005910*</object>
005920*</prop>
005930*</object>
005940*</prop>
005950*</object>
005960*<object type="System.CodeDom.CodeAssignStatement">
005970*<prop name="Left">
005980*<object type="System.CodeDom.CodePropertyReferenceExpression">
005990*<prop name="TargetObject">
006000*<object type="System.CodeDom.CodeFieldReferenceExpression">
006010*<prop name="TargetObject">
006020*<object type="System.CodeDom.CodeThisReferenceExpression">
006030*</object>
006040*</prop>
006050*<prop name="FieldName">
006060*<string value="statusBar1" />
006070*</prop>
006080*</object>
006090*</prop>
006100*<prop name="PropertyName">
006110*<string value="TabIndex" />
006120*</prop>
006130*</object>
006140*</prop>
006150*<prop name="Right">
006160*<object type="System.CodeDom.CodePrimitiveExpression">
006170*<prop name="Value">
006180*<int32 value="0" />
006190*</prop>
006200*</object>
006210*</prop>
006220*</object>
006230*<object type="System.CodeDom.CodeAssignStatement">
006240*<prop name="Left">
006250*<object type="System.CodeDom.CodePropertyReferenceExpression">
006260*<prop name="TargetObject">
006270*<object type="System.CodeDom.CodeFieldReferenceExpression">
006280*<prop name="TargetObject">
006290*<object type="System.CodeDom.CodeThisReferenceExpression">
006300*</object>
006310*</prop>
006320*<prop name="FieldName">
006330*<string value="statusBar1" />
006340*</prop>
006350*</object>
006360*</prop>
006370*<prop name="PropertyName">
006380*<string value="Text" />
006390*</prop>
006400*</object>
006410*</prop>
006420*<prop name="Right">
006430*<object type="System.CodeDom.CodePrimitiveExpression">
006440*<prop name="Value">
006450*<string value="Please Click the Button to Load the DataGrid" />
006460*</prop>
006470*</object>
006480*</prop>
006490*</object>
006500*<object type="System.CodeDom.CodeCommentStatement">
006510*<prop name="Comment">
006520*<object type="System.CodeDom.CodeComment">
006530*<prop name="Text">
006540*<string value="" />
006550*</prop>
006560*</object>
006570*</prop>
006580*</object>
006590*<object type="System.CodeDom.CodeCommentStatement">
006600*<prop name="Comment">
006610*<object type="System.CodeDom.CodeComment">
006620*<prop name="Text">
006630*<string value="progressBar1" />
006640*</prop>
006650*</object>
006660*</prop>
006670*</object>
006680*<object type="System.CodeDom.CodeCommentStatement">
006690*<prop name="Comment">
006700*<object type="System.CodeDom.CodeComment">
006710*<prop name="Text">
006720*<string value="" />
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
006870*<string value="progressBar1" />
006880*</prop>
006890*</object>
006900*</prop>
006910*<prop name="PropertyName">
006920*<string value="Location" />
006930*</prop>
006940*</object>
006950*</prop>
006960*<prop name="Right">
006970*<object type="System.CodeDom.CodeObjectCreateExpression">
006980*<prop name="CreateType">
006990*<object type="System.CodeDom.CodeTypeReference">
007000*<prop name="BaseType">
007010*<string value="System.Drawing.Point" />
007020*</prop>
007030*</object>
007040*</prop>
007050*<prop name="Parameters" method="add">
007060*<object type="System.CodeDom.CodePrimitiveExpression">
007070*<prop name="Value">
007080*<int32 value="8" />
007090*</prop>
007100*</object>
007110*<object type="System.CodeDom.CodePrimitiveExpression">
007120*<prop name="Value">
007130*<int32 value="216" />
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
007300*<string value="progressBar1" />
007310*</prop>
007320*</object>
007330*</prop>
007340*<prop name="PropertyName">
007350*<string value="Name" />
007360*</prop>
007370*</object>
007380*</prop>
007390*<prop name="Right">
007400*<object type="System.CodeDom.CodePrimitiveExpression">
007410*<prop name="Value">
007420*<string value="progressBar1" />
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
007570*<string value="progressBar1" />
007580*</prop>
007590*</object>
007600*</prop>
007610*<prop name="PropertyName">
007620*<string value="Size" />
007630*</prop>
007640*</object>
007650*</prop>
007660*<prop name="Right">
007670*<object type="System.CodeDom.CodeObjectCreateExpression">
007680*<prop name="CreateType">
007690*<object type="System.CodeDom.CodeTypeReference">
007700*<prop name="BaseType">
007710*<string value="System.Drawing.Size" />
007720*</prop>
007730*</object>
007740*</prop>
007750*<prop name="Parameters" method="add">
007760*<object type="System.CodeDom.CodePrimitiveExpression">
007770*<prop name="Value">
007780*<int32 value="320" />
007790*</prop>
007800*</object>
007810*<object type="System.CodeDom.CodePrimitiveExpression">
007820*<prop name="Value">
007830*<int32 value="23" />
007840*</prop>
007850*</object>
007860*</prop>
007870*</object>
007880*</prop>
007890*</object>
007900*<object type="System.CodeDom.CodeAssignStatement">
007910*<prop name="Left">
007920*<object type="System.CodeDom.CodePropertyReferenceExpression">
007930*<prop name="TargetObject">
007940*<object type="System.CodeDom.CodeFieldReferenceExpression">
007950*<prop name="TargetObject">
007960*<object type="System.CodeDom.CodeThisReferenceExpression">
007970*</object>
007980*</prop>
007990*<prop name="FieldName">
008000*<string value="progressBar1" />
008010*</prop>
008020*</object>
008030*</prop>
008040*<prop name="PropertyName">
008050*<string value="TabIndex" />
008060*</prop>
008070*</object>
008080*</prop>
008090*<prop name="Right">
008100*<object type="System.CodeDom.CodePrimitiveExpression">
008110*<prop name="Value">
008120*<int32 value="1" />
008130*</prop>
008140*</object>
008150*</prop>
008160*</object>
008170*<object type="System.CodeDom.CodeAssignStatement">
008180*<prop name="Left">
008190*<object type="System.CodeDom.CodePropertyReferenceExpression">
008200*<prop name="TargetObject">
008210*<object type="System.CodeDom.CodeFieldReferenceExpression">
008220*<prop name="TargetObject">
008230*<object type="System.CodeDom.CodeThisReferenceExpression">
008240*</object>
008250*</prop>
008260*<prop name="FieldName">
008270*<string value="progressBar1" />
008280*</prop>
008290*</object>
008300*</prop>
008310*<prop name="PropertyName">
008320*<string value="Visible" />
008330*</prop>
008340*</object>
008350*</prop>
008360*<prop name="Right">
008370*<object type="System.CodeDom.CodePrimitiveExpression">
008380*<prop name="Value">
008390*<bool value="False" />
008400*</prop>
008410*</object>
008420*</prop>
008430*</object>
008440*<object type="System.CodeDom.CodeCommentStatement">
008450*<prop name="Comment">
008460*<object type="System.CodeDom.CodeComment">
008470*<prop name="Text">
008480*<string value="" />
008490*</prop>
008500*</object>
008510*</prop>
008520*</object>
008530*<object type="System.CodeDom.CodeCommentStatement">
008540*<prop name="Comment">
008550*<object type="System.CodeDom.CodeComment">
008560*<prop name="Text">
008570*<string value="dataGrid1" />
008580*</prop>
008590*</object>
008600*</prop>
008610*</object>
008620*<object type="System.CodeDom.CodeCommentStatement">
008630*<prop name="Comment">
008640*<object type="System.CodeDom.CodeComment">
008650*<prop name="Text">
008660*<string value="" />
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
008810*<string value="dataGrid1" />
008820*</prop>
008830*</object>
008840*</prop>
008850*<prop name="PropertyName">
008860*<string value="CaptionText" />
008870*</prop>
008880*</object>
008890*</prop>
008900*<prop name="Right">
008910*<object type="System.CodeDom.CodePrimitiveExpression">
008920*<prop name="Value">
008930*<string value="Categories Table" />
008940*</prop>
008950*</object>
008960*</prop>
008970*</object>
008980*<object type="System.CodeDom.CodeAssignStatement">
008990*<prop name="Left">
009000*<object type="System.CodeDom.CodePropertyReferenceExpression">
009010*<prop name="TargetObject">
009020*<object type="System.CodeDom.CodeFieldReferenceExpression">
009030*<prop name="TargetObject">
009040*<object type="System.CodeDom.CodeThisReferenceExpression">
009050*</object>
009060*</prop>
009070*<prop name="FieldName">
009080*<string value="dataGrid1" />
009090*</prop>
009100*</object>
009110*</prop>
009120*<prop name="PropertyName">
009130*<string value="DataMember" />
009140*</prop>
009150*</object>
009160*</prop>
009170*<prop name="Right">
009180*<object type="System.CodeDom.CodePrimitiveExpression">
009190*<prop name="Value">
009200*<string value="" />
009210*</prop>
009220*</object>
009230*</prop>
009240*</object>
009250*<object type="System.CodeDom.CodeAssignStatement">
009260*<prop name="Left">
009270*<object type="System.CodeDom.CodePropertyReferenceExpression">
009280*<prop name="TargetObject">
009290*<object type="System.CodeDom.CodeFieldReferenceExpression">
009300*<prop name="TargetObject">
009310*<object type="System.CodeDom.CodeThisReferenceExpression">
009320*</object>
009330*</prop>
009340*<prop name="FieldName">
009350*<string value="dataGrid1" />
009360*</prop>
009370*</object>
009380*</prop>
009390*<prop name="PropertyName">
009400*<string value="HeaderForeColor" />
009410*</prop>
009420*</object>
009430*</prop>
009440*<prop name="Right">
009450*<object type="System.CodeDom.CodePropertyReferenceExpression">
009460*<prop name="TargetObject">
009470*<object type="System.CodeDom.CodeTypeReferenceExpression">
009480*<prop name="Type">
009490*<object type="System.CodeDom.CodeTypeReference">
009500*<prop name="BaseType">
009510*<string value="System.Drawing.SystemColors" />
009520*</prop>
009530*</object>
009540*</prop>
009550*</object>
009560*</prop>
009570*<prop name="PropertyName">
009580*<string value="ControlText" />
009590*</prop>
009600*</object>
009610*</prop>
009620*</object>
009630*<object type="System.CodeDom.CodeAssignStatement">
009640*<prop name="Left">
009650*<object type="System.CodeDom.CodePropertyReferenceExpression">
009660*<prop name="TargetObject">
009670*<object type="System.CodeDom.CodeFieldReferenceExpression">
009680*<prop name="TargetObject">
009690*<object type="System.CodeDom.CodeThisReferenceExpression">
009700*</object>
009710*</prop>
009720*<prop name="FieldName">
009730*<string value="dataGrid1" />
009740*</prop>
009750*</object>
009760*</prop>
009770*<prop name="PropertyName">
009780*<string value="Location" />
009790*</prop>
009800*</object>
009810*</prop>
009820*<prop name="Right">
009830*<object type="System.CodeDom.CodeObjectCreateExpression">
009840*<prop name="CreateType">
009850*<object type="System.CodeDom.CodeTypeReference">
009860*<prop name="BaseType">
009870*<string value="System.Drawing.Point" />
009880*</prop>
009890*</object>
009900*</prop>
009910*<prop name="Parameters" method="add">
009920*<object type="System.CodeDom.CodePrimitiveExpression">
009930*<prop name="Value">
009940*<int32 value="16" />
009950*</prop>
009960*</object>
009970*<object type="System.CodeDom.CodePrimitiveExpression">
009980*<prop name="Value">
009990*<int32 value="48" />
010000*</prop>
010010*</object>
010020*</prop>
010030*</object>
010040*</prop>
010050*</object>
010060*<object type="System.CodeDom.CodeAssignStatement">
010070*<prop name="Left">
010080*<object type="System.CodeDom.CodePropertyReferenceExpression">
010090*<prop name="TargetObject">
010100*<object type="System.CodeDom.CodeFieldReferenceExpression">
010110*<prop name="TargetObject">
010120*<object type="System.CodeDom.CodeThisReferenceExpression">
010130*</object>
010140*</prop>
010150*<prop name="FieldName">
010160*<string value="dataGrid1" />
010170*</prop>
010180*</object>
010190*</prop>
010200*<prop name="PropertyName">
010210*<string value="Name" />
010220*</prop>
010230*</object>
010240*</prop>
010250*<prop name="Right">
010260*<object type="System.CodeDom.CodePrimitiveExpression">
010270*<prop name="Value">
010280*<string value="dataGrid1" />
010290*</prop>
010300*</object>
010310*</prop>
010320*</object>
010330*<object type="System.CodeDom.CodeAssignStatement">
010340*<prop name="Left">
010350*<object type="System.CodeDom.CodePropertyReferenceExpression">
010360*<prop name="TargetObject">
010370*<object type="System.CodeDom.CodeFieldReferenceExpression">
010380*<prop name="TargetObject">
010390*<object type="System.CodeDom.CodeThisReferenceExpression">
010400*</object>
010410*</prop>
010420*<prop name="FieldName">
010430*<string value="dataGrid1" />
010440*</prop>
010450*</object>
010460*</prop>
010470*<prop name="PropertyName">
010480*<string value="Size" />
010490*</prop>
010500*</object>
010510*</prop>
010520*<prop name="Right">
010530*<object type="System.CodeDom.CodeObjectCreateExpression">
010540*<prop name="CreateType">
010550*<object type="System.CodeDom.CodeTypeReference">
010560*<prop name="BaseType">
010570*<string value="System.Drawing.Size" />
010580*</prop>
010590*</object>
010600*</prop>
010610*<prop name="Parameters" method="add">
010620*<object type="System.CodeDom.CodePrimitiveExpression">
010630*<prop name="Value">
010640*<int32 value="288" />
010650*</prop>
010660*</object>
010670*<object type="System.CodeDom.CodePrimitiveExpression">
010680*<prop name="Value">
010690*<int32 value="152" />
010700*</prop>
010710*</object>
010720*</prop>
010730*</object>
010740*</prop>
010750*</object>
010760*<object type="System.CodeDom.CodeAssignStatement">
010770*<prop name="Left">
010780*<object type="System.CodeDom.CodePropertyReferenceExpression">
010790*<prop name="TargetObject">
010800*<object type="System.CodeDom.CodeFieldReferenceExpression">
010810*<prop name="TargetObject">
010820*<object type="System.CodeDom.CodeThisReferenceExpression">
010830*</object>
010840*</prop>
010850*<prop name="FieldName">
010860*<string value="dataGrid1" />
010870*</prop>
010880*</object>
010890*</prop>
010900*<prop name="PropertyName">
010910*<string value="TabIndex" />
010920*</prop>
010930*</object>
010940*</prop>
010950*<prop name="Right">
010960*<object type="System.CodeDom.CodePrimitiveExpression">
010970*<prop name="Value">
010980*<int32 value="2" />
010990*</prop>
011000*</object>
011010*</prop>
011020*</object>
011030*<object type="System.CodeDom.CodeExpressionStatement">
011040*<prop name="Expression">
011050*<object type="System.CodeDom.CodeMethodInvokeExpression">
011060*<prop name="Method">
011070*<object type="System.CodeDom.CodeMethodReferenceExpression">
011080*<prop name="TargetObject">
011090*<object type="System.CodeDom.CodeFieldReferenceExpression">
011100*<prop name="TargetObject">
011110*<object type="System.CodeDom.CodeThisReferenceExpression">
011120*</object>
011130*</prop>
011140*<prop name="FieldName">
011150*<string value="toolTip1" />
011160*</prop>
011170*</object>
011180*</prop>
011190*<prop name="MethodName">
011200*<string value="SetToolTip" />
011210*</prop>
011220*</object>
011230*</prop>
011240*<prop name="Parameters" method="add">
011250*<object type="System.CodeDom.CodeFieldReferenceExpression">
011260*<prop name="TargetObject">
011270*<object type="System.CodeDom.CodeThisReferenceExpression">
011280*</object>
011290*</prop>
011300*<prop name="FieldName">
011310*<string value="dataGrid1" />
011320*</prop>
011330*</object>
011340*<object type="System.CodeDom.CodePrimitiveExpression">
011350*<prop name="Value">
011360*<string value="Click on Column Header to Sort By that Column" />
011370*</prop>
011380*</object>
011390*</prop>
011400*</object>
011410*</prop>
011420*</object>
011430*<object type="System.CodeDom.CodeAssignStatement">
011440*<prop name="Left">
011450*<object type="System.CodeDom.CodePropertyReferenceExpression">
011460*<prop name="TargetObject">
011470*<object type="System.CodeDom.CodeFieldReferenceExpression">
011480*<prop name="TargetObject">
011490*<object type="System.CodeDom.CodeThisReferenceExpression">
011500*</object>
011510*</prop>
011520*<prop name="FieldName">
011530*<string value="dataGrid1" />
011540*</prop>
011550*</object>
011560*</prop>
011570*<prop name="PropertyName">
011580*<string value="Visible" />
011590*</prop>
011600*</object>
011610*</prop>
011620*<prop name="Right">
011630*<object type="System.CodeDom.CodePrimitiveExpression">
011640*<prop name="Value">
011650*<bool value="False" />
011660*</prop>
011670*</object>
011680*</prop>
011690*</object>
011700*<object type="System.CodeDom.CodeCommentStatement">
011710*<prop name="Comment">
011720*<object type="System.CodeDom.CodeComment">
011730*<prop name="Text">
011740*<string value="" />
011750*</prop>
011760*</object>
011770*</prop>
011780*</object>
011790*<object type="System.CodeDom.CodeCommentStatement">
011800*<prop name="Comment">
011810*<object type="System.CodeDom.CodeComment">
011820*<prop name="Text">
011830*<string value="button1" />
011840*</prop>
011850*</object>
011860*</prop>
011870*</object>
011880*<object type="System.CodeDom.CodeCommentStatement">
011890*<prop name="Comment">
011900*<object type="System.CodeDom.CodeComment">
011910*<prop name="Text">
011920*<string value="" />
011930*</prop>
011940*</object>
011950*</prop>
011960*</object>
011970*<object type="System.CodeDom.CodeAssignStatement">
011980*<prop name="Left">
011990*<object type="System.CodeDom.CodePropertyReferenceExpression">
012000*<prop name="TargetObject">
012010*<object type="System.CodeDom.CodeFieldReferenceExpression">
012020*<prop name="TargetObject">
012030*<object type="System.CodeDom.CodeThisReferenceExpression">
012040*</object>
012050*</prop>
012060*<prop name="FieldName">
012070*<string value="button1" />
012080*</prop>
012090*</object>
012100*</prop>
012110*<prop name="PropertyName">
012120*<string value="Location" />
012130*</prop>
012140*</object>
012150*</prop>
012160*<prop name="Right">
012170*<object type="System.CodeDom.CodeObjectCreateExpression">
012180*<prop name="CreateType">
012190*<object type="System.CodeDom.CodeTypeReference">
012200*<prop name="BaseType">
012210*<string value="System.Drawing.Point" />
012220*</prop>
012230*</object>
012240*</prop>
012250*<prop name="Parameters" method="add">
012260*<object type="System.CodeDom.CodePrimitiveExpression">
012270*<prop name="Value">
012280*<int32 value="8" />
012290*</prop>
012300*</object>
012310*<object type="System.CodeDom.CodePrimitiveExpression">
012320*<prop name="Value">
012330*<int32 value="8" />
012340*</prop>
012350*</object>
012360*</prop>
012370*</object>
012380*</prop>
012390*</object>
012400*<object type="System.CodeDom.CodeAssignStatement">
012410*<prop name="Left">
012420*<object type="System.CodeDom.CodePropertyReferenceExpression">
012430*<prop name="TargetObject">
012440*<object type="System.CodeDom.CodeFieldReferenceExpression">
012450*<prop name="TargetObject">
012460*<object type="System.CodeDom.CodeThisReferenceExpression">
012470*</object>
012480*</prop>
012490*<prop name="FieldName">
012500*<string value="button1" />
012510*</prop>
012520*</object>
012530*</prop>
012540*<prop name="PropertyName">
012550*<string value="Name" />
012560*</prop>
012570*</object>
012580*</prop>
012590*<prop name="Right">
012600*<object type="System.CodeDom.CodePrimitiveExpression">
012610*<prop name="Value">
012620*<string value="button1" />
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
012770*<string value="button1" />
012780*</prop>
012790*</object>
012800*</prop>
012810*<prop name="PropertyName">
012820*<string value="Size" />
012830*</prop>
012840*</object>
012850*</prop>
012860*<prop name="Right">
012870*<object type="System.CodeDom.CodeObjectCreateExpression">
012880*<prop name="CreateType">
012890*<object type="System.CodeDom.CodeTypeReference">
012900*<prop name="BaseType">
012910*<string value="System.Drawing.Size" />
012920*</prop>
012930*</object>
012940*</prop>
012950*<prop name="Parameters" method="add">
012960*<object type="System.CodeDom.CodePrimitiveExpression">
012970*<prop name="Value">
012980*<int32 value="152" />
012990*</prop>
013000*</object>
013010*<object type="System.CodeDom.CodePrimitiveExpression">
013020*<prop name="Value">
013030*<int32 value="23" />
013040*</prop>
013050*</object>
013060*</prop>
013070*</object>
013080*</prop>
013090*</object>
013100*<object type="System.CodeDom.CodeAssignStatement">
013110*<prop name="Left">
013120*<object type="System.CodeDom.CodePropertyReferenceExpression">
013130*<prop name="TargetObject">
013140*<object type="System.CodeDom.CodeFieldReferenceExpression">
013150*<prop name="TargetObject">
013160*<object type="System.CodeDom.CodeThisReferenceExpression">
013170*</object>
013180*</prop>
013190*<prop name="FieldName">
013200*<string value="button1" />
013210*</prop>
013220*</object>
013230*</prop>
013240*<prop name="PropertyName">
013250*<string value="TabIndex" />
013260*</prop>
013270*</object>
013280*</prop>
013290*<prop name="Right">
013300*<object type="System.CodeDom.CodePrimitiveExpression">
013310*<prop name="Value">
013320*<int32 value="3" />
013330*</prop>
013340*</object>
013350*</prop>
013360*</object>
013370*<object type="System.CodeDom.CodeAssignStatement">
013380*<prop name="Left">
013390*<object type="System.CodeDom.CodePropertyReferenceExpression">
013400*<prop name="TargetObject">
013410*<object type="System.CodeDom.CodeFieldReferenceExpression">
013420*<prop name="TargetObject">
013430*<object type="System.CodeDom.CodeThisReferenceExpression">
013440*</object>
013450*</prop>
013460*<prop name="FieldName">
013470*<string value="button1" />
013480*</prop>
013490*</object>
013500*</prop>
013510*<prop name="PropertyName">
013520*<string value="Text" />
013530*</prop>
013540*</object>
013550*</prop>
013560*<prop name="Right">
013570*<object type="System.CodeDom.CodePrimitiveExpression">
013580*<prop name="Value">
013590*<string value="Click to Load Datagrid" />
013600*</prop>
013610*</object>
013620*</prop>
013630*</object>
013640*<object type="System.CodeDom.CodeExpressionStatement">
013650*<prop name="Expression">
013660*<object type="System.CodeDom.CodeMethodInvokeExpression">
013670*<prop name="Method">
013680*<object type="System.CodeDom.CodeMethodReferenceExpression">
013690*<prop name="TargetObject">
013700*<object type="System.CodeDom.CodeFieldReferenceExpression">
013710*<prop name="TargetObject">
013720*<object type="System.CodeDom.CodeThisReferenceExpression">
013730*</object>
013740*</prop>
013750*<prop name="FieldName">
013760*<string value="toolTip1" />
013770*</prop>
013780*</object>
013790*</prop>
013800*<prop name="MethodName">
013810*<string value="SetToolTip" />
013820*</prop>
013830*</object>
013840*</prop>
013850*<prop name="Parameters" method="add">
013860*<object type="System.CodeDom.CodeFieldReferenceExpression">
013870*<prop name="TargetObject">
013880*<object type="System.CodeDom.CodeThisReferenceExpression">
013890*</object>
013900*</prop>
013910*<prop name="FieldName">
013920*<string value="button1" />
013930*</prop>
013940*</object>
013950*<object type="System.CodeDom.CodePrimitiveExpression">
013960*<prop name="Value">
013970*<string value="Press this Button to load Datagrid" />
013980*</prop>
013990*</object>
014000*</prop>
014010*</object>
014020*</prop>
014030*</object>
014040*<object type="System.CodeDom.CodeAttachEventStatement">
014050*<prop name="Event">
014060*<object type="System.CodeDom.CodeEventReferenceExpression">
014070*<prop name="TargetObject">
014080*<object type="System.CodeDom.CodeFieldReferenceExpression">
014090*<prop name="TargetObject">
014100*<object type="System.CodeDom.CodeThisReferenceExpression">
014110*</object>
014120*</prop>
014130*<prop name="FieldName">
014140*<string value="button1" />
014150*</prop>
014160*</object>
014170*</prop>
014180*<prop name="EventName">
014190*<string value="Click" />
014200*</prop>
014210*</object>
014220*</prop>
014230*<prop name="Listener">
014240*<object type="System.CodeDom.CodeDelegateCreateExpression">
014250*<prop name="DelegateType">
014260*<object type="System.CodeDom.CodeTypeReference">
014270*<prop name="BaseType">
014280*<string value="System.EventHandler" />
014290*</prop>
014300*</object>
014310*</prop>
014320*<prop name="TargetObject">
014330*<object type="System.CodeDom.CodeThisReferenceExpression">
014340*</object>
014350*</prop>
014360*<prop name="MethodName">
014370*<string value="button1_Click" />
014380*</prop>
014390*</object>
014400*</prop>
014410*</object>
014420*<object type="System.CodeDom.CodeCommentStatement">
014430*<prop name="Comment">
014440*<object type="System.CodeDom.CodeComment">
014450*<prop name="Text">
014460*<string value="" />
014470*</prop>
014480*</object>
014490*</prop>
014500*</object>
014510*<object type="System.CodeDom.CodeCommentStatement">
014520*<prop name="Comment">
014530*<object type="System.CodeDom.CodeComment">
014540*<prop name="Text">
014550*<string value="Form1" />
014560*</prop>
014570*</object>
014580*</prop>
014590*</object>
014600*<object type="System.CodeDom.CodeCommentStatement">
014610*<prop name="Comment">
014620*<object type="System.CodeDom.CodeComment">
014630*<prop name="Text">
014640*<string value="" />
014650*</prop>
014660*</object>
014670*</prop>
014680*</object>
014690*<object type="System.CodeDom.CodeAssignStatement">
014700*<prop name="Left">
014710*<object type="System.CodeDom.CodePropertyReferenceExpression">
014720*<prop name="TargetObject">
014730*<object type="System.CodeDom.CodeThisReferenceExpression">
014740*</object>
014750*</prop>
014760*<prop name="PropertyName">
014770*<string value="AutoScaleBaseSize" />
014780*</prop>
014790*</object>
014800*</prop>
014810*<prop name="Right">
014820*<object type="System.CodeDom.CodeObjectCreateExpression">
014830*<prop name="CreateType">
014840*<object type="System.CodeDom.CodeTypeReference">
014850*<prop name="BaseType">
014860*<string value="System.Drawing.Size" />
014870*</prop>
014880*</object>
014890*</prop>
014900*<prop name="Parameters" method="add">
014910*<object type="System.CodeDom.CodePrimitiveExpression">
014920*<prop name="Value">
014930*<int32 value="6" />
014940*</prop>
014950*</object>
014960*<object type="System.CodeDom.CodePrimitiveExpression">
014970*<prop name="Value">
014980*<int32 value="15" />
014990*</prop>
015000*</object>
015010*</prop>
015020*</object>
015030*</prop>
015040*</object>
015050*<object type="System.CodeDom.CodeAssignStatement">
015060*<prop name="Left">
015070*<object type="System.CodeDom.CodePropertyReferenceExpression">
015080*<prop name="TargetObject">
015090*<object type="System.CodeDom.CodeThisReferenceExpression">
015100*</object>
015110*</prop>
015120*<prop name="PropertyName">
015130*<string value="ClientSize" />
015140*</prop>
015150*</object>
015160*</prop>
015170*<prop name="Right">
015180*<object type="System.CodeDom.CodeObjectCreateExpression">
015190*<prop name="CreateType">
015200*<object type="System.CodeDom.CodeTypeReference">
015210*<prop name="BaseType">
015220*<string value="System.Drawing.Size" />
015230*</prop>
015240*</object>
015250*</prop>
015260*<prop name="Parameters" method="add">
015270*<object type="System.CodeDom.CodePrimitiveExpression">
015280*<prop name="Value">
015290*<int32 value="408" />
015300*</prop>
015310*</object>
015320*<object type="System.CodeDom.CodePrimitiveExpression">
015330*<prop name="Value">
015340*<int32 value="270" />
015350*</prop>
015360*</object>
015370*</prop>
015380*</object>
015390*</prop>
015400*</object>
015410*<object type="System.CodeDom.CodeExpressionStatement">
015420*<prop name="Expression">
015430*<object type="System.CodeDom.CodeMethodInvokeExpression">
015440*<prop name="Method">
015450*<object type="System.CodeDom.CodeMethodReferenceExpression">
015460*<prop name="TargetObject">
015470*<object type="System.CodeDom.CodePropertyReferenceExpression">
015480*<prop name="TargetObject">
015490*<object type="System.CodeDom.CodeThisReferenceExpression">
015500*</object>
015510*</prop>
015520*<prop name="PropertyName">
015530*<string value="Controls" />
015540*</prop>
015550*</object>
015560*</prop>
015570*<prop name="MethodName">
015580*<string value="AddRange" />
015590*</prop>
015600*</object>
015610*</prop>
015620*<prop name="Parameters" method="add">
015630*<object type="System.CodeDom.CodeArrayCreateExpression">
015640*<prop name="CreateType">
015650*<object type="System.CodeDom.CodeTypeReference">
015660*<prop name="BaseType">
015670*<string value="System.Windows.Forms.Control" />
015680*</prop>
015690*</object>
015700*</prop>
015710*<prop name="Initializers" method="add">
015720*<object type="System.CodeDom.CodeFieldReferenceExpression">
015730*<prop name="TargetObject">
015740*<object type="System.CodeDom.CodeThisReferenceExpression">
015750*</object>
015760*</prop>
015770*<prop name="FieldName">
015780*<string value="button1" />
015790*</prop>
015800*</object>
015810*<object type="System.CodeDom.CodeFieldReferenceExpression">
015820*<prop name="TargetObject">
015830*<object type="System.CodeDom.CodeThisReferenceExpression">
015840*</object>
015850*</prop>
015860*<prop name="FieldName">
015870*<string value="dataGrid1" />
015880*</prop>
015890*</object>
015900*<object type="System.CodeDom.CodeFieldReferenceExpression">
015910*<prop name="TargetObject">
015920*<object type="System.CodeDom.CodeThisReferenceExpression">
015930*</object>
015940*</prop>
015950*<prop name="FieldName">
015960*<string value="progressBar1" />
015970*</prop>
015980*</object>
015990*<object type="System.CodeDom.CodeFieldReferenceExpression">
016000*<prop name="TargetObject">
016010*<object type="System.CodeDom.CodeThisReferenceExpression">
016020*</object>
016030*</prop>
016040*<prop name="FieldName">
016050*<string value="statusBar1" />
016060*</prop>
016070*</object>
016080*</prop>
016090*<prop name="Size">
016100*<int32 value="0" />
016110*</prop>
016120*<prop name="SizeExpression">
016130*<null />
016140*</prop>
016150*</object>
016160*</prop>
016170*</object>
016180*</prop>
016190*</object>
016200*<object type="System.CodeDom.CodeAssignStatement">
016210*<prop name="Left">
016220*<object type="System.CodeDom.CodePropertyReferenceExpression">
016230*<prop name="TargetObject">
016240*<object type="System.CodeDom.CodeThisReferenceExpression">
016250*</object>
016260*</prop>
016270*<prop name="PropertyName">
016280*<string value="Name" />
016290*</prop>
016300*</object>
016310*</prop>
016320*<prop name="Right">
016330*<object type="System.CodeDom.CodePrimitiveExpression">
016340*<prop name="Value">
016350*<string value="Form1" />
016360*</prop>
016370*</object>
016380*</prop>
016390*</object>
016400*<object type="System.CodeDom.CodeAssignStatement">
016410*<prop name="Left">
016420*<object type="System.CodeDom.CodePropertyReferenceExpression">
016430*<prop name="TargetObject">
016440*<object type="System.CodeDom.CodeThisReferenceExpression">
016450*</object>
016460*</prop>
016470*<prop name="PropertyName">
016480*<string value="Text" />
016490*</prop>
016500*</object>
016510*</prop>
016520*<prop name="Right">
016530*<object type="System.CodeDom.CodePrimitiveExpression">
016540*<prop name="Value">
016550*<string value="MyEnhancedInformativeWinFormCobol" />
016560*</prop>
016570*</object>
016580*</prop>
016590*</object>
016600*<object type="System.CodeDom.CodeAttachEventStatement">
016610*<prop name="Event">
016620*<object type="System.CodeDom.CodeEventReferenceExpression">
016630*<prop name="TargetObject">
016640*<object type="System.CodeDom.CodeThisReferenceExpression">
016650*</object>
016660*</prop>
016670*<prop name="EventName">
016680*<string value="Load" />
016690*</prop>
016700*</object>
016710*</prop>
016720*<prop name="Listener">
016730*<object type="System.CodeDom.CodeDelegateCreateExpression">
016740*<prop name="DelegateType">
016750*<object type="System.CodeDom.CodeTypeReference">
016760*<prop name="BaseType">
016770*<string value="System.EventHandler" />
016780*</prop>
016790*</object>
016800*</prop>
016810*<prop name="TargetObject">
016820*<object type="System.CodeDom.CodeThisReferenceExpression">
016830*</object>
016840*</prop>
016850*<prop name="MethodName">
016860*<string value="Form1_Load" />
016870*</prop>
016880*</object>
016890*</prop>
016900*</object>
016910*<object type="System.CodeDom.CodeExpressionStatement">
016920*<prop name="Expression">
016930*<object type="System.CodeDom.CodeMethodInvokeExpression">
016940*<prop name="Method">
016950*<object type="System.CodeDom.CodeMethodReferenceExpression">
016960*<prop name="TargetObject">
016970*<object type="System.CodeDom.CodeCastExpression">
016980*<prop name="TargetType">
016990*<object type="System.CodeDom.CodeTypeReference">
017000*<prop name="BaseType">
017010*<string value="System.ComponentModel.ISupportInitialize" />
017020*</prop>
017030*</object>
017040*</prop>
017050*<prop name="Expression">
017060*<object type="System.CodeDom.CodeFieldReferenceExpression">
017070*<prop name="TargetObject">
017080*<object type="System.CodeDom.CodeThisReferenceExpression">
017090*</object>
017100*</prop>
017110*<prop name="FieldName">
017120*<string value="dataGrid1" />
017130*</prop>
017140*</object>
017150*</prop>
017160*</object>
017170*</prop>
017180*<prop name="MethodName">
017190*<string value="EndInit" />
017200*</prop>
017210*</object>
017220*</prop>
017230*</object>
017240*</prop>
017250*</object>
017260*<object type="System.CodeDom.CodeExpressionStatement">
017270*<prop name="Expression">
017280*<object type="System.CodeDom.CodeMethodInvokeExpression">
017290*<prop name="Method">
017300*<object type="System.CodeDom.CodeMethodReferenceExpression">
017310*<prop name="TargetObject">
017320*<object type="System.CodeDom.CodeThisReferenceExpression">
017330*</object>
017340*</prop>
017350*<prop name="MethodName">
017360*<string value="ResumeLayout" />
017370*</prop>
017380*</object>
017390*</prop>
017400*<prop name="Parameters" method="add">
017410*<object type="System.CodeDom.CodePrimitiveExpression">
017420*<prop name="Value">
017430*<bool value="False" />
017440*</prop>
017450*</object>
017460*</prop>
017470*</object>
017480*</prop>
017490*</object>
017500*</embedded-codedom>
017510*>>IMP END-EMBEDDED-CODEDOM
017520     INVOKE CLASS-CONTAINER "NEW" RETURNING TEMP1
017530     SET PROP-COMPONENTS OF SELF TO TEMP1
017540     INVOKE CLASS-STATUSBAR "NEW" RETURNING TEMP2
017550     SET PROP-STATUSBAR1 OF SELF TO TEMP2
017560     INVOKE CLASS-PROGRESSBAR "NEW" RETURNING TEMP3
017570     SET PROP-PROGRESSBAR1 OF SELF TO TEMP3
017580     INVOKE CLASS-DATAGRID "NEW" RETURNING TEMP4
017590     SET PROP-DATAGRID1 OF SELF TO TEMP4
017600     INVOKE CLASS-BUTTON "NEW" RETURNING TEMP5
017610     SET PROP-BUTTON1 OF SELF TO TEMP5
017620     SET TEMP6 TO PROP-COMPONENTS OF SELF
017630     INVOKE CLASS-TOOLTIP "NEW" USING BY VALUE TEMP6 RETURNING TEMP7
017640     SET PROP-TOOLTIP1 OF SELF TO TEMP7
017650     SET TEMP8 TO PROP-DATAGRID1 OF SELF
017660     SET TEMP9 TO TEMP8 AS INTERFACE-ISUPPORTINITIALIZE
017670     INVOKE TEMP9 "BeginInit"
017680     INVOKE SELF "SuspendLayout"
017690*
017700*statusBar1
017710*
017720     MOVE 0 TO TEMP10
017730     MOVE 248 TO TEMP11
017740     INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP10 BY VALUE TEMP11 RETURNING TEMP12
017750     SET TEMP13 TO PROP-STATUSBAR1 OF SELF
017760     SET PROP-LOCATION OF TEMP13 TO TEMP12
017770     SET TEMP14 TO N"statusBar1"
017780     SET TEMP15 TO PROP-STATUSBAR1 OF SELF
017790     SET PROP-NAME OF TEMP15 TO TEMP14
017800     MOVE 408 TO TEMP16
017810     MOVE 22 TO TEMP17
017820     INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP16 BY VALUE TEMP17 RETURNING TEMP18
017830     SET TEMP19 TO PROP-STATUSBAR1 OF SELF
017840     SET PROP-SIZE OF TEMP19 TO TEMP18
017850     MOVE 0 TO TEMP20
017860     SET TEMP21 TO PROP-STATUSBAR1 OF SELF
017870     MOVE TEMP20 TO PROP-TABINDEX OF TEMP21
017880     SET TEMP22 TO N"Please Click the Button to Load the DataGrid"
017890     SET TEMP23 TO PROP-STATUSBAR1 OF SELF
017900     SET PROP-TEXT OF TEMP23 TO TEMP22
017910*
017920*progressBar1
017930*
017940     MOVE 8 TO TEMP24
017950     MOVE 216 TO TEMP25
017960     INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP24 BY VALUE TEMP25 RETURNING TEMP26
017970     SET TEMP27 TO PROP-PROGRESSBAR1 OF SELF
017980     SET PROP-LOCATION OF TEMP27 TO TEMP26
017990     SET TEMP28 TO N"progressBar1"
018000     SET TEMP29 TO PROP-PROGRESSBAR1 OF SELF
018010     SET PROP-NAME OF TEMP29 TO TEMP28
018020     MOVE 320 TO TEMP30
018030     MOVE 23 TO TEMP31
018040     INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP30 BY VALUE TEMP31 RETURNING TEMP32
018050     SET TEMP33 TO PROP-PROGRESSBAR1 OF SELF
018060     SET PROP-SIZE OF TEMP33 TO TEMP32
018070     MOVE 1 TO TEMP34
018080     SET TEMP35 TO PROP-PROGRESSBAR1 OF SELF
018090     MOVE TEMP34 TO PROP-TABINDEX OF TEMP35
018100     SET TEMP36 TO B"0"
018110     SET TEMP37 TO PROP-PROGRESSBAR1 OF SELF
018120     SET PROP-VISIBLE OF TEMP37 TO TEMP36
018130*
018140*dataGrid1
018150*
018160     SET TEMP38 TO N"Categories Table"
018170     SET TEMP39 TO PROP-DATAGRID1 OF SELF
018180     SET PROP-CAPTIONTEXT OF TEMP39 TO TEMP38
018190     SET TEMP40 TO PROP-EMPTY OF CLASS-STRING
018200     SET TEMP41 TO PROP-DATAGRID1 OF SELF
018210     SET PROP-DATAMEMBER OF TEMP41 TO TEMP40
018220     SET TEMP42 TO PROP-DATAGRID1 OF SELF
018230     SET PROP-HEADERFORECOLOR OF TEMP42 TO PROP-CONTROLTEXT OF CLASS-SYSTEMCOLORS
018240     MOVE 16 TO TEMP43
018250     MOVE 48 TO TEMP44
018260     INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP43 BY VALUE TEMP44 RETURNING TEMP45
018270     SET TEMP46 TO PROP-DATAGRID1 OF SELF
018280     SET PROP-LOCATION OF TEMP46 TO TEMP45
018290     SET TEMP47 TO N"dataGrid1"
018300     SET TEMP48 TO PROP-DATAGRID1 OF SELF
018310     SET PROP-NAME OF TEMP48 TO TEMP47
018320     MOVE 288 TO TEMP49
018330     MOVE 152 TO TEMP50
018340     INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP49 BY VALUE TEMP50 RETURNING TEMP51
018350     SET TEMP52 TO PROP-DATAGRID1 OF SELF
018360     SET PROP-SIZE OF TEMP52 TO TEMP51
018370     MOVE 2 TO TEMP53
018380     SET TEMP54 TO PROP-DATAGRID1 OF SELF
018390     MOVE TEMP53 TO PROP-TABINDEX OF TEMP54
018400     SET TEMP56 TO PROP-DATAGRID1 OF SELF
018410     SET TEMP57 TO N"Click on Column Header to Sort By that Column"
018420     SET TEMP55 TO PROP-TOOLTIP1 OF SELF
018430     INVOKE TEMP55 "SetToolTip" USING BY VALUE TEMP56 BY VALUE TEMP57
018440     SET TEMP58 TO B"0"
018450     SET TEMP59 TO PROP-DATAGRID1 OF SELF
018460     SET PROP-VISIBLE OF TEMP59 TO TEMP58
018470*
018480*button1
018490*
018500     MOVE 8 TO TEMP60
018510     MOVE 8 TO TEMP61
018520     INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP60 BY VALUE TEMP61 RETURNING TEMP62
018530     SET TEMP63 TO PROP-BUTTON1 OF SELF
018540     SET PROP-LOCATION OF TEMP63 TO TEMP62
018550     SET TEMP64 TO N"button1"
018560     SET TEMP65 TO PROP-BUTTON1 OF SELF
018570     SET PROP-NAME OF TEMP65 TO TEMP64
018580     MOVE 152 TO TEMP66
018590     MOVE 23 TO TEMP67
018600     INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP66 BY VALUE TEMP67 RETURNING TEMP68
018610     SET TEMP69 TO PROP-BUTTON1 OF SELF
018620     SET PROP-SIZE OF TEMP69 TO TEMP68
018630     MOVE 3 TO TEMP70
018640     SET TEMP71 TO PROP-BUTTON1 OF SELF
018650     MOVE TEMP70 TO PROP-TABINDEX OF TEMP71
018660     SET TEMP72 TO N"Click to Load Datagrid"
018670     SET TEMP73 TO PROP-BUTTON1 OF SELF
018680     SET PROP-TEXT OF TEMP73 TO TEMP72
018690     SET TEMP75 TO PROP-BUTTON1 OF SELF
018700     SET TEMP76 TO N"Press this Button to load Datagrid"
018710     SET TEMP74 TO PROP-TOOLTIP1 OF SELF
018720     INVOKE TEMP74 "SetToolTip" USING BY VALUE TEMP75 BY VALUE TEMP76
018730     SET TEMP77 TO PROP-BUTTON1 OF SELF
018740     INVOKE DELEGATE-EVENTHANDLER "NEW" USING BY VALUE SELF BY VALUE N"button1_Click" RETURNING TEMP78
018750     INVOKE TEMP77 "add_Click" USING BY VALUE TEMP78
018760*
018770*Form1
018780*
018790     MOVE 6 TO TEMP79
018800     MOVE 15 TO TEMP80
018810     INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP79 BY VALUE TEMP80 RETURNING TEMP81
018820     SET PROP-AUTOSCALEBASESIZE OF SELF TO TEMP81
018830     MOVE 408 TO TEMP82
018840     MOVE 270 TO TEMP83
018850     INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP82 BY VALUE TEMP83 RETURNING TEMP84
018860     SET PROP-CLIENTSIZE OF SELF TO TEMP84
018870     MOVE 4 TO TEMP90
018880     INVOKE ARRAY-CONTROL "NEW" USING BY VALUE TEMP90 RETURNING TEMP91
018890     SET TEMP86 TO PROP-BUTTON1 OF SELF
018900     INVOKE TEMP91 "Set" USING BY VALUE 0 BY VALUE TEMP86
018910     SET TEMP87 TO PROP-DATAGRID1 OF SELF
018920     INVOKE TEMP91 "Set" USING BY VALUE 1 BY VALUE TEMP87
018930     SET TEMP88 TO PROP-PROGRESSBAR1 OF SELF
018940     INVOKE TEMP91 "Set" USING BY VALUE 2 BY VALUE TEMP88
018950     SET TEMP89 TO PROP-STATUSBAR1 OF SELF
018960     INVOKE TEMP91 "Set" USING BY VALUE 3 BY VALUE TEMP89
018970     SET TEMP85 TO PROP-CONTROLS OF SELF
018980     INVOKE TEMP85 "AddRange" USING BY VALUE TEMP91
018990     SET TEMP92 TO N"Form1"
019000     SET PROP-NAME OF SELF TO TEMP92
019010     SET TEMP93 TO N"MyEnhancedInformativeWinFormCobol"
019020     SET PROP-TEXT OF SELF TO TEMP93
019030     INVOKE DELEGATE-EVENTHANDLER "NEW" USING BY VALUE SELF BY VALUE N"Form1_Load" RETURNING TEMP94
019040     INVOKE SELF "add_Load" USING BY VALUE TEMP94
019050     SET TEMP95 TO PROP-DATAGRID1 OF SELF
019060     SET TEMP96 TO TEMP95 AS INTERFACE-ISUPPORTINITIALIZE
019070     INVOKE TEMP96 "EndInit"
019080     SET TEMP97 TO B"0"
019090     INVOKE SELF "ResumeLayout" USING BY VALUE TEMP97
019100 END METHOD INITIALIZECOMPONENT.
019110 
019120 METHOD-ID. Form1_Load PRIVATE.
019130 DATA DIVISION.
019140 LINKAGE SECTION.
019150 01 sender OBJECT REFERENCE CLASS-OBJECT.
019160 01 e OBJECT REFERENCE CLASS-EVENTARGS.
019170 PROCEDURE DIVISION USING BY VALUE sender e.
019180 END METHOD Form1_Load.
019190 
019200 METHOD-ID. button1_Click PRIVATE.
019210 DATA DIVISION.
019211 WORKING-STORAGE SECTION.
019212 01 MyNewConnectionString  PIC X(100).
019213 01 MyNewAppSettings  OBJECT REFERENCE CLASS-NAMEVALUECOLLECTION.
019215
019220 LINKAGE SECTION.
019230 01 sender OBJECT REFERENCE CLASS-OBJECT.
019240 01 e OBJECT REFERENCE CLASS-EVENTARGS.
019250 PROCEDURE DIVISION USING BY VALUE sender e.
019260     SET PROP-VISIBLE OF progressBar1 TO B"1"
019270     INVOKE progressBar1 "Increment" USING BY VALUE 10
019280     SET PROP-TEXT OF statusBar1 TO "Updating DataGrid" 
019290     
019300***************************************************************
019310* Create a new DataTable.
019320     INVOKE DataTable "NEW" USING BY VALUE "myCategories"
019330         RETURNING myDataTable.
019340
019350* Create 1st myDataColumn.
019360     INVOKE DataColumn "NEW" RETURNING myDataColumn.
019370     SET PROP-DataType OF myDataColumn TO
019380         SystemType::"GetType"("System.Int32").
019390     SET PROP-ColumnName OF myDataColumn TO "CategoryID".
019400     SET PROP-Unique OF myDataColumn TO B"1".
019410     INVOKE PROP-Columns OF myDataTable "Add" 
019420       USING BY VALUE myDataColumn.
019430     
019440* Create 2nd myDataColumn.
019450     INVOKE DataColumn "NEW" RETURNING myDataColumn.
019460     SET PROP-DataType OF myDataColumn TO
019470         SystemType::"GetType"("System.String").
019480     SET PROP-ColumnName OF myDataColumn TO "CategoryName".
019490     INVOKE PROP-Columns OF myDataTable "Add" 
019500       USING BY VALUE myDataColumn.
019510
019520     INVOKE progressBar1 "Increment" USING BY VALUE 10
019530
019540* Create 3rd myDataColumn.
019550     INVOKE DataColumn "NEW" RETURNING myDataColumn.
019560     SET PROP-DataType OF myDataColumn TO
019570         SystemType::"GetType"("System.String").
019580     SET PROP-ColumnName OF myDataColumn TO "Description".
019590     INVOKE PROP-Columns OF myDataTable "Add" 
019600       USING BY VALUE myDataColumn.
019610     
019620* Create 4th myDataColumn.
019630     INVOKE DataColumn "NEW" RETURNING myDataColumn.
019640     SET PROP-DataType OF myDataColumn TO
019650         SystemType::"GetType"("System.Byte[]").
019660     SET PROP-ColumnName OF myDataColumn TO "Picture".
019670     INVOKE PROP-Columns OF myDataTable "Add" 
019680       USING BY VALUE myDataColumn.
019690
019700     INVOKE progressBar1 "Increment" USING BY VALUE 10
019710
019720* Assign primary key column to CategoryID column.
019730     INVOKE DataColumnArray "NEW" USING BY VALUE 1
019740         RETURNING myPrimaryKeyColumns.
019750     INVOKE PROP-Columns OF myDataTable "get_Item" 
019760       USING BY VALUE "CategoryID"
019770       RETURNING myPrimaryKeyColumn.
019780     INVOKE myPrimaryKeyColumns "Set" 
019790       USING BY VALUE 0 myPrimaryKeyColumn.
019800     SET PROP-PrimaryKey OF myDataTable TO myPrimaryKeyColumns.
019810     
019820* Reference the DataSet.
019830     INVOKE DataSet "NEW" RETURNING myDataSet.
019840* Associate the Table with the Dataset.
019850     INVOKE PROP-Tables OF myDataSet "Add" 
019860       USING BY VALUE myDataTable.
019870
019880     INVOKE progressBar1 "Increment" USING BY VALUE 10
019890
019900*  Reference Data Provider Objects
019910		INVOKE SqlConnection "NEW"  RETURNING  mySqlConnection 
019920      INVOKE SqlDataAdapter "NEW" RETURNING  mySqlDataAdapter 
019930      INVOKE SqlCommand "NEW"     RETURNING  mySqlCommand
019940      
019950*  Prepare to Connect to SQL Server Database
019960*  using Connection String
019970*      SET PROP-ConnectionString OF mySqlConnection TO
019980*      "user id=sa;pwd=;Database=northwind;Server=(LOCAL)"
019982
019983     SET MyNewAppSettings TO PROP-APPSETTINGS 
019984         OF CLASS-CONFIGURATIONSETTINGS
019985     INVOKE MyNewAppSettings "get_Item" 
019986         USING BY VALUE "MyCOBOLConnectionString" 
019987         RETURNING MyNewConnectionString
019988     SET PROP-ConnectionString OF mySqlConnection 
019989         TO MyNewConnectionString
019990      
020000*  Associate the Command Object with the Connection Object
020010      SET PROP-Connection OF mySqlCommand TO mySqlConnection    
020020*  Associate the Command Object with intended SQL Statement
020030      SET PROP-CommandText OF mySqlCommand TO "Select * from Categories"
020040*  Associate the DataAdapter Object with the Command Object
020050      SET PROP-SelectCommand OF mySqlDataAdapter TO mySqlCommand
020060
020070     INVOKE progressBar1 "Increment" USING BY VALUE 10
020080     
020090*  Have the DataAdapter Object Execute the SQL Statement and
020100*  store the result set in a DataSet DataTable named myCategories
020110     INVOKE mySqlDataAdapter "Fill" 
020120       USING BY VALUE myDataSet, "myCategories"
020130       
020140***************************************************************
020150     SET PROP-VISIBLE OF dataGrid1 TO B"1"
020160     SET PROP-DataSource OF dataGrid1 TO myDataSet
020170     SET PROP-DATAMEMBER OF dataGrid1 TO "myCategories"
020180***************************************************************
020190*  Close the Database Connection
020200      INVOKE mySqlConnection "Close".
020210    
020220		INVOKE progressBar1 "Increment" USING BY VALUE 10
020230      
020240      SET mySqlConnection TO NULL.
020250      SET mySqlDataAdapter TO NULL.
020260      SET mySqlCommand TO NULL.
020270      SET myDataTable TO NULL.
020280      
020290***************************************************************
020300      INVOKE progressBar1 "Increment" USING BY VALUE 40
020310      SET PROP-VISIBLE OF dataGrid1 TO B"1"
020320	    SET PROP-TEXT OF statusBar1 TO "Completed Filling DataGrid"
020330  
020340 END METHOD button1_Click.
020350
020360 END OBJECT.
020370 END CLASS Form1.