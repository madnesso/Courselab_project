<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:msxsl="urn:schemas-microsoft-com:xslt"
				xmlns:websoft="http://www.websoft.ru"
				version="1.0">
<!--
'*	nav_002_position#.xsl
'*	Copyright (c) Websoft, 2007.  All rights reserved.
-->
<xsl:output method="xml" encoding="utf-8" omit-xml-declaration="yes"/>
<xsl:param name="objectID"></xsl:param>
<!--		 Template: Root    -->
<xsl:template match="/">
	<xsl:apply-templates select="params"/>
</xsl:template>
<!--		 Template: Params    -->
<xsl:template match="params">
	<table width="100%" height="100%" cellpadding="2" cellspacing="0" border="0">
		<tr>
			<td align="right" valign="middle" width="50%" nowrap="nowrap">
				<span id="position_text">
					<xsl:attribute name="style">font-family: <xsl:value-of select="position_font"/>; color: <xsl:value-of select="position_font_color"/>; font-weight: <xsl:value-of select="position_font_weight"/>; font-style: <xsl:value-of select="position_font_style"/>; font-size: <xsl:value-of select="position_font_size"/>px;</xsl:attribute>
					<xsl:value-of select="position_text" />
				</span>
			</td>
			<td align="left" valign="middle" width="50%" nowrap="nowrap">
				<span id="position_current">
					<xsl:attribute name="style">font-family: <xsl:value-of select="position_font"/>; color: <xsl:value-of select="position_font_color"/>; font-weight: <xsl:value-of select="position_font_weight"/>; font-style: <xsl:value-of select="position_font_style"/>; font-size: <xsl:value-of select="position_font_size"/>px;</xsl:attribute>
					1
				</span>
				<span id="position_div">
					<xsl:attribute name="style">font-family: <xsl:value-of select="position_font"/>; color: <xsl:value-of select="position_font_color"/>; font-weight: <xsl:value-of select="position_font_weight"/>; font-style: <xsl:value-of select="position_font_style"/>; font-size: <xsl:value-of select="position_font_size"/>px;</xsl:attribute>
					<xsl:value-of select="position_divider" />
				</span>
				<span id="position_total">
					<xsl:attribute name="style">font-family: <xsl:value-of select="position_font"/>; color: <xsl:value-of select="position_font_color"/>; font-weight: <xsl:value-of select="position_font_weight"/>; font-style: <xsl:value-of select="position_font_style"/>; font-size: <xsl:value-of select="position_font_size"/>px;</xsl:attribute>
					1
				</span>
			</td>
		</tr>
	</table>
</xsl:template>
</xsl:stylesheet>
