<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:msxsl="urn:schemas-microsoft-com:xslt"
				xmlns:websoft="http://www.websoft.ru"
				version="1.0">
<!--
'*	nav_012_close.xsl
'*	Copyright (c) Websoft, 2007.  All rights reserved.
-->
<xsl:output method="xml" encoding="utf-8" omit-xml-declaration="yes"/>
<xsl:param name="objectID"></xsl:param>
<xsl:param name="imagesFolder"></xsl:param>
<!--		 Template: Root    -->
<xsl:template match="/">
	<xsl:apply-templates select="params"/>
</xsl:template>
<!--		 Template: Params    -->
<xsl:template match="params">
<div style="display:none;">
	<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_storage</xsl:attribute>
	<img border="0">
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_img_0</xsl:attribute>
		<xsl:if test="standard='yes'">
			<xsl:attribute name="src"><xsl:value-of select="$imagesFolder"/>ws_close_0.gif</xsl:attribute>
		</xsl:if>
		<xsl:if test="standard='no'">
			<xsl:attribute name="src"><xsl:value-of select="n1_img"/></xsl:attribute>
		</xsl:if>
	</img>
	<img border="0">
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_img_1</xsl:attribute>
		<xsl:if test="standard='yes'">
			<xsl:attribute name="src"><xsl:value-of select="$imagesFolder"/>ws_close_1.gif</xsl:attribute>
		</xsl:if>
		<xsl:if test="standard='no'">
			<xsl:attribute name="src"><xsl:value-of select="n2_img"/></xsl:attribute>
		</xsl:if>
	</img>
	<img border="0">
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_img_2</xsl:attribute>
		<xsl:if test="standard='yes'">
			<xsl:attribute name="src"><xsl:value-of select="$imagesFolder"/>ws_close_2.gif</xsl:attribute>
		</xsl:if>
		<xsl:if test="standard='no'">
			<xsl:attribute name="src"><xsl:value-of select="n3_img"/></xsl:attribute>
		</xsl:if>
	</img>
</div>

<img border="0" style="display:inline; z-index:100; cursor:hand; cursor: pointer;">
	<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_CloseImg</xsl:attribute>
	<xsl:attribute name="src">
		<xsl:if test="standard='yes'"><xsl:value-of select="$imagesFolder"/>ws_close_0.gif</xsl:if>
		<xsl:if test="standard='no'"><xsl:value-of select="n1_img"/></xsl:if>
	</xsl:attribute>
	<xsl:attribute name="alt"><xsl:value-of select="alt_enabled"/></xsl:attribute>
	<xsl:attribute name="onMouseOver">this.src=document.getElementById('<xsl:value-of select="$objectID"/>_img_1').src;return false;</xsl:attribute>
	<xsl:attribute name="onMouseOut">this.src=document.getElementById('<xsl:value-of select="$objectID"/>_img_0').src; return false;</xsl:attribute>
	<xsl:attribute name="onMouseDown">this.src=document.getElementById('<xsl:value-of select="$objectID"/>_img_2').src;return false;</xsl:attribute>
	<xsl:attribute name="onMouseUp">if(confirm('<xsl:value-of select="confirm"/>')) { Shutdown(); window.close(); } else return false;</xsl:attribute>
</img>
</xsl:template>
</xsl:stylesheet>
