000010 IDENTIFICATION DIVISION.
000020 CLASS-ID. Form1 AS "MyMSMQAsyncAndTriggerCOBOL.Form1"
           INHERITS CLASS-FORM.
000040 ENVIRONMENT DIVISION.
000050 CONFIGURATION SECTION.
000060 SPECIAL-NAMES.
000070     CUSTOM-ATTRIBUTE STA-THREAD CLASS CLASS-STA-THREAD
000080     .
000090 REPOSITORY.
           CLASS CLASS-BOOLEAN AS "System.Boolean"
           CLASS CLASS-CONTAINER AS "System.ComponentModel.Container"
           CLASS CLASS-POINT AS "System.Drawing.Point"
           CLASS CLASS-SIZE AS "System.Drawing.Size"
           CLASS CLASS-EVENTARGS AS "System.EventArgs"
           DELEGATE DELEGATE-EVENTHANDLER AS "System.EventHandler"
           CLASS CLASS-GUID AS "System.Guid"
           CLASS CLASS-MESSAGEQUEUE AS "System.Messaging.MessageQueue"
           CLASS CLASS-OBJECT AS "System.Object"
           CLASS CLASS-STA-THREAD AS "System.STAThreadAttribute"
           CLASS CLASS-STRING AS "System.String"
           CLASS CLASS-STRINGBUILDER AS "System.Text.StringBuilder"
           CLASS CLASS-APPLICATION AS "System.Windows.Forms.Application"
           CLASS CLASS-BUTTON AS "System.Windows.Forms.Button"
           CLASS ARRAY-CONTROL AS "System.Windows.Forms.Control[]"
           CLASS CLASS-CONTROLCOLLECTION AS "System.Windows.Forms.Control+ControlCollection"
           CLASS CLASS-FORM AS "System.Windows.Forms.Form"
           CLASS CLASS-LABEL AS "System.Windows.Forms.Label"
           PROPERTY PROP-AUTOSCALEBASESIZE AS "AutoScaleBaseSize"
           PROPERTY PROP-BUTTON1 AS "button1"
           PROPERTY PROP-BUTTON2 AS "button2"
           PROPERTY PROP-CLIENTSIZE AS "ClientSize"
           PROPERTY PROP-CONTROLS AS "Controls"
           PROPERTY PROP-LABEL1 AS "label1"
           PROPERTY PROP-LABEL2 AS "label2"
           PROPERTY PROP-LOCATION AS "Location"
           PROPERTY PROP-MESSAGEQUEUE1 AS "messageQueue1"
           PROPERTY PROP-MESSAGEQUEUE2 AS "messageQueue2"
           PROPERTY PROP-NAME AS "Name"
           PROPERTY PROP-PATH AS "Path"
           PROPERTY PROP-SIZE AS "Size"
           PROPERTY PROP-SYNCHRONIZINGOBJECT AS "SynchronizingObject"
           PROPERTY PROP-TABINDEX AS "TabIndex"
           PROPERTY PROP-TEXT AS "Text"
000440     .
000450
000460 STATIC.
000470 DATA DIVISION.
000480 WORKING-STORAGE SECTION.
000490 PROCEDURE DIVISION.
000500
000510 METHOD-ID. MAIN AS "Main" CUSTOM-ATTRIBUTE IS STA-THREAD.
000520 DATA DIVISION.
000530 WORKING-STORAGE SECTION.
000540 01 TEMP-1 OBJECT REFERENCE Form1.
000550 PROCEDURE DIVISION.
000560     INVOKE Form1 "NEW" RETURNING TEMP-1.
000570     INVOKE CLASS-APPLICATION "Run" USING BY VALUE TEMP-1.
000580 END METHOD MAIN.
000590
000600 END STATIC.
000610
000620 OBJECT
000630     .
000640 DATA DIVISION.
000650 WORKING-STORAGE SECTION.
       01 myGUID OBJECT REFERENCE CLASS-GUID.
       01 button1 OBJECT REFERENCE CLASS-BUTTON.
       01 button2 OBJECT REFERENCE CLASS-BUTTON.
       01 label1 OBJECT REFERENCE CLASS-LABEL.
       01 label2 OBJECT REFERENCE CLASS-LABEL.
       01 messageQueue1 OBJECT REFERENCE CLASS-MESSAGEQUEUE.
       01 messageQueue2 OBJECT REFERENCE CLASS-MESSAGEQUEUE.
       01 components OBJECT REFERENCE CLASS-CONTAINER.
