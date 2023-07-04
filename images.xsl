<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Images</title>
      </head>
      <body>
        <h1>Images</h1>
        <table>
          <tr>
            <th>Image ID</th>
            <th>Title</th>
            <th>File</th>
            <th>City ID</th>
            <th>POI ID</th>
          </tr>
          <xsl:for-each select="images/image">
            <tr>
              <td><xsl:value-of select="image_id"/></td>
              <td><xsl:value-of select="title"/></td>
              <td><a href="{file}"><xsl:value-of select="file"/></a></td>
              <td><xsl:value-of select="city_id"/></td>
              <td><xsl:value-of select="poi_id"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
