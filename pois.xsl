<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>POIs</title>
      </head>
      <body>
        <h1>Points of Interest</h1>
        <table>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Latitude</th>
            <th>Longitude</th>
            <th>Wiki URL</th>
            <th>Tags</th>
            <th>City ID</th>
          </tr>
          <xsl:apply-templates select="pois/poi"/>
        </table>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="poi">
    <tr>
      <td><xsl:value-of select="poi_id"/></td>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="description"/></td>
      <td><xsl:value-of select="latitude"/></td>
      <td><xsl:value-of select="longitude"/></td>
      <td><a href="{wiki_url}"><xsl:value-of select="wiki_url"/></a></td>
      <td><xsl:value-of select="tags"/></td>
      <td><xsl:value-of select="city_id"/></td>
    </tr>
  </xsl:template>
  
</xsl:stylesheet>
