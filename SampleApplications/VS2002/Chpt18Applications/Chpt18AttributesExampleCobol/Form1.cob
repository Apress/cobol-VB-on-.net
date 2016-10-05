       IDENTIFICATION DIVISION.
       CLASS-ID. Form1 AS "AttributesExampleCobol.Form1"
           INHERITS CLASS-FORM.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           CUSTOM-ATTRIBUTE STA-THREAD CLASS CLASS-STA-THREAD
           .
       REPOSITORY.
           CLASS CLASS-BOOLEAN AS "System.Boolean"
           CLASS CLASS-CONTAINER AS "System.ComponentModel.Container"
           CLASS CLASS-POINT AS "System.Drawing.Point"
           CLASS CLASS-SIZE AS "System.Drawing.Size"
           CLASS CLASS-STA-THREAD AS "System.STAThreadAttribute"
           CLASS CLASS-STRING AS "System.String"
           CLASS CLASS-APPLICATION AS "System.Windows.Forms.Application"
           CLASS CLASS-BUTTON AS "System.Windows.Forms.Button"
           CLASS ARRAY-CONTROL AS "System.Windows.Forms.Control[]"
           CLASS CLASS-CONTROLCOLLECTION AS "System.Windows.Forms.Control+ControlCollection"
           CLASS CLASS-FORM AS "System.Windows.Forms.Form"
           PROPERTY PROP-AUTOSCALEBASESIZE AS "AutoScaleBaseSize"
           PROPERTY PROP-BUTTON1 AS "button1"
           PROPERTY PROP-CLIENTSIZE AS "ClientSize"
           PROPERTY PROP-CONTROLS AS "Controls"
           PROPERTY PROP-LOCATION AS "Location"
           PROPERTY PROP-NAME AS "Name"
           PROPERTY PROP-SIZE AS "Size"
           PROPERTY PROP-TABINDEX AS "TabIndex"
           PROPERTY PROP-TEXT AS "Text"
           .
      
       STATIC.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
      
       METHOD-ID. MAIN AS "Main" CUSTOM-ATTRIBUTE IS STA-THREAD.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 TEMP-1 OBJECT REFERENCE Form1.
       PROCEDURE DIVISION.
           INVOKE Form1 "NEW" RETURNING TEMP-1.
           INVOKE CLASS-APPLICATION "Run" USING BY VALUE TEMP-1.
       END METHOD MAIN.
      
       END STATIC.
      
       OBJECT
           .
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 button1 OBJECT REFERENCE CLASS-BUTTON.
       01 components OBJECT REFERENCE CLASS-CONTAINER.
       PROCEDURE DIVISION.
      
       METHOD-ID. NEW.
       PROCEDURE DIVISION.
           INVOKE SELF "InitializeComponent".
       END METHOD NEW.
      
       METHOD-ID. DISPOSE AS "Dispose" OVERRIDE PROTECTED.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 TEMP-1 PIC 1.
       LINKAGE SECTION.
       01 disposing OBJECT REFERENCE CLASS-BOOLEAN.
       PROCEDURE DIVISION USING BY VALUE disposing.
           SET TEMP-1 TO disposing.
           IF TEMP-1 = B"1" THEN
             IF components NOT = NULL THEN
               INVOKE components "Dispose"
             END-IF
           END-IF.
           INVOKE SUPER "Dispose" USING BY VALUE disposing.
       END METHOD DISPOSE.
      
      * Required method for Designer support - do not modify
      * the contents of this method with the code editor.
       METHOD-ID. INITIALIZECOMPONENT AS "InitializeComponent" PRIVATE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 TEMP1 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP2 PIC S9(9) COMP-5.
       01 TEMP3 PIC S9(9) COMP-5.
       01 TEMP4 OBJECT REFERENCE CLASS-POINT.
       01 TEMP5 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP6 OBJECT REFERENCE CLASS-STRING.
       01 TEMP7 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP8 PIC S9(9) COMP-5.
       01 TEMP9 PIC S9(9) COMP-5.
       01 TEMP10 OBJECT REFERENCE CLASS-SIZE.
       01 TEMP11 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP12 PIC S9(9) COMP-5.
       01 TEMP13 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP14 OBJECT REFERENCE CLASS-STRING.
       01 TEMP15 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP16 PIC S9(9) COMP-5.
       01 TEMP17 PIC S9(9) COMP-5.
       01 TEMP18 OBJECT REFERENCE CLASS-SIZE.
       01 TEMP19 PIC S9(9) COMP-5.
       01 TEMP20 PIC S9(9) COMP-5.
       01 TEMP21 OBJECT REFERENCE CLASS-SIZE.
       01 TEMP22 OBJECT REFERENCE CLASS-CONTROLCOLLECTION.
       01 TEMP23 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP24 PIC S9(9) COMP-5.
       01 TEMP25 OBJECT REFERENCE ARRAY-CONTROL.
       01 TEMP26 OBJECT REFERENCE CLASS-STRING.
       01 TEMP27 OBJECT REFERENCE CLASS-STRING.
       01 TEMP28 OBJECT REFERENCE CLASS-BOOLEAN.
       PROCEDURE DIVISION.
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
      *<int32 value="32" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="32" />
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
      *<int32 value="88" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="23" />
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
      *<string value="Do Nothing" />
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
      *<int32 value="6" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="15" />
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
      *<int32 value="292" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="270" />
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
      *<string value="Form1" />
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
           INVOKE SELF "SuspendLayout"
      *
      *button1
      *
           MOVE 32 TO TEMP2
           MOVE 32 TO TEMP3
           INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP2 BY VALUE TEMP3 RETURNING TEMP4
           SET TEMP5 TO PROP-BUTTON1 OF SELF
           SET PROP-LOCATION OF TEMP5 TO TEMP4
           SET TEMP6 TO N"button1"
           SET TEMP7 TO PROP-BUTTON1 OF SELF
           SET PROP-NAME OF TEMP7 TO TEMP6
           MOVE 88 TO TEMP8
           MOVE 23 TO TEMP9
           INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP8 BY VALUE TEMP9 RETURNING TEMP10
           SET TEMP11 TO PROP-BUTTON1 OF SELF
           SET PROP-SIZE OF TEMP11 TO TEMP10
           MOVE 0 TO TEMP12
           SET TEMP13 TO PROP-BUTTON1 OF SELF
           MOVE TEMP12 TO PROP-TABINDEX OF TEMP13
           SET TEMP14 TO N"Do Nothing"
           SET TEMP15 TO PROP-BUTTON1 OF SELF
           SET PROP-TEXT OF TEMP15 TO TEMP14
      *
      *Form1
      *
           MOVE 6 TO TEMP16
           MOVE 15 TO TEMP17
           INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP16 BY VALUE TEMP17 RETURNING TEMP18
           SET PROP-AUTOSCALEBASESIZE OF SELF TO TEMP18
           MOVE 292 TO TEMP19
           MOVE 270 TO TEMP20
           INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP19 BY VALUE TEMP20 RETURNING TEMP21
           SET PROP-CLIENTSIZE OF SELF TO TEMP21
           MOVE 1 TO TEMP24
           INVOKE ARRAY-CONTROL "NEW" USING BY VALUE TEMP24 RETURNING TEMP25
           SET TEMP23 TO PROP-BUTTON1 OF SELF
           INVOKE TEMP25 "Set" USING BY VALUE 0 BY VALUE TEMP23
           SET TEMP22 TO PROP-CONTROLS OF SELF
           INVOKE TEMP22 "AddRange" USING BY VALUE TEMP25
           SET TEMP26 TO N"Form1"
           SET PROP-NAME OF SELF TO TEMP26
           SET TEMP27 TO N"Form1"
           SET PROP-TEXT OF SELF TO TEMP27
           SET TEMP28 TO B"0"
           INVOKE SELF "ResumeLayout" USING BY VALUE TEMP28
       END METHOD INITIALIZECOMPONENT.
      
       END OBJECT.
       END CLASS Form1.