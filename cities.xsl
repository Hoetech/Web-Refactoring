<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:template match="/">
    <html>
      <head>
        <title>Cities</title>
      </head>
      <body>
        <h1>Cities</h1>
        <table>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Country</th>
            <th>Description</th>
            <th>Latitude</th>
            <th>Longitude</th>
            <th>Population</th>
            <th>Currency</th>
            <th>Tags</th>
          </tr>
          <xsl:apply-templates select="cities/city"/>
        </table>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="city">
    <tr>
      <td><xsl:value-of select="city_id"/></td>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="country"/></td>
      <td><xsl:value-of select="description"/></td>
      <td><xsl:value-of select="latitude"/></td>
      <td><xsl:value-of select="longitude"/></td>
      <td><xsl:value-of select="population"/></td>
      <td><xsl:value-of select="currency"/></td>
      <td><xsl:value-of select="tags"/></td>
    </tr>
  </xsl:template>
  
</xsl:stylesheet>
