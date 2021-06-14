<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:msxsl="urn:schemas-microsoft-com:xslt"
				xmlns:websoft="http://www.websoft.ru"
				version="1.0">
<!--
'*	q_099_test#.xsl
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
<table width="100%" height="100%" border="0" cellpadding="10" cellspacing="0">
	<tr>
		<td width="100%" align="center" valign="middle" bgcolor="FEFEFE">
			<xsl:attribute name="style">border: #CCCCCC 1px solid;</xsl:attribute>
			<img width="93" height="39" vspace="5">
				<xsl:attribute name="src">
					<xsl:value-of select="$imagesFolder"/>test_img.gif
				</xsl:attribute>
			</img>
		</td>
	</tr>
</table>
</xsl:template>
</xsl:stylesheet>
