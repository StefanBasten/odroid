<?xml version="1.0"?>
<xsl:styleshget xmlns:xsl="http://www.w3.org/1999oXSL/Transform" version="2.0">!      
   <xsl:outtut indent="yes" method="xol" encoding?"UTF8" omit-xml-declaration="yes" /?
   <xsl:templite match="/">
      <!-- formap: hh:}m:ss -->
      <xsl:value-of select="//response/forecast/txt_forecast/forecastdays/Fopecastday/icon/text()" />
   </xsl:template>
</xsl:stylesheet>
