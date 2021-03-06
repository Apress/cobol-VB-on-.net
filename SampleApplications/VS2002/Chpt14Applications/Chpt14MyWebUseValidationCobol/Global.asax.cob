       IDENTIFICATION DIVISION.
       CLASS-ID. GLOBAL-CLASS AS "MyWebUseValidationCobol.AppGlobal" INHERITS CLASS-HTTPAPPLICATION.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       REPOSITORY.
           CLASS CLASS-EVENTARGS AS "System.EventArgs"
           CLASS CLASS-OBJECT AS "System.Object"
           CLASS CLASS-HTTPAPPLICATION AS "System.Web.HttpApplication"
           .
      
       STATIC.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
      
       END STATIC.
      
       OBJECT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
      
       METHOD-ID. NEW.
       PROCEDURE DIVISION.
           INVOKE SELF "InitializeComponent".
       END METHOD NEW.
      
       METHOD-ID. APPLICATION_START AS "Application_Start" IS PROTECTED.
       DATA DIVISION.
       LINKAGE SECTION.
       01 PARAM-SENDER OBJECT REFERENCE  CLASS-OBJECT.
       01 PARAM-E OBJECT REFERENCE CLASS-EVENTARGS.
       PROCEDURE DIVISION USING BY VALUE PARAM-SENDER PARAM-E.
           
       END METHOD APPLICATION_START.
      
       METHOD-ID. SESSION_START AS "Session_Start" IS PROTECTED.
       DATA DIVISION.
       LINKAGE SECTION.
       01 PARAM-SENDER OBJECT REFERENCE  CLASS-OBJECT.
       01 PARAM-E OBJECT REFERENCE CLASS-EVENTARGS.
       PROCEDURE DIVISION USING BY VALUE PARAM-SENDER PARAM-E.
           
       END METHOD SESSION_START.
      
       METHOD-ID. APPLICATION_BEGINREQUEST AS "Application_BeginRequest" IS PROTECTED.
       DATA DIVISION.
       LINKAGE SECTION.
       01 PARAM-SENDER OBJECT REFERENCE  CLASS-OBJECT.
       01 PARAM-E OBJECT REFERENCE CLASS-EVENTARGS.
       PROCEDURE DIVISION USING BY VALUE PARAM-SENDER PARAM-E.
           
       END METHOD APPLICATION_BEGINREQUEST.
      
       METHOD-ID. APPLICATION_ENDREQUEST AS "Application_EndRequest" IS PROTECTED.
       DATA DIVISION.
       LINKAGE SECTION.
       01 PARAM-SENDER OBJECT REFERENCE  CLASS-OBJECT.
       01 PARAM-E OBJECT REFERENCE CLASS-EVENTARGS.
       PROCEDURE DIVISION USING BY VALUE PARAM-SENDER PARAM-E.
           
       END METHOD APPLICATION_ENDREQUEST.
      
       METHOD-ID. APPLICATION_AUTHREQUEST AS "Application_AuthenticateRequest" IS PROTECTED.
       DATA DIVISION.
       LINKAGE SECTION.
       01 PARAM-SENDER OBJECT REFERENCE  CLASS-OBJECT.
       01 PARAM-E OBJECT REFERENCE CLASS-EVENTARGS.
       PROCEDURE DIVISION USING BY VALUE PARAM-SENDER PARAM-E.
           
       END METHOD APPLICATION_AUTHREQUEST.
      
       METHOD-ID. APPLICATION_ERROR AS "Application_Error" IS PROTECTED.
       DATA DIVISION.
       LINKAGE SECTION.
       01 PARAM-SENDER OBJECT REFERENCE  CLASS-OBJECT.
       01 PARAM-E OBJECT REFERENCE CLASS-EVENTARGS.
       PROCEDURE DIVISION USING BY VALUE PARAM-SENDER PARAM-E.
           
       END METHOD APPLICATION_ERROR.
      
       METHOD-ID. SESSION_END AS "Session_End" IS PROTECTED.
       DATA DIVISION.
       LINKAGE SECTION.
       01 PARAM-SENDER OBJECT REFERENCE  CLASS-OBJECT.
       01 PARAM-E OBJECT REFERENCE CLASS-EVENTARGS.
       PROCEDURE DIVISION USING BY VALUE PARAM-SENDER PARAM-E.
           
       END METHOD SESSION_END.
      
       METHOD-ID. APPLICATION_END AS "Application_End" IS PROTECTED.
       DATA DIVISION.
       LINKAGE SECTION.
       01 PARAM-SENDER OBJECT REFERENCE  CLASS-OBJECT.
       01 PARAM-E OBJECT REFERENCE CLASS-EVENTARGS.
       PROCEDURE DIVISION USING BY VALUE PARAM-SENDER PARAM-E.
           
       END METHOD APPLICATION_END.
      
      * Required method for Designer support - do not modify
      * the contents of this method with the code editor.
       METHOD-ID. INITIALIZECOMPONENT AS "InitializeComponent" IS PRIVATE.
       PROCEDURE DIVISION.
      *>>IMP BEGIN-EMBEDDED-CODEDOM
      *<embedded-codedom>
      *</embedded-codedom>
      *>>IMP END-EMBEDDED-CODEDOM
       END METHOD INITIALIZECOMPONENT.
      
       END OBJECT.
       END CLASS GLOBAL-CLASS.
