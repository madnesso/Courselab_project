<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:msxsl="urn:schemas-microsoft-com:xslt"
				xmlns:websoft="http://www.websoft.ru"
				version="1.0">
<!--
'*	003_textbox#.xsl
'*	Copyright (c) Websoft, 2007.  All rights reserved.
-->
<xsl:output method="xml" encoding="utf-8" omit-xml-declaration="yes"/>
<xsl:param name="imagesFolder"></xsl:param>

<!--		 Template: Root    -->
<xsl:template match="/">
	<xsl:apply-templates select="params"/>
</xsl:template>
<!--		 Template: Params    -->
<xsl:template match="params">

<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td>
			<xsl:attribute name="style">padding: <xsl:value-of select="margin"/>px; background-color: <xsl:value-of select="bgcolor" />;
				<xsl:if test="borderstyle!='none'">border-color: <xsl:value-of select="bordercolor"/>; border-width: <xsl:value-of select="borderwidth"/>px; border-style: <xsl:value-of select="borderstyle"/>;</xsl:if>
			</xsl:attribute>
			<div>
				<xsl:attribute name="style">height: 100%;
					<xsl:if test="overflow='fit'">overflow: visible</xsl:if>
					<xsl:if test="overflow='scroll'">overflow: scroll</xsl:if>
					<xsl:if test="overflow='scroll-y'">overflow-y: scroll; overflow-x: hidden;</xsl:if>
					<xsl:if test="overflow='scroll-x'">overflow-x: scroll; overflow-y: hidden;</xsl:if>
					<xsl:if test="overflow='auto'">overflow-x: hidden; overflow-y: auto;</xsl:if>
					<xsl:if test="overflow='hidden'">overflow: hidden;</xsl:if>
				</xsl:attribute>
				<xsl:value-of select="textbox_text" disable-output-escaping="yes"/>
			</div>
		</td>
	</tr>
</table>

</xsl:template>
</xsl:stylesheet>