000740 PROCEDURE DIVISION.
000750
000760 METHOD-ID. NEW.
000770 PROCEDURE DIVISION.
000780     INVOKE SELF "InitializeComponent".
000790 END METHOD NEW.
000800
000810 METHOD-ID. DISPOSE AS "Dispose" OVERRIDE PROTECTED.
000820 DATA DIVISION.
000830 WORKING-STORAGE SECTION.
000840 01 TEMP-1 PIC 1.
000850 LINKAGE SECTION.
       01 disposing OBJECT REFERENCE CLASS-BOOLEAN.
000870 PROCEDURE DIVISION USING BY VALUE disposing.
000880     SET TEMP-1 TO disposing.
000890     IF TEMP-1 = B"1" THEN
000900       IF components NOT = NULL THEN
000910         INVOKE components "Dispose"
000920       END-IF
000930     END-IF.
000940     INVOKE SUPER "Dispose" USING BY VALUE disposing.
000950 END METHOD DISPOSE.
000960
000970* Required method for Designer support - do not modify
000980* the contents of this method with the code editor.
000990 METHOD-ID. INITIALIZECOMPONENT AS "InitializeComponent" PRIVATE.
001000 DATA DIVISION.
001010 WORKING-STORAGE SECTION.
       01 TEMP1 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP2 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP3 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP4 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP5 OBJECT REFERENCE CLASS-MESSAGEQUEUE.
       01 TEMP6 OBJECT REFERENCE CLASS-MESSAGEQUEUE.
       01 TEMP7 PIC S9(9) COMP-5.
       01 TEMP8 PIC S9(9) COMP-5.
       01 TEMP9 OBJECT REFERENCE CLASS-POINT.
       01 TEMP10 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP11 OBJECT REFERENCE CLASS-STRING.
       01 TEMP12 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP13 PIC S9(9) COMP-5.
       01 TEMP14 PIC S9(9) COMP-5.
       01 TEMP15 OBJECT REFERENCE CLASS-SIZE.
       01 TEMP16 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP17 PIC S9(9) COMP-5.
       01 TEMP18 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP19 OBJECT REFERENCE CLASS-STRING.
       01 TEMP20 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP21 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP22 OBJECT REFERENCE DELEGATE-EVENTHANDLER.
       01 TEMP23 PIC S9(9) COMP-5.
       01 TEMP24 PIC S9(9) COMP-5.
       01 TEMP25 OBJECT REFERENCE CLASS-POINT.
       01 TEMP26 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP27 OBJECT REFERENCE CLASS-STRING.
       01 TEMP28 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP29 PIC S9(9) COMP-5.
       01 TEMP30 PIC S9(9) COMP-5.
       01 TEMP31 OBJECT REFERENCE CLASS-SIZE.
       01 TEMP32 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP33 PIC S9(9) COMP-5.
       01 TEMP34 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP35 OBJECT REFERENCE CLASS-STRING.
       01 TEMP36 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP37 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP38 OBJECT REFERENCE DELEGATE-EVENTHANDLER.
       01 TEMP39 PIC S9(9) COMP-5.
       01 TEMP40 PIC S9(9) COMP-5.
       01 TEMP41 OBJECT REFERENCE CLASS-POINT.
       01 TEMP42 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP43 OBJECT REFERENCE CLASS-STRING.
       01 TEMP44 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP45 PIC S9(9) COMP-5.
       01 TEMP46 PIC S9(9) COMP-5.
       01 TEMP47 OBJECT REFERENCE CLASS-SIZE.
       01 TEMP48 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP49 PIC S9(9) COMP-5.
       01 TEMP50 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP51 OBJECT REFERENCE CLASS-STRING.
       01 TEMP52 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP53 PIC S9(9) COMP-5.
       01 TEMP54 PIC S9(9) COMP-5.
       01 TEMP55 OBJECT REFERENCE CLASS-POINT.
       01 TEMP56 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP57 OBJECT REFERENCE CLASS-STRING.
       01 TEMP58 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP59 PIC S9(9) COMP-5.
       01 TEMP60 PIC S9(9) COMP-5.
       01 TEMP61 OBJECT REFERENCE CLASS-SIZE.
       01 TEMP62 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP63 PIC S9(9) COMP-5.
       01 TEMP64 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP65 OBJECT REFERENCE CLASS-STRING.
       01 TEMP66 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP67 OBJECT REFERENCE CLASS-STRINGBUILDER.
       01 TEMP68 OBJECT REFERENCE CLASS-STRING.
       01 TEMP69 OBJECT REFERENCE CLASS-MESSAGEQUEUE.
       01 TEMP70 OBJECT REFERENCE CLASS-MESSAGEQUEUE.
       01 TEMP71 OBJECT REFERENCE CLASS-STRING.
       01 TEMP72 OBJECT REFERENCE CLASS-MESSAGEQUEUE.
       01 TEMP73 OBJECT REFERENCE CLASS-MESSAGEQUEUE.
       01 TEMP74 PIC S9(9) COMP-5.
       01 TEMP75 PIC S9(9) COMP-5.
       01 TEMP76 OBJECT REFERENCE CLASS-SIZE.
       01 TEMP77 PIC S9(9) COMP-5.
       01 TEMP78 PIC S9(9) COMP-5.
       01 TEMP79 OBJECT REFERENCE CLASS-SIZE.
       01 TEMP80 OBJECT REFERENCE CLASS-CONTROLCOLLECTION.
       01 TEMP81 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP82 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP83 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP84 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP85 PIC S9(9) COMP-5.
       01 TEMP86 OBJECT REFERENCE ARRAY-CONTROL.
       01 TEMP87 OBJECT REFERENCE CLASS-STRING.
       01 TEMP88 OBJECT REFERENCE CLASS-STRING.
       01 TEMP89 OBJECT REFERENCE CLASS-BOOLEAN.
