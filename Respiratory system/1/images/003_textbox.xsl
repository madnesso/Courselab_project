<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:msxsl="urn:schemas-microsoft-com:xslt"
				xmlns:websoft="http://www.websoft.ru"
				version="1.0">
<!--
'*	003_textbox.xsl
'*	Copyright (c) Websoft, 2007.  All rights reserved.
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

<table width="100%" border="0" cellpadding="0" cellspacing="0">
	<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_tbl</xsl:attribute>
	<tr>
		<td width="100%">
			<xsl:if test="onclick_hide='yes'"><xsl:attribute name="onclick">var oArgs = new Object; oArgs.pid = '<xsl:value-of select="$objectID"/>'; CallMethod('003_textbox', 'CloseObject', oArgs); return false;</xsl:attribute></xsl:if>
			<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_td</xsl:attribute>
			<xsl:attribute name="style">padding: <xsl:value-of select="margin"/>px; background-color: <xsl:value-of select="bgcolor" />;
				<xsl:if test="borderstyle!='none'"> border-color: <xsl:value-of select="bordercolor"/>; border-width: <xsl:value-of select="borderwidth"/>px; border-style: <xsl:value-of select="borderstyle"/>;</xsl:if>
			</xsl:attribute>
			<div>
				<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_div</xsl:attribute>
				<xsl:attribute name="style">cursor:default; width: 100%;
					<xsl:if test="overflow='fit'">overflow: visible; </xsl:if>
					<xsl:if test="overflow='scroll'">overflow: scroll;</xsl:if>
					<xsl:if test="overflow='scroll-y'">overflow: -moz-scrollbars-vertical;</xsl:if>
					<xsl:if test="overflow='scroll-x'">overflow: -moz-scrollbars-horizontal;</xsl:if>
					<xsl:if test="overflow='auto'">overflow: auto;</xsl:if>
					<xsl:if test="overflow='hidden'">overflow: hidden;</xsl:if>
				</xsl:attribute>
				<xsl:value-of select="textbox_text" disable-output-escaping="yes"/>
			</div>
		</td>
	</tr>
</table>

</xsl:template>
</xsl:stylesheet>
