      <?xml version='1.0'?>
<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>  
<xsl:template match="/">
<html>
    <head>
	<title>Grades Results By Student</title>
    </head>
    <body>
	<table border="1">
	    <tr>
		<th>student</th>
		<th>test_scores</th>
		<th>homework_scores</th>
		<th>quiz_scores</th>
	    </tr>
	    <xsl:for-each select="grades/student">
		<!-- order the result by test_scores -->
		<xsl:sort select="test_scores"
			  data-type="number"
			  order="descending"/>
		<tr>
		    <td>
			<em><xsl:value-of select="@id"/></em>
		    </td>
		    <td>
			<xsl:if test="test_scores &gt; 150">
			     <xsl:attribute name="style">
				 <xsl:text>color:red</xsl:text>
			     </xsl:attribute>
			</xsl:if>
			<xsl:value-of select="test_scores"/>
		    </td>
		    <td>
			
			<xsl:value-of select="homework_scores"/>
		    </td>
		    <td>
			<xsl:value-of select="quiz_scores"/>
		    </td>
		</tr>
	    </xsl:for-each>
	</table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>