001920 PROCEDURE DIVISION.
      *>>IMP BEGIN-EMBEDDED-CODEDOM
      *<embedded-codedom>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="button1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Windows.Forms.Button" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="button2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Windows.Forms.Button" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Windows.Forms.Label" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Windows.Forms.Label" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="messageQueue1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Messaging.MessageQueue" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="messageQueue2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Messaging.MessageQueue" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeExpressionStatement">
      *<prop name="Expression">
      *<object type="System.CodeDom.CodeMethodInvokeExpression">
      *<prop name="Method">
      *<object type="System.CodeDom.CodeMethodReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="MethodName">
      *<string value="SuspendLayout" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="button1" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="button1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Location" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Point" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="22" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="38" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="button1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Name" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="button1" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="button1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Size" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Size" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="234" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="22" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="button1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="TabIndex" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="0" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="button1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Text" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="Send Message to MyFirstTriggerQueue" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAttachEventStatement">
      *<prop name="Event">
      *<object type="System.CodeDom.CodeEventReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="button1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="EventName">
      *<string value="Click" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Listener">
      *<object type="System.CodeDom.CodeDelegateCreateExpression">
      *<prop name="DelegateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.EventHandler" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="MethodName">
      *<string value="button1_Click" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="button2" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="button2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Location" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Point" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="22" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="106" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="button2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Name" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="button2" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="button2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Size" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Size" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="234" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="22" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="button2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="TabIndex" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="1" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="button2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Text" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="Send Message to MyFirstAsyncQueue" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAttachEventStatement">
      *<prop name="Event">
      *<object type="System.CodeDom.CodeEventReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="button2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="EventName">
      *<string value="Click" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Listener">
      *<object type="System.CodeDom.CodeDelegateCreateExpression">
      *<prop name="DelegateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.EventHandler" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="MethodName">
      *<string value="button2_Click" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="label1" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Location" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Point" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="22" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="68" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Name" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="label1" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Size" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Size" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="248" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="22" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="TabIndex" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="2" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Text" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="Send Trigger Message Pending" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="label2" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Location" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Point" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="22" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="144" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Name" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="label2" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Size" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Size" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="248" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="22" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="TabIndex" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="3" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Text" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="Send Async Message Pending" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="messageQueue1" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="messageQueue1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Path" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="FormatName:DIRECT=OS:.\private$\myfirsttriggerqueue" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="messageQueue1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="SynchronizingObject" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="messageQueue2" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="messageQueue2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Path" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="FormatName:DIRECT=OS:.\private$\myfirstasyncqueue" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="messageQueue2" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="SynchronizingObject" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="Form1" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="AutoScaleBaseSize" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Size" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="5" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="13" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="ClientSize" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Size" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="328" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="221" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeExpressionStatement">
      *<prop name="Expression">
      *<object type="System.CodeDom.CodeMethodInvokeExpression">
      *<prop name="Method">
      *<object type="System.CodeDom.CodeMethodReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Controls" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="MethodName">
      *<string value="AddRange" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodeArrayCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Windows.Forms.Control" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Initializers" method="add">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label2" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label1" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="button2" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="button1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Size">
      *<int32 value="0" />
      *</prop>
      *<prop name="SizeExpression">
      *<null />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Name" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="Form1" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Text" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="MyMSMQAsyncAndTriggerCOBOL" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeExpressionStatement">
      *<prop name="Expression">
      *<object type="System.CodeDom.CodeMethodInvokeExpression">
      *<prop name="Method">
      *<object type="System.CodeDom.CodeMethodReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="MethodName">
      *<string value="ResumeLayout" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<bool value="False" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</embedded-codedom>
      *>>IMP END-EMBEDDED-CODEDOM
           INVOKE CLASS-BUTTON "NEW" RETURNING TEMP1
           SET PROP-BUTTON1 OF SELF TO TEMP1
           INVOKE CLASS-BUTTON "NEW" RETURNING TEMP2
           SET PROP-BUTTON2 OF SELF TO TEMP2
           INVOKE CLASS-LABEL "NEW" RETURNING TEMP3
           SET PROP-LABEL1 OF SELF TO TEMP3
           INVOKE CLASS-LABEL "NEW" RETURNING TEMP4
           SET PROP-LABEL2 OF SELF TO TEMP4
           INVOKE CLASS-MESSAGEQUEUE "NEW" RETURNING TEMP5
           SET PROP-MESSAGEQUEUE1 OF SELF TO TEMP5
           INVOKE CLASS-MESSAGEQUEUE "NEW" RETURNING TEMP6
           SET PROP-MESSAGEQUEUE2 OF SELF TO TEMP6
           INVOKE SELF "SuspendLayout"
      *
      *button1
      *
           MOVE 22 TO TEMP7
           MOVE 38 TO TEMP8
           INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP7 BY VALUE TEMP8 RETURNING TEMP9
           SET TEMP10 TO PROP-BUTTON1 OF SELF
           SET PROP-LOCATION OF TEMP10 TO TEMP9
           SET TEMP11 TO N"button1"
           SET TEMP12 TO PROP-BUTTON1 OF SELF
           SET PROP-NAME OF TEMP12 TO TEMP11
           MOVE 234 TO TEMP13
           MOVE 22 TO TEMP14
           INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP13 BY VALUE TEMP14 RETURNING TEMP15
           SET TEMP16 TO PROP-BUTTON1 OF SELF
           SET PROP-SIZE OF TEMP16 TO TEMP15
           MOVE 0 TO TEMP17
           SET TEMP18 TO PROP-BUTTON1 OF SELF
           MOVE TEMP17 TO PROP-TABINDEX OF TEMP18
           SET TEMP19 TO N"Send Message to MyFirstTriggerQueue"
           SET TEMP20 TO PROP-BUTTON1 OF SELF
           SET PROP-TEXT OF TEMP20 TO TEMP19
           SET TEMP21 TO PROP-BUTTON1 OF SELF
           INVOKE DELEGATE-EVENTHANDLER "NEW" USING BY VALUE SELF BY VALUE N"button1_Click" RETURNING TEMP22
           INVOKE TEMP21 "add_Click" USING BY VALUE TEMP22
      *
      *button2
      *
           MOVE 22 TO TEMP23
           MOVE 106 TO TEMP24
           INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP23 BY VALUE TEMP24 RETURNING TEMP25
           SET TEMP26 TO PROP-BUTTON2 OF SELF
           SET PROP-LOCATION OF TEMP26 TO TEMP25
           SET TEMP27 TO N"button2"
           SET TEMP28 TO PROP-BUTTON2 OF SELF
           SET PROP-NAME OF TEMP28 TO TEMP27
           MOVE 234 TO TEMP29
           MOVE 22 TO TEMP30
           INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP29 BY VALUE TEMP30 RETURNING TEMP31
           SET TEMP32 TO PROP-BUTTON2 OF SELF
           SET PROP-SIZE OF TEMP32 TO TEMP31
           MOVE 1 TO TEMP33
           SET TEMP34 TO PROP-BUTTON2 OF SELF
           MOVE TEMP33 TO PROP-TABINDEX OF TEMP34
           SET TEMP35 TO N"Send Message to MyFirstAsyncQueue"
           SET TEMP36 TO PROP-BUTTON2 OF SELF
           SET PROP-TEXT OF TEMP36 TO TEMP35
           SET TEMP37 TO PROP-BUTTON2 OF SELF
           INVOKE DELEGATE-EVENTHANDLER "NEW" USING BY VALUE SELF BY VALUE N"button2_Click" RETURNING TEMP38
           INVOKE TEMP37 "add_Click" USING BY VALUE TEMP38
      *
      *label1
      *
           MOVE 22 TO TEMP39
           MOVE 68 TO TEMP40
           INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP39 BY VALUE TEMP40 RETURNING TEMP41
           SET TEMP42 TO PROP-LABEL1 OF SELF
           SET PROP-LOCATION OF TEMP42 TO TEMP41
           SET TEMP43 TO N"label1"
           SET TEMP44 TO PROP-LABEL1 OF SELF
           SET PROP-NAME OF TEMP44 TO TEMP43
           MOVE 248 TO TEMP45
           MOVE 22 TO TEMP46
           INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP45 BY VALUE TEMP46 RETURNING TEMP47
           SET TEMP48 TO PROP-LABEL1 OF SELF
           SET PROP-SIZE OF TEMP48 TO TEMP47
           MOVE 2 TO TEMP49
           SET TEMP50 TO PROP-LABEL1 OF SELF
           MOVE TEMP49 TO PROP-TABINDEX OF TEMP50
           SET TEMP51 TO N"Send Trigger Message Pending"
           SET TEMP52 TO PROP-LABEL1 OF SELF
           SET PROP-TEXT OF TEMP52 TO TEMP51
      *
      *label2
      *
           MOVE 22 TO TEMP53
           MOVE 144 TO TEMP54
           INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP53 BY VALUE TEMP54 RETURNING TEMP55
           SET TEMP56 TO PROP-LABEL2 OF SELF
           SET PROP-LOCATION OF TEMP56 TO TEMP55
           SET TEMP57 TO N"label2"
           SET TEMP58 TO PROP-LABEL2 OF SELF
           SET PROP-NAME OF TEMP58 TO TEMP57
           MOVE 248 TO TEMP59
           MOVE 22 TO TEMP60
           INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP59 BY VALUE TEMP60 RETURNING TEMP61
           SET TEMP62 TO PROP-LABEL2 OF SELF
           SET PROP-SIZE OF TEMP62 TO TEMP61
           MOVE 3 TO TEMP63
           SET TEMP64 TO PROP-LABEL2 OF SELF
           MOVE TEMP63 TO PROP-TABINDEX OF TEMP64
           SET TEMP65 TO N"Send Async Message Pending"
           SET TEMP66 TO PROP-LABEL2 OF SELF
           SET PROP-TEXT OF TEMP66 TO TEMP65
      *
      *messageQueue1
      *
           INVOKE CLASS-STRINGBUILDER "NEW" RETURNING TEMP67
           INVOKE TEMP67 "Append" USING BY VALUE N"FormatName:DIRECT=OS:.\private$\myfirsttriggerqueu"
           INVOKE TEMP67 "Append" USING BY VALUE N"e"
           INVOKE TEMP67 "ToString" RETURNING TEMP68
           SET TEMP69 TO PROP-MESSAGEQUEUE1 OF SELF
           SET PROP-PATH OF TEMP69 TO TEMP68
           SET TEMP70 TO PROP-MESSAGEQUEUE1 OF SELF
           SET PROP-SYNCHRONIZINGOBJECT OF TEMP70 TO SELF
      *
      *messageQueue2
      *
           SET TEMP71 TO N"FormatName:DIRECT=OS:.\private$\myfirstasyncqueue"
           SET TEMP72 TO PROP-MESSAGEQUEUE2 OF SELF
           SET PROP-PATH OF TEMP72 TO TEMP71
           SET TEMP73 TO PROP-MESSAGEQUEUE2 OF SELF
           SET PROP-SYNCHRONIZINGOBJECT OF TEMP73 TO SELF
      *
      *Form1
      *
           MOVE 5 TO TEMP74
           MOVE 13 TO TEMP75
           INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP74 BY VALUE TEMP75 RETURNING TEMP76
           SET PROP-AUTOSCALEBASESIZE OF SELF TO TEMP76
           MOVE 328 TO TEMP77
           MOVE 221 TO TEMP78
           INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP77 BY VALUE TEMP78 RETURNING TEMP79
           SET PROP-CLIENTSIZE OF SELF TO TEMP79
           MOVE 4 TO TEMP85
           INVOKE ARRAY-CONTROL "NEW" USING BY VALUE TEMP85 RETURNING TEMP86
           SET TEMP81 TO PROP-LABEL2 OF SELF
           INVOKE TEMP86 "Set" USING BY VALUE 0 BY VALUE TEMP81
           SET TEMP82 TO PROP-LABEL1 OF SELF
           INVOKE TEMP86 "Set" USING BY VALUE 1 BY VALUE TEMP82
           SET TEMP83 TO PROP-BUTTON2 OF SELF
           INVOKE TEMP86 "Set" USING BY VALUE 2 BY VALUE TEMP83
           SET TEMP84 TO PROP-BUTTON1 OF SELF
           INVOKE TEMP86 "Set" USING BY VALUE 3 BY VALUE TEMP84
           SET TEMP80 TO PROP-CONTROLS OF SELF
           INVOKE TEMP80 "AddRange" USING BY VALUE TEMP86
           SET TEMP87 TO N"Form1"
           SET PROP-NAME OF SELF TO TEMP87
           SET TEMP88 TO N"MyMSMQAsyncAndTriggerCOBOL"
           SET PROP-TEXT OF SELF TO TEMP88
           SET TEMP89 TO B"0"
           INVOKE SELF "ResumeLayout" USING BY VALUE TEMP89
       END METHOD INITIALIZECOMPONENT.
