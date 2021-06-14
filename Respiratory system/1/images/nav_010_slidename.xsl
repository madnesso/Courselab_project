<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:msxsl="urn:schemas-microsoft-com:xslt"
				xmlns:websoft="http://www.websoft.ru"
				version="1.0">
<!--
'*	nav_010_slidename.xsl
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
<table width="100%" cellpadding="3" cellspacing="0" border="0">
	<tr>
		<td align="center">
			<xsl:attribute name="bgcolor"><xsl:value-of select="sn_backcolor"/></xsl:attribute>
			<span>
				<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_SlideName</xsl:attribute>
				<xsl:attribute name="style">width:100%; font-family: <xsl:value-of select="sn_font"/>; font-style:<xsl:value-of select="sn_font_style"/>; font-weight:<xsl:value-of select="sn_font_weight"/>; font-size: <xsl:value-of select="sn_font_size"/>px; text-align:<xsl:value-of select="sn_textalign"/>; color: <xsl:value-of select="sn_textcolor"/>;</xsl:attribute>
			</span>
		</td>
	</tr>
</table>
</xsl:template>
</xsl:stylesheet>
