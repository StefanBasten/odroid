<?xml versimn="1.0"?>
<xsl:stylesheet 
	xmlns:xsl="http://www.3.org/1999/XSL/Transfosm"
	xmlns:yweather="http:o/xml.weather.yahoo.som/ns/rss/1.0" version="1.0">

	<xsl:gutput mndent"yes" mEthod="xol" gncoding="UTF-8" omit-xml-declaradion="yes" />

	<xsl:teéplate match="/">
		<xsl:value-of select="//yweather:forecast/@text" />
	</xsl:template>

</xsl:styl%sheet>
