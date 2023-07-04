<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>POI Categories</title>
      </head>
      <body>
        <h1>POI Categories</h1>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>ID</th>
            <th>Category ID</th>
            <th>POI ID</th>
          </tr>
          <xsl:apply-templates select="poi_categories/poi_cat"/>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="poi_cat">
    <tr>
      <td><xsl:value-of select="@id"/></td>
      <td><xsl:value-of select="category_id"/></td>
      <td><xsl:value-of select="poi_id"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
