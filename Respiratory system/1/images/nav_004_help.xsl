﻿<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:msxsl="urn:schemas-microsoft-com:xslt"
				xmlns:websoft="http://www.websoft.ru"
				version="1.0">
<!--
'*	nav_004_help.xsl
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
<xsl:variable name="bordercolor">
	<xsl:if test="standard='yes'">
		<xsl:choose>
			<xsl:when test="tabcolor='orange'">#FF9900</xsl:when>
			<xsl:when test="tabcolor='olive'">#CCD078</xsl:when>
			<xsl:when test="tabcolor='lightblue'">#87A6EA</xsl:when>
			<xsl:when test="tabcolor='turquoise'">#95C8DB</xsl:when>
			<xsl:otherwise>#FF9900</xsl:otherwise>
		</xsl:choose>
	</xsl:if>
	<xsl:if test="standard='no'"><xsl:value-of select="tabcolor_user"/></xsl:if>
</xsl:variable>
<div>
	<xsl:attribute name="style">display:none;</xsl:attribute>
	<img border="0">
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_tab_0</xsl:attribute>
		<xsl:attribute name="src">
			<xsl:if test="standard='yes'"><xsl:value-of select="$imagesFolder"/><xsl:value-of select="tabcolor"/>/tab_help_0.gif</xsl:if>
			<xsl:if test="standard='no'"><xsl:value-of select="n1_img"/></xsl:if>
		</xsl:attribute>
	</img>
	<img border="0">
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_tab_1</xsl:attribute>
		<xsl:attribute name="src">
			<xsl:if test="standard='yes'"><xsl:value-of select="$imagesFolder"/><xsl:value-of select="tabcolor"/>/tab_help_1.gif</xsl:if>
			<xsl:if test="standard='no'"><xsl:value-of select="n2_img"/></xsl:if>
		</xsl:attribute>
	</img>
	<img border="0">
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_tab_2</xsl:attribute>
		<xsl:attribute name="src">
			<xsl:if test="standard='yes'"><xsl:value-of select="$imagesFolder"/><xsl:value-of select="tabcolor"/>/tab_help_2.gif</xsl:if>
			<xsl:if test="standard='no'"><xsl:value-of select="n4_img"/></xsl:if>
		</xsl:attribute>
	</img>
</div>
<xsl:variable name="tabbodywidth"><xsl:if test="standard='yes'">475</xsl:if><xsl:if test="standard='no'"><xsl:value-of select="tab_width"/></xsl:if></xsl:variable>
<xsl:variable name="tabbodyheight"><xsl:if test="standard='yes'">460</xsl:if><xsl:if test="standard='no'"><xsl:value-of select="tab_height"/></xsl:if></xsl:variable>
<div>
	<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_maincontainer</xsl:attribute>
	<xsl:attribute name="style">position:absolute; height: <xsl:value-of select="$tabbodyheight"/>px; overflow: visible;</xsl:attribute>
	<div>
		<xsl:attribute name="style">position: absolute; top: 0px; left: 0px; width: <xsl:value-of select="$tabbodywidth"/>px; height: <xsl:value-of select="$tabbodyheight"/>px;background-color:<xsl:value-of select="$bordercolor"/>; </xsl:attribute>
		<div>
			<xsl:attribute name="style">position: absolute; top: 2px; left: 2px; width: <xsl:value-of select="string(number($tabbodywidth)-4)"/>px; height: <xsl:value-of select="string(number($tabbodyheight)-4)"/>px;background-color: #FFFFFF;</xsl:attribute>
			<div>
				<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_header</xsl:attribute>
				<xsl:attribute name="style">position: absolute; top: 0px; left: 0px; margin-left: 10px; margin-right:10px; margin-top:10px; width: <xsl:value-of select="string(number($tabbodywidth)-24)"/>px; height: 30px; overflow: hidden; font-weight: bold; text-align: center;</xsl:attribute>
				<xsl:value-of select="tabheader" disable-output-escaping="yes"/>
			</div>
			<div>
				<xsl:attribute name="style">
					position: absolute;
					top: 30px;
					left: 0px;
					margin-left: 10px;
					margin-right:10px;
					width: <xsl:value-of select="string(number($tabbodywidth)-24)"/>px;
					height: <xsl:value-of select="string(number($tabbodyheight)-54)"/>px;
					padding: 0px;
					overflow: auto;
				</xsl:attribute>
				<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_contents</xsl:attribute>
				<xsl:value-of select="tabtext" disable-output-escaping="yes"/>
			</div>
		</div>
	</div>
	<img border="0">
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_tabimg</xsl:attribute>
		<xsl:if test="standard='yes'">
			<xsl:attribute name="src"><xsl:value-of select="$imagesFolder"/><xsl:value-of select="tabcolor"/>/tab_help_0.gif</xsl:attribute>
		</xsl:if>
		<xsl:if test="standard='no'">
			<xsl:attribute name="src"><xsl:value-of select="n1_img"/></xsl:attribute>
		</xsl:if>
		<xsl:attribute name="style">cursor:hand; cursor:pointer; position: absolute; top: <xsl:value-of select="tab_offset"/>px; left:<xsl:value-of select="$tabbodywidth"/>px;</xsl:attribute>
		<xsl:attribute name="onMouseOver">MM_swapImage('<xsl:value-of select="$objectID"/>_tabimg','',document.getElementById('<xsl:value-of select="$objectID"/>_tab_1').src,1);return false;</xsl:attribute>
		<xsl:attribute name="onMouseOut">MM_swapImgRestore(); return false;</xsl:attribute>
		<xsl:attribute name="onMouseDown">MM_swapImage('<xsl:value-of select="$objectID"/>_tabimg','',document.getElementById('<xsl:value-of select="$objectID"/>_tab_2').src,1);return false;</xsl:attribute>
		<xsl:attribute name="onMouseUp">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; CallMethod('nav_004_help','MoveTab',oArgs);return false;</xsl:attribute>
		<xsl:attribute name="alt"><xsl:value-of select="alt_enabled"/></xsl:attribute>
	</img>
	<img border="0">
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_tabimg_disabled</xsl:attribute>
		<xsl:if test="standard='yes'">
			<xsl:attribute name="src"><xsl:value-of select="$imagesFolder"/><xsl:value-of select="tabcolor"/>/tab_help_3.gif</xsl:attribute>
		</xsl:if>
		<xsl:if test="standard='no'">
			<xsl:attribute name="src"><xsl:value-of select="n3_img"/></xsl:attribute>
		</xsl:if>
		<xsl:attribute name="style">display: none; position: absolute; top: <xsl:value-of select="tab_offset"/>px; left:<xsl:value-of select="$tabbodywidth"/>px;</xsl:attribute>
		<xsl:attribute name="alt"><xsl:value-of select="alt_disabled"/></xsl:attribute>
	</img>
</div>
</xsl:template>
</xsl:stylesheet>
