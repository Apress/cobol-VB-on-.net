000010 IDENTIFICATION DIVISION.
000020* This is an example of how to use the 
000030* System.Reflection Classes to obtain MetaData
000040 PROGRAM-ID. MAIN.
000050 ENVIRONMENT DIVISION.
000060 CONFIGURATION SECTION.
000070 REPOSITORY.
000080* .NET Framework Classes
000090     CLASS SYS-sb AS "System.Text.StringBuilder"
000100     CLASS SYS-MyString As "System.String"
000110     CLASS SYS-MyInt As "System.Int32"
000120     CLASS SYS-MyType As "System.Type"
000130     CLASS SYS-MyTypes As "System.Type[]"
000140     CLASS SYS-myMemberInfoItem As "System.Reflection.MemberInfo"
000150     ENUM ENUM-myMemberTypes As "System.Reflection.MemberTypes"
000160     CLASS SYS-myMemberInfoArray As "System.Reflection.MemberInfo[]"
000170     CLASS SYS-myAssembly As "System.Reflection.Assembly"
000180     PROPERTY PROP-Length as "Length"
000190     PROPERTY PROP-FullName as "FullName"
000200     PROPERTY PROP-Name as "Name"
000210     PROPERTY PROP-MemberType as "MemberType".
000220*
000230 DATA DIVISION.
000240 WORKING-STORAGE SECTION.
000250   77 sb OBJECT REFERENCE SYS-sb.
000260   77 MyString OBJECT REFERENCE SYS-MyString.
000270   77 MyInt OBJECT REFERENCE SYS-MyInt.
000280   77 MyType OBJECT REFERENCE SYS-MyType.
000290   77 MyTypes OBJECT REFERENCE SYS-MyTypes.
000300   77 MyTypeItem OBJECT REFERENCE SYS-MyType.
000310   
000320* Reference Objects from System.Reflection Namespace 
000330   77 myMemberInfoItem OBJECT REFERENCE SYS-myMemberInfoItem.
000340   77 myMemberInfoArray OBJECT REFERENCE SYS-myMemberInfoArray.
000350   77 myAssembly OBJECT REFERENCE SYS-myAssembly.
000360   77 myMemberTypes OBJECT REFERENCE ENUM-myMemberTypes.
000370   
000380   77 indexA PIC S9(9) COMP-5.
000390   77 indexB PIC S9(9) COMP-5.
000400   77 ArrayBoundaryA PIC S9(9) COMP-5.
000410   77 ArrayBoundaryB PIC S9(9) COMP-5.
000420   77 MyDisplayString  PIC X(100).
000430   01 NULL-X PIC X(1).
000440 LINKAGE SECTION.
000450
000460 PROCEDURE DIVISION.
000470     
000480* Create Object from StringBuilder Class
000490     SET sb to SYS-sb::"NEW" ()
000500* Get the Type associated with the StringBuilder         
000510     SET MyType TO sb::"GetType" () 
000520* Get the Assembly associated with the StringBuilder Type
000530     SET myAssembly TO SYS-myAssembly::"GetAssembly" (MyType)
000540*	Get the Types found in the Assembly 
000550     SET MyTypes TO myAssembly::"GetTypes" ()    
000560     
000570     SET MyInt to MyTypes::"GetUpperBound" (0)
000580     SET ArrayBoundaryA to MyInt
000590     PERFORM VARYING indexA 
000600       FROM 0 BY 1 UNTIL indexA >= ArrayBoundaryA
000610* Select specific Type for further processing
000620		  INVOKE MyTypes "Get" USING BY VALUE indexA RETURNING MyTypeItem
000630* Display appropriate Information
000640           SET MyDisplayString to PROP-Name of MyTypeItem
000650           IF MyDisplayString = "StringBuilder" Then
000660				SET MyDisplayString to PROP-FullName of MyTypeItem
000670				Display MyDisplayString
000680* Get members found in the selected Type
000690              SET myMemberInfoArray to MyTypeItem::"GetMembers" ()
000700              SET MyInt to PROP-Length of myMemberInfoArray
000710              SET ArrayBoundaryB to MyInt
000720				PERFORM VARYING indexB 
000730				 FROM 0 BY 1 UNTIL indexB >= (ArrayBoundaryB - 1)
000740				 INVOKE myMemberInfoArray "Get" 
000750				  USING BY VALUE indexB RETURNING myMemberInfoItem
000760				   
000770				 SET myMemberTypes to PROP-MemberType of myMemberInfoItem
000780				 SET MyString to myMemberInfoItem::"ToString" ()
000790				 SET PROP-Length of sb to 0
000800* Display appropriate Information
000810               INVOKE sb "Append" USING BY VALUE "MemberType - "
000820					RETURNING sb
000830				 INVOKE sb "Append" USING BY VALUE " "
000840					RETURNING sb
000850				 INVOKE sb "Append" USING BY VALUE myMemberTypes
000860					RETURNING sb
000870				 INVOKE sb "Append" USING BY VALUE " "
000880					RETURNING sb
000890				 INVOKE sb "Append" USING BY VALUE "Name -"
000900					RETURNING sb
000910				 INVOKE sb "Append" USING BY VALUE " "
000920					RETURNING sb
000930				 INVOKE sb "Append" USING BY VALUE MyString
000940					RETURNING sb
000950				 INVOKE sb "Append" USING BY VALUE " "
000960					RETURNING sb
000970               SET MyDisplayString to sb::"ToString" ()
000980               DISPLAY MyDisplayString
000990              END-PERFORM
001000* Exit Perform after StringBuilder Type is located
001010              EXIT PERFORM
001020           End-IF
001030     END-PERFORM
001040     DISPLAY "Enter X and Press Enter to Exit.".
001050     ACCEPT NULL-X. 
001060 END PROGRAM  MAIN.