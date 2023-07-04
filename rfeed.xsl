<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:include href="cities.xsl"/>
  <xsl:include href="categories.xsl"/>
  <xsl:include href="images.xsl"/>
  <xsl:include href="pois.xsl"/>
  <xsl:include href="poi_categories.xsl"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>My Travel Guide</title>
      </head>
      <body>
        <h1>My Travel Guide</h1>
        <xsl:apply-templates select="cities"/>
        <xsl:apply-templates select="categories"/>
        <xsl:apply-templates select="images"/>
        <xsl:apply-templates select="pois"/>
        <xsl:apply-templates select="poi_categories"/>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
