<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:msxsl="urn:schemas-microsoft-com:xslt"
				xmlns:websoft="http://www.websoft.ru"
				version="1.0">
<!--
'*	splash_button_go.xsl
'*	Copyright (c) Websoft, 2006.  All rights reserved.
-->

<xsl:output method="xml" encoding="utf-8" omit-xml-declaration="yes"/>
<xsl:param name="imagesFolder"></xsl:param>
<xsl:param name="objectID"></xsl:param>

<!--		 Template: Root    -->

<xsl:template match="/">
	<xsl:apply-templates select="params"/>
</xsl:template>

<!--		 Template: Params    -->

<xsl:template match="params">
	<xsl:if test="standard='yes'">
		<img border="0" width="166" height="31" style="cursor:hand;cursor:pointer;">
			<xsl:attribute name="src"><xsl:value-of select="$imagesFolder"/>button_start1.gif</xsl:attribute>
			<xsl:attribute name="onclick">this.src = '<xsl:value-of select="$imagesFolder"/>button_wait.gif'; StartModule();return false;</xsl:attribute>
		</img>
	</xsl:if>
	<xsl:if test="standard='no'">
		<img border="0" style="cursor:hand;cursor:pointer;">
			<xsl:attribute name="src"><xsl:value-of select="go_img"/></xsl:attribute>
			<xsl:attribute name="onclick">this.src = '<xsl:value-of select="wait_img"/>';StartModule();return false;</xsl:attribute>
		</img>
	</xsl:if>
</xsl:template>

</xsl:stylesheet>
