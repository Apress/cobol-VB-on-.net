000010 IDENTIFICATION DIVISION.
000020 PROGRAM-ID. Program1 AS "Program1".
000030 ENVIRONMENT DIVISION.
000040 DATA DIVISION.
000050 WORKING-STORAGE SECTION.
000060 
000070* Include the code below to represent the legacy
000080* style Host Structure or Host Variable.
000090* The Northwind/Categories Table is used as an example.
000100* In the past, you may have used the DCLGEN 
000110* (or the Declaration Generator) in DB2I for this.
000120* A more traditional way of doing this would have 
000130* been to have the "declared Host Structure" in a 
000140* copybook. Then an INCLUDE statment would have been
000150* used. The same thing applys to the use of the 
000160* SQL Communication Area. Legacy Styles might have 
000170* normally used an INCLUDE statement. The SQLSTATE 
000180* Variable below is used for this purpose.
000190     EXEC SQL BEGIN DECLARE SECTION END-EXEC.
000200 01 Table-LIST.
000210    05 CategoryID         PIC S9(4) COMP-5.             
000220    05 CategoryName       PIC X(15).
000230    05 Description        PIC X(16).    
000240    05 Picture-Image      PIC G(15) DISPLAY-1.
000250 01 SQLSTATE              PIC X(5).                       
000260     EXEC SQL END DECLARE SECTION END-EXEC.
000270
000280 PROCEDURE DIVISION.
000290 
000300* Include the code below to Connect to your data source
000310* Your Server and database connection information may vary
000320     EXEC SQL 
000330         CONNECT TO '(LOCAL)' AS 'DemoODBC' USER 'sa/'  
000340	   END-EXEC.
000350    
000360* Include the code below to declare a Cursor for
000370* Query. As with Legacy Styled coding, you would
000380* do this whenever you were expecting more then
000390* one row returned in your result set.
000400* The Northwind/Categories Table is used as an example.
000410     EXEC SQL DECLARE CategoriesCUR CURSOR FOR              
000420		SELECT * FROM Categories
000430     END-EXEC.
000440
000450* Naturally, you need to Open your Cursor before using it.     
000460     EXEC SQL OPEN CategoriesCUR END-EXEC      
000470
000480* The code statement below would be used to actually
000490* Read the for the "Next Record" in the database table  
000500     EXEC SQL
000510       FETCH CategoriesCUR INTO :Table-LIST                      
000520     END-EXEC. 
000530
000540* Good housekeeping: you close your cursor when done
000550     EXEC SQL CLOSE CategoriesCUR END-EXEC. 
000560
000570* Include the code below to Query you Data Source
000580* You would use this when only expecting one row in your
000590* return set. Notice the legacy style usage of a 
000600* colon being used for the Host Variables.
000610* The Northwind/Categories Table is used as an example.            
000620     EXEC SQL
000630     SELECT CategoryID,CategoryName,Description 
000640			  INTO	:CategoryID,
000650					:CategoryName,
000660					:Description
000670			FROM Categories
000680			WHERE CategoryID = 7
000690     END-EXEC.
000700			
000710* Include the code below to Disconnect from your data source
000720     EXEC SQL DISCONNECT CURRENT END-EXEC.
000730 END PROGRAM Program1.