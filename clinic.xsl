<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="clinic">
  <html>
  <body>
    <h2>Clinic patients</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Name</th>
        <th>Age</th>
        <th>Country</th>
        <th>Image</th>
      </tr>
      <xsl:for-each select="patient">
        <tr>
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="age"/></td>
            <td><xsl:value-of select="country"/></td>
            <td>
                <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="image"/>
                    </xsl:attribute>
                </img>
            </td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>