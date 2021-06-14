<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:msxsl="urn:schemas-microsoft-com:xslt"
				xmlns:websoft="http://www.websoft.ru"
				version="1.0">
<!--
'*	media_001_flash#.xsl
'*	Copyright (c) Websoft, 2006.  All rights reserved.
-->
<xsl:output method="xml" encoding="utf-8" omit-xml-declaration="yes"/>
<xsl:param name="imagesFolder"></xsl:param>
<xsl:param name="objectID"></xsl:param>
<!--		 Template: Root    -->
<xsl:template match="/">
	<xsl:apply-templates select="params"/>
</xsl:template>
<!-- Template: Params -->
<xsl:template match="params">
<div>
	<xsl:attribute name="id"><xsl:value-of select="$objectID" />_flashcontainer</xsl:attribute>
	<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" style="position:relative; z-index:0; top:0px; left:0px;">
		<xsl:attribute name="id"><xsl:value-of select="$objectID" />_flashobj</xsl:attribute>
		<xsl:attribute name="width">100%</xsl:attribute>
		<xsl:attribute name="height">100%</xsl:attribute>
		<param name="movie">
			<xsl:attribute name="value">
				<xsl:if test="ffile='yes'"><xsl:value-of select="flash_uri" /></xsl:if>
				<xsl:if test="fURL='yes'"><xsl:value-of select="flash_url" /></xsl:if>
			</xsl:attribute>
		</param>
		<param name="wmode">
			<xsl:attribute name="value"><xsl:value-of select="flash_wmode" /></xsl:attribute>
		</param>
		<param name="quality" value="high"/>
		<param name="bgcolor">
			<xsl:attribute name="value"><xsl:value-of select="flash_bgcolor" /></xsl:attribute>
		</param>
		<xsl:for-each select="param_list/item">
			<param>
				<xsl:attribute name="name"><xsl:value-of select="a_param/text()"/></xsl:attribute>
				<xsl:attribute name="value"><xsl:value-of select="a_param_value/text()"/></xsl:attribute>
			</param>
		</xsl:for-each>
		<embed 	quality="high" type="application/x-shockwave-flash" pluginspace="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash">
			<xsl:attribute name="name"><xsl:value-of select="$objectID" />_flashembed</xsl:attribute>
			<xsl:attribute name="id"><xsl:value-of select="$objectID" />_flashembed</xsl:attribute>
			<xsl:attribute name="src">
				<xsl:if test="ffile='yes'"><xsl:value-of select="flash_uri" /></xsl:if>
				<xsl:if test="fURL='yes'"><xsl:value-of select="flash_url" /></xsl:if>
			</xsl:attribute>
			<xsl:attribute name="bgcolor"><xsl:value-of select="flash_bgcolor" /></xsl:attribute>
			<xsl:attribute name="width">100%</xsl:attribute>
			<xsl:attribute name="height">100%</xsl:attribute>
			<xsl:attribute name="swliveconnect">true</xsl:attribute>
			<xsl:for-each select="param_list/item">
				<xsl:attribute name="{a_param/text()}"><xsl:value-of select="a_param_value/text()"/></xsl:attribute>
			</xsl:for-each>
		</embed>
	</object>
</div>
</xsl:template>
</xsl:stylesheet>
