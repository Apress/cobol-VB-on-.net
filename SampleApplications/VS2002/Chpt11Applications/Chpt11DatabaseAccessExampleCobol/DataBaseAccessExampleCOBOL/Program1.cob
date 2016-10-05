000010* Sample Code using ADO.NET Technology 
000020 IDENTIFICATION DIVISION.
000030 PROGRAM-ID. MAIN.
000040 ENVIRONMENT DIVISION.
000050 CONFIGURATION SECTION.
000060 REPOSITORY.
000070* .NET Framework Classes
000080	   CLASS SqlConnection  AS "System.Data.SqlClient.SqlConnection"
000090     CLASS SqlDataAdapter As "System.Data.SqlClient.SqlDataAdapter"
000100     CLASS SqlCommand As "System.Data.SqlClient.SqlCommand"
000110     CLASS SqlDataReader As "System.Data.SqlClient.SqlDataReader"
000120     CLASS DataSet    As "System.Data.DataSet"
000130     CLASS DataTable  AS "System.Data.DataTable"
000140     CLASS DataRow    As "System.Data.DataRow"
000150     CLASS DataColumn AS "System.Data.DataColumn"
000160     CLASS DataRowCollection AS "System.Data.DataRowCollection"
000170     CLASS SystemType        AS "System.Type"
000180     CLASS DataColumnArray   AS "System.Data.DataColumn[]"
000190
000200     CLASS Sys-Integer      AS "System.Int32"
000210     CLASS Sys-String       AS "System.String"
000220     CLASS Sys-Objects      AS "System.Object[]"
000230     CLASS Sys-Object       AS "System.Object"    
000240
000250* .NET Framework Properties 
000260     PROPERTY PROP-ConnectionString AS "ConnectionString"
000270     PROPERTY PROP-Connection       AS "Connection"
000280     PROPERTY PROP-CommandText      AS "CommandText"
000290     PROPERTY PROP-SelectCommand    AS "SelectCommand"
000300     PROPERTY PROP-Columns          AS "Columns"
000310     PROPERTY PROP-Tables           AS "Tables"
000320     PROPERTY PROP-Rows             AS "Rows"
000330     PROPERTY PROP-DataType         AS "DataType"
000340     PROPERTY PROP-ColumnName       AS "ColumnName"
000350     PROPERTY PROP-Count            AS "Count"
000360     PROPERTY PROP-Item             AS "Item"
000370     PROPERTY PROP-ItemArray        AS "ItemArray"
000380     PROPERTY PROP-PrimaryKey       AS "PrimaryKey"
000390     PROPERTY PROP-Unique           AS "Unique".
000400*
000410 DATA DIVISION.
000420 WORKING-STORAGE SECTION.
000430   77 mySqlConnection  OBJECT REFERENCE SqlConnection.
000440   77 mySqlDataAdapter OBJECT REFERENCE SqlDataAdapter.
000450   77 mySqlCommand     OBJECT REFERENCE SqlCommand.
000460   77 mySqlDataReader  OBJECT REFERENCE SqlDataReader.
000470   77 myDataSet        OBJECT REFERENCE DataSet.
000480   77 myDataTable      OBJECT REFERENCE DataTable.
000490   77 myDataRow        OBJECT REFERENCE DataRow.
000500   77 myDataColumn     OBJECT REFERENCE DataColumn.
000510   77 myPrimaryKeyColumn  OBJECT REFERENCE DataColumn.
000520   77 myPrimaryKeyColumns OBJECT REFERENCE DataColumnArray.
000530   77 myDataRowCollection OBJECT REFERENCE DataRowCollection.
000540
000550
000560   77 mySys-String  OBJECT REFERENCE Sys-String.
000570   77 mySys-Integer OBJECT REFERENCE Sys-Integer.
000580   77 mySys-Objects OBJECT REFERENCE Sys-Objects.
000590   77 mySys-Object  OBJECT REFERENCE Sys-Object.
000600   77 myDisplayString PIC x(30).
000610   77 myInt           PIC S9(9) COMP-5.
000620   77 myOtherInt      PIC S9(9) COMP-5.
000630   77 NOT-END-OF-READ PIC 1 USAGE BIT.
000640   01 NULL-X          PIC X(1).
000650 PROCEDURE DIVISION.
000660
000670     Perform 0000-OptionalPreTableBuild.
000680	   Perform 1000-UseSqlDataAdapter.
000690     DISPLAY " "
000700     Perform 2000-UseSqlDataReader.
000710     
000720     DISPLAY "Enter X and Press Enter to Exit.".
000730     ACCEPT NULL-X.
000740     Stop Run.
000750     
000760************************************************
000770   0000-OptionalPreTableBuild.
000780*  It is possible to obtain the "schema" or table structure
000790*  directly/automatically from the SQL Server Database
000800*  This section is added for training purposes.
000810*  The information found in this section would be critical
000820*  in the case of building a disconnected .NET dataset
000830*  that may have a non-SQL Server Data Source.
000840
000850* Create a new DataTable.
000860     INVOKE DataTable "NEW" USING BY VALUE "myCategories"
000870         RETURNING myDataTable.
000880
000890* Create 1st myDataColumn.
000900     INVOKE DataColumn "NEW" RETURNING myDataColumn.
000910     SET PROP-DataType OF myDataColumn TO
000920         SystemType::"GetType"("System.Int32").
000930     SET PROP-ColumnName OF myDataColumn TO "CategoryID".
000940     SET PROP-Unique OF myDataColumn TO B"1".
000950     INVOKE PROP-Columns OF myDataTable "Add" 
000960       USING BY VALUE myDataColumn.
000970     
000980* Create 2nd myDataColumn.
000990     INVOKE DataColumn "NEW" RETURNING myDataColumn.
001000     SET PROP-DataType OF myDataColumn TO
001010         SystemType::"GetType"("System.String").
001020     SET PROP-ColumnName OF myDataColumn TO "CategoryName".
001030     INVOKE PROP-Columns OF myDataTable "Add" 
001040       USING BY VALUE myDataColumn.
001050     
001060* Create 3rd myDataColumn.
001070     INVOKE DataColumn "NEW" RETURNING myDataColumn.
001080     SET PROP-DataType OF myDataColumn TO
001090         SystemType::"GetType"("System.String").
001100     SET PROP-ColumnName OF myDataColumn TO "Description".
001110     INVOKE PROP-Columns OF myDataTable "Add" 
001120       USING BY VALUE myDataColumn.
001130     
001140* Create 4th myDataColumn.
001150     INVOKE DataColumn "NEW" RETURNING myDataColumn.
001160     SET PROP-DataType OF myDataColumn TO
001170         SystemType::"GetType"("System.Byte[]").
001180     SET PROP-ColumnName OF myDataColumn TO "Picture".
001190     INVOKE PROP-Columns OF myDataTable "Add" 
001200       USING BY VALUE myDataColumn.
001210     
001220* Assign primary key column to CategoryID column.
001230     INVOKE DataColumnArray "NEW" USING BY VALUE 1
001240         RETURNING myPrimaryKeyColumns.
001250     INVOKE PROP-Columns OF myDataTable "get_Item" 
001260       USING BY VALUE "CategoryID"
001270       RETURNING myPrimaryKeyColumn.
001280     INVOKE myPrimaryKeyColumns "Set" 
001290       USING BY VALUE 0 myPrimaryKeyColumn.
001300     SET PROP-PrimaryKey OF myDataTable TO myPrimaryKeyColumns.
001310     
001320* Reference the DataSet.
001330     INVOKE DataSet "NEW" RETURNING myDataSet.
001340* Associate the Table with the Dataset.
001350     INVOKE PROP-Tables OF myDataSet "Add" 
001360       USING BY VALUE myDataTable.
001370
001380************************************************
001390   1000-UseSqlDataAdapter.
001400   
001410*  Reference Data Provider Objects
001420		INVOKE SqlConnection "NEW"  RETURNING  mySqlConnection 
001430      INVOKE SqlDataAdapter "NEW" RETURNING  mySqlDataAdapter 
001440      INVOKE SqlCommand "NEW"     RETURNING  mySqlCommand
001450      
001460*  Prepare to Connect to SQL Server Database
001470*  using Connection String
001480      SET PROP-ConnectionString OF mySqlConnection TO
001490      "user id=sa;pwd=;Database=northwind;Server=(LOCAL)"
001500		
001510*  Associate the Command Object with the Connection Object
001520      SET PROP-Connection OF mySqlCommand TO mySqlConnection    
001530*  Associate the Command Object with intended SQL Statement
001540      SET PROP-CommandText OF mySqlCommand TO "Select * from Categories"
001550*  Associate the DataAdapter Object with the Command Object
001560      SET PROP-SelectCommand OF mySqlDataAdapter TO mySqlCommand
001570
001580*  Have the DataAdapter Object Execute the SQL Statement and
001590*  store the result set in a DataSet DataTable named myCategories
001600     INVOKE mySqlDataAdapter "Fill" 
001610       USING BY VALUE myDataSet, "myCategories"
001620     
001630*  Loop through the Dataset DataTable
001640*  Write out one DataColumn per DataRow
001650     INVOKE PROP-Tables OF myDataSet "get_Item" 
001660		   USING BY VALUE "myCategories"
001670         RETURNING myDataTable    
001680     
001690       SET myDataRowCollection to PROP-Rows OF myDataTable
001700       SET mySys-Integer to PROP-Count of myDataRowCollection
001710  
001720		 SET myOtherInt TO mySys-Integer
001730		 PERFORM VARYING myInt 
001740			FROM 1 BY 1 UNTIL myInt > myOtherInt
001750   
001760			INVOKE PROP-Rows OF myDataTable "Find" 
001770			USING BY VALUE myInt RETURNING myDataRow
001780         
001790			SET mySys-Objects TO PROP-ItemArray OF myDataRow
001800			INVOKE mySys-Objects "Get" 
001810			  USING BY VALUE 1 RETURNING mySys-Object
001820			SET myDisplayString to mySys-Object::"ToString" ()
001830			DISPLAY myDisplayString
001840	     END-PERFORM.
001850
001860*  Close the Database Connection
001870      INVOKE mySqlConnection "Close".
001880      
001890      SET mySqlConnection TO NULL.
001900      SET mySqlDataAdapter TO NULL.
001910      SET mySqlCommand TO NULL.
001920      SET myDataTable TO NULL.
001930
001940************************************************
001950   2000-UseSqlDataReader.
001960   
001970*  Reference Data Provider Objects
001980		INVOKE SqlConnection "NEW"  RETURNING  mySqlConnection 
001990      INVOKE SqlCommand "NEW"     RETURNING  mySqlCommand
002000      
002010*  Connect to SQL Server Database using Connection String
002020      SET PROP-ConnectionString OF mySqlConnection TO
002030      "user id=sa;pwd=;Database=northwind;Server=(LOCAL)"
002040      INVOKE mySqlConnection "Open"
002050		
002060*  Associate the Command Object with the Connection Object
002070      SET PROP-Connection OF mySqlCommand TO mySqlConnection    
002080*  Associate the Command Object with intended SQL Statement
002090      SET PROP-CommandText OF mySqlCommand TO "Select * from Categories"
002100      
002110*  Have the DataReader Object Execute the SQL Statement and
002120*  store the result set in a DataReader Object
002130      SET mySqlDataReader TO mySqlCommand::"ExecuteReader" () 
002140
002150*  Loop through the DataReader Object, Advancing to each Record
002160*  Write out one Column per Record
002170		 SET NOT-END-OF-READ TO mySqlDataReader::"Read" () 
002180		 PERFORM UNTIL NOT-END-OF-READ = B'0'
002190			SET myDisplayString to mySqlDataReader::"GetString" (1)
002200			DISPLAY myDisplayString
002210          SET NOT-END-OF-READ TO mySqlDataReader::"Read" () 
002220	     END-PERFORM.
002230
002240*   Close the DataReader
002250      INVOKE mySqlDataReader "Close".
002260*   Close the Database Connection
002270      INVOKE mySqlConnection "Close".
002280      
002290      SET mySqlConnection TO NULL.
002300      SET mySqlCommand TO NULL.
002310
002320 END PROGRAM MAIN.