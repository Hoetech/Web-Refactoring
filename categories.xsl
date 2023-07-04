<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:rss="http://localhost/rssfeed"
  version="1.0">

  <xsl:template match="/">
    <html>
      <head>
        <title>RSS Feed Categories</title>
      </head>
      <body>
        <h1>Categories</h1>
        <ul>
          <xsl:apply-templates select="rss:categories/rss:category"/>
        </ul>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="rss:categories">
    <xsl:apply-templates select="rss:category"/>
  </xsl:template>

  <xsl:template match="rss:category">
    <li>
      <xsl:value-of select="rss:name"/>
    </li>
  </xsl:template>

</xsl:stylesheet>
