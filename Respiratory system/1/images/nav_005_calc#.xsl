<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:msxsl="urn:schemas-microsoft-com:xslt"
				xmlns:websoft="http://www.websoft.ru"
				version="1.0">
<!--
'*	nav_005_calc#.xsl
'*	Copyright (c) Websoft, 2007.  All rights reserved.
-->
<xsl:output method="xml" encoding="utf-8" omit-xml-declaration="yes"/>
<xsl:param name="objectID"></xsl:param>
<xsl:param name="imagesFolder"></xsl:param>
<xsl:param name="moduleImagesFolder"></xsl:param>
<!--		 Template: Root    -->
<xsl:template match="/">
	<xsl:apply-templates select="params"/>
</xsl:template>
<!--		 Template: Params    -->
<xsl:template match="params">
	<div>
		<xsl:if test="standard='yes'">
			<xsl:attribute name="style">position:absolute; z-index:1; top: 0px; left: 0px; width: 25px; <xsl:if test="standard='yes'">height: 460px;</xsl:if><xsl:if test="standard='no'">height: <xsl:value-of select="tab_height"/>px;</xsl:if> padding-top: <xsl:value-of select="tab_offset"/>px;</xsl:attribute>
			<img border="0">
				<xsl:attribute name="src"><xsl:value-of select="$imagesFolder"/><xsl:value-of select="tabcolor"/>\tab_calc_0.gif</xsl:attribute>
			</img>
		</xsl:if>
		<xsl:if test="standard='no'">
			<xsl:attribute name="style">position:absolute; z-index:1; top: 0px; left: 0px; <xsl:if test="standard='yes'">height: 460px;</xsl:if><xsl:if test="standard='no'">height: <xsl:value-of select="tab_height"/>px; padding-top: <xsl:value-of select="tab_offset"/>px;</xsl:if></xsl:attribute>
			<img border="0">
				<xsl:attribute name="src"><xsl:value-of select="substring-before($moduleImagesFolder,'images\')"/><xsl:value-of select="translate(n1_img,'/','\')"/></xsl:attribute>
			</img>
		</xsl:if>
	</div>
</xsl:template>
</xsl:stylesheet>
