<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="rdf:RDF">
    <html>
      <head>
        <title>Page FOAF</title>
      </head>
      <body>
        <h1>Page FOAF</h1>
        <xsl:apply-templates select="foaf:Person"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="foaf:Person">
    <div>
      <h2>À Propos de Moi</h2>
      <p>Nom : <xsl:value-of select="foaf:name"/></p>
      <p>Page d'accueil : <a href="{foaf:homepage/@rdf:resource}"><xsl:value-of select="foaf:homepage/@rdf:resource"/></a></p>
      <p>Adresse électronique : <a href="mailto:{foaf:mbox/@rdf:resource}"><xsl:value-of select="foaf:mbox/@rdf:resource"/></a></p>
    </div>
  </xsl:template>
</xsl:stylesheet>
