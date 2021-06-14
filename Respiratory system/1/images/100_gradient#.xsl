<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:msxsl="urn:schemas-microsoft-com:xslt"
				xmlns:websoft="http://www.websoft.ru"
				version="1.0">
<!--
'*	100_gradient#.xsl
'*	Copyright (c) Websoft, 2007.  All rights reserved.
-->
<xsl:output method="xml" encoding="utf-8" omit-xml-declaration="yes"/>
<!--		 Template: Root    -->
<xsl:template match="/">
	<xsl:apply-templates select="params"/>
</xsl:template>
<!--		 Template: Params    -->
<xsl:template match="params">
<table border="0" cellspacing="0" cellpadding="0" width="100%" height="100%">
	<tr>
		<td>
			<xsl:if test="grad_type_h='yes'">
			<xsl:attribute name="style">
				filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=1,
					StartColorStr='<xsl:value-of select="start_color"/>',
					EndColorStr='<xsl:value-of select="end_color"/>')
			</xsl:attribute>
			</xsl:if>
			<xsl:if test="grad_type_v='yes'">
			<xsl:attribute name="style">
				filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=0,
					StartColorStr='<xsl:value-of select="start_color"/>',
					EndColorStr='<xsl:value-of select="end_color"/>')
			</xsl:attribute>
			</xsl:if>
		</td>
  </tr>
</table>
</xsl:template>
</xsl:stylesheet>
