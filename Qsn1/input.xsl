<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="countries">
    <html>
      <body>
        <h2>Countries and their languages</h2>
        <table border="1">
          <tr>
            <td>Country name</td>
            <td>Population</td>
            <td>Area</td>
            <td>No. of Languages</td>
          </tr>
          <xsl:for-each select="country[count(language) &gt; 3]">
            <xsl:sort select="count(language)" order="descending" />
            <tr>
              <td><xsl:value-of select="@name"/></td>
              <td><xsl:value-of select="@population"/></td>
              <td><xsl:value-of select="@area"/></td>
              <td><xsl:value-of select="count(language)"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