017670 
017680 METHOD-ID. button1_Click PRIVATE.
017690 DATA DIVISION.
017700 WORKING-STORAGE SECTION.
017710 01 MyGUIDString PIC X(50).
017720 01 MyMsgString  PIC X(25).
017730 LINKAGE SECTION.
       01 sender OBJECT REFERENCE CLASS-OBJECT.
       01 e OBJECT REFERENCE CLASS-EVENTARGS.
017760 PROCEDURE DIVISION USING BY VALUE sender e.
017770 
017780		MOVE "TRIGGER" TO MyMsgString
017790      SET myGUID TO CLASS-GUID::"NewGuid"()
017800      SET MyGUIDString TO myGUID::"ToString"()
017810      INVOKE messageQueue1 "Send" 
017820      USING BY VALUE MyMsgString, MyGUIDString
017830      SET PROP-TEXT OF label1 TO MyGUIDString
017840
017850 END METHOD button1_Click.
017860 
017870 METHOD-ID. button2_Click PRIVATE.
017880 DATA DIVISION.
017890 WORKING-STORAGE SECTION.
017900 01 MyGUIDString PIC X(50).
017910 01 MyMsgString  PIC X(25).
017920 LINKAGE SECTION.
       01 sender OBJECT REFERENCE CLASS-OBJECT.
       01 e OBJECT REFERENCE CLASS-EVENTARGS.
017950 PROCEDURE DIVISION USING BY VALUE sender e.
017960 
017970		MOVE "ASYNC" TO MyMsgString
017980      SET myGUID TO CLASS-GUID::"NewGuid"()
017990      SET MyGUIDString TO myGUID::"ToString"()
018000      INVOKE messageQueue2 "Send" 
018010      USING BY VALUE MyMsgString, MyGUIDString
018020      SET PROP-TEXT OF label2 TO MyGUIDString 
018030
018040 END METHOD button2_Click.
018050
018060 END OBJECT.
       END CLASS Form1.