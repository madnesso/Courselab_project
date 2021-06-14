<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:msxsl="urn:schemas-microsoft-com:xslt"
				xmlns:websoft="http://www.websoft.ru"
				version="1.0">
<!--
'*	nav_005_calc.xsl
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
			<xsl:if test="standard='yes'"><xsl:value-of select="$imagesFolder"/><xsl:value-of select="tabcolor"/>/tab_calc_0.gif</xsl:if>
			<xsl:if test="standard='no'"><xsl:value-of select="n1_img"/></xsl:if>
		</xsl:attribute>
	</img>
	<img border="0">
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_tab_1</xsl:attribute>
		<xsl:attribute name="src">
			<xsl:if test="standard='yes'"><xsl:value-of select="$imagesFolder"/><xsl:value-of select="tabcolor"/>/tab_calc_1.gif</xsl:if>
			<xsl:if test="standard='no'"><xsl:value-of select="n2_img"/></xsl:if>
		</xsl:attribute>
	</img>
	<img border="0">
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_tab_2</xsl:attribute>
		<xsl:attribute name="src">
			<xsl:if test="standard='yes'"><xsl:value-of select="$imagesFolder"/><xsl:value-of select="tabcolor"/>/tab_calc_2.gif</xsl:if>
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
					margin-top:20px;
					margin-left: 10px;
					margin-right:10px;
					width: <xsl:value-of select="string(number($tabbodywidth)-24)"/>px;
					height: <xsl:value-of select="string(number($tabbodyheight)-54)"/>px;
					padding: 0px;
					text-align: center;
				</xsl:attribute>
				<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_CalcDiv</xsl:attribute>
				<table border="0" cellpadding="2" cellspacing="0" style="background-color: #AAAAAA; border:#999999 groove 8px;" align="center">
					<tr>
						<td colspan="6" style="padding: 5px; border-bottom: #999999 double 3px; background-color: #CCCCCC;">
							<div style="width: 270px; padding-right:4px; text-align:right; font-family: arial,helvetica,geneve,sans-serif; font-size:24px; font-weight: bold; color: #FF0000; background: #000000; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_display</xsl:attribute>
								0
							</div>
						</td>
					</tr>
					<tr>
						<td style="padding-left: 5px; padding-top: 5px;">
							<div style="width:50px; height:32px; font-family:verdana,tahoma,arial,helvetica,geneve,sans-serif; font-size:18px; font-weight: bold; color: #00CC33; background-color: #666666; border-color: #999999; border: solid 2 px; text-align:center;">
								<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_mem_ind</xsl:attribute>
							</div>
						</td>
						<td colspan="3" align="right" style="padding-top: 5px;">
							<input value="Backspace" type="button" style="width:100px; height:32px; font-family:verdana,arial,helvetica,geneve,sans-serif; font-size:12px; font-weight: bold; color: #FFFFFF; background: #CC3333; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.btn='Backspace'; CallMethod('nav_005_calc','actionKey',oArgs);return false;</xsl:attribute>
							</input>
						</td>
						<td style="padding-top: 5px;">
							<input value=" CE " type="button" style="width:40px; height:32px; font-family:arial,helvetica,geneve,sans-serif; font-size:14px; font-weight: bold; color: #FFFFFF; background: #CC3333; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.btn='CE'; CallMethod('nav_005_calc','actionKey',oArgs);return false;</xsl:attribute>
							</input>
						</td>
						<td style="padding-right: 5px; padding-top: 5px;">
							<input value="  C  " type="button" style="width:40px; height:32px; font-family:arial,helvetica,geneve,sans-serif; font-size:14px; font-weight: bold; color: #FFFFFF; background: #CC3333; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.btn='C'; CallMethod('nav_005_calc','actionKey',oArgs);return false;</xsl:attribute>
							</input>
						</td>
					</tr>
					<tr>
						<td style="padding-left: 5px;">
							<input value=" MC " type="button" name="MC" style="width:50px; height:32px; font-family:arial,helvetica,geneve,sans-serif; font-size:14px; font-weight: bold; color: #FFFFFF; background: #009933; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.btn='MC'; CallMethod('nav_005_calc','actionKey',oArgs);return false;</xsl:attribute>
							</input>
						</td>
						<td>
							<input value="  7  " type="button" style="width:40px; height:32px; font-family:verdana,arial,helvetica,geneve,sans-serif; font-size:18px; font-weight: bold; color: #000000; background: #EEEEEE; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.btn='7'; CallMethod('nav_005_calc','calcInput',oArgs);return false;</xsl:attribute>
							</input>
						</td>
						<td>
							<input value="  8  " type="button" style="width:40px; height:32px; font-family:verdana,arial,helvetica,geneve,sans-serif; font-size:18px; font-weight: bold; color: #000000; background: #EEEEEE; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.btn='8'; CallMethod('nav_005_calc','calcInput',oArgs);return false;</xsl:attribute>
							</input>
						</td>
						<td>
							<input value="  9  " type="button" style="width:40px; height:32px; font-family:verdana,arial,helvetica,geneve,sans-serif; font-size:18px; font-weight: bold; color: #000000; background: #EEEEEE; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.btn='9'; CallMethod('nav_005_calc','calcInput',oArgs);return false;</xsl:attribute>
							</input>
						</td>
						<td>
							<input value="  /  " type="button" style="width:40px; height:32px; font-family:verdana,arial,helvetica,geneve,sans-serif; font-size:14px; font-weight: bold; color: #FFFFFF; background: #666666; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.btn='divide'; CallMethod('nav_005_calc','actionKey',oArgs);return false;</xsl:attribute>
							</input>
						</td>
						<td style="padding-right: 5px;">
							<input value=" ^ " type="button" style="width:40px; height:32px; font-family:verdana,arial,helvetica,geneve,sans-serif; font-size:14px; font-weight: bold; color: #FFFFFF; background: #666666; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.btn='power'; CallMethod('nav_005_calc','actionKey',oArgs);return false;</xsl:attribute>
							</input>
						</td>
					</tr>
					<tr>
						<td style="padding-left: 5px;">
							<input value=" MR " type="button" style="width:50px; height:32px; font-family:arial,helvetica,geneve,sans-serif; font-size:14px; font-weight: bold; color: #FFFFFF; background: #009933; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.btn='MR'; CallMethod('nav_005_calc','actionKey',oArgs);return false;</xsl:attribute>
							</input>
						</td>
						<td>
							<input value="  4  " type="button" style="width:40px; height:32px; font-family:verdana,arial,helvetica,geneve,sans-serif; font-size:18px; font-weight: bold; color: #000000; background: #EEEEEE; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.btn='4'; CallMethod('nav_005_calc','calcInput',oArgs);return false;</xsl:attribute>
							</input>
						</td>
						<td>
							<input value="  5  " type="button" style="width:40px; height:32px; font-family:verdana,arial,helvetica,geneve,sans-serif; font-size:18px; font-weight: bold; color: #000000; background: #EEEEEE; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.btn='5'; CallMethod('nav_005_calc','calcInput',oArgs);return false;</xsl:attribute>
							</input>
						</td>
						<td>
							<input value="  6  " type="button" style="width:40px; height:32px; font-family:verdana,arial,helvetica,geneve,sans-serif; font-size:18px; font-weight: bold; color: #000000; background: #EEEEEE; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.btn='6'; CallMethod('nav_005_calc','calcInput',oArgs);return false;</xsl:attribute>
							</input>
						</td>
						<td>
							<input value="  x " type="button" style="width:40px; height:32px; font-family:verdana,arial,helvetica,geneve,sans-serif; font-size:14px; font-weight: bold; color: #FFFFFF; background: #666666; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.btn='mult'; CallMethod('nav_005_calc','actionKey',oArgs);return false;</xsl:attribute>
							</input>
						</td>
						<td style="padding-right: 5px;">
							<input value=" % " type="button" style="width:40px; height:32px; font-family:verdana,arial,helvetica,geneve,sans-serif; font-size:14px; font-weight: bold; color: #FFFFFF; background: #666666; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.btn='percent'; CallMethod('nav_005_calc','actionKey',oArgs);return false;</xsl:attribute>
							</input>
						</td>
					</tr>
					<tr>
						<td style="padding-left: 5px;">
							<input value=" M- " type="button" style="width:50px; height:32px; font-family:arial,helvetica,geneve,sans-serif; font-size:14px; font-weight: bold; color: #FFFFFF; background: #009933; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.btn='MS'; CallMethod('nav_005_calc','actionKey',oArgs);return false;</xsl:attribute>
							</input>
						</td>
						<td>
							<input value="  1  " type="button" style="width:40px; height:32px; font-family:verdana,arial,helvetica,geneve,sans-serif; font-size:18px; font-weight: bold; color: #000000; background: #EEEEEE; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.btn='1'; CallMethod('nav_005_calc','calcInput',oArgs);return false;</xsl:attribute>
							</input>
						</td>
						<td>
							<input value="  2  " type="button" style="width:40px; height:32px; font-family:verdana,arial,helvetica,geneve,sans-serif; font-size:18px; font-weight: bold; color: #000000; background: #EEEEEE; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.btn='2'; CallMethod('nav_005_calc','calcInput',oArgs);return false;</xsl:attribute>
							</input>
						</td>
						<td>
							<input value="  3  " type="button" style="width:40px; height:32px; font-family:verdana,arial,helvetica,geneve,sans-serif; font-size:18px; font-weight: bold; color: #000000; background: #EEEEEE; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.btn='3'; CallMethod('nav_005_calc','calcInput',oArgs);return false;</xsl:attribute>
							</input>
						</td>
						<td>
							<input value="  -  " type="button" style="width:40px; height:32px; font-family:verdana,arial,helvetica,geneve,sans-serif; font-size:14px; font-weight: bold; color: #FFFFFF; background: #666666; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.btn='minus'; CallMethod('nav_005_calc','actionKey',oArgs);return false;</xsl:attribute>
							</input>
						</td>
						<td style="padding-right: 5px;">
							<input value="1/x" type="button" style="width:40px; height:32px; font-family:verdana,arial,helvetica,geneve,sans-serif; font-size:14px; font-weight: bold; color: #FFFFFF; background: #666666; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.btn='recip'; CallMethod('nav_005_calc','actionKey',oArgs);return false;</xsl:attribute>
							</input>
						</td>
					</tr>
					<tr>
						<td style="padding-left: 5px;">
							<input value=" M+ " type="button" style="width:50px; height:32px; font-family:arial,helvetica,geneve,sans-serif; font-size:14px; font-weight: bold; color: #FFFFFF; background: #009933; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.btn='M+'; CallMethod('nav_005_calc','actionKey',oArgs);return false;</xsl:attribute>
							</input>
						</td>
						<td style="padding-bottom: 5px;">
							<input value="  0  " type="button" style="width:40px; height:32px; font-family:verdana,arial,helvetica,geneve,sans-serif; font-size:18px; font-weight: bold; color: #000000; background: #EEEEEE; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.btn='0'; CallMethod('nav_005_calc','calcInput',oArgs);return false;</xsl:attribute>
							</input>
						</td>
						<td style="padding-bottom: 5px;">
							<input value="  .   " type="button" style="width:40px; height:32px; font-family:verdana,arial,helvetica,geneve,sans-serif; font-size:18px; font-weight: bold; color: #000000; background: #EEEEEE; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.btn='.'; CallMethod('nav_005_calc','calcInput',oArgs);return false;</xsl:attribute>
							</input>
						</td>
						<td style="padding-bottom: 5px;">
							<input value="+/-" type="button" style="width:40px; height:32px; font-family:verdana,arial,helvetica,geneve,sans-serif; font-size:14px; font-weight: bold; color: #FFFFFF; background: #666666; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.btn='negate'; CallMethod('nav_005_calc','actionKey',oArgs);return false;</xsl:attribute>
							</input>
						</td>
						<td style="padding-bottom: 5px;">
							<input value=" + " type="button" style="width:40px; height:32px; font-family:verdana,arial,helvetica,geneve,sans-serif; font-size:14px; font-weight: bold; color: #FFFFFF; background: #666666; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.btn='plus'; CallMethod('nav_005_calc','actionKey',oArgs);return false;</xsl:attribute>
							</input>
						</td>
						<td style="padding-right: 5px; padding-bottom: 5px;">
							<input value="  =  " type="button" style="width:40px; height:32px; font-family:arial,helvetica,geneve,sans-serif; font-size:14px; font-weight: bold; color: #FFFFFF; background: #0033CC; border-color: #999999; border: solid 2 px;">
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.btn='equal'; CallMethod('nav_005_calc','actionKey',oArgs);return false;</xsl:attribute>
							</input>
						</td>
					</tr>
				</table>
			</div>
			<div>
				<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_exp</xsl:attribute>
				<xsl:attribute name="style">position: absolute; top: 315px; left: 0px; margin-left: 10px; margin-right:10px; margin-top:10px; width: <xsl:value-of select="string(number($tabbodywidth)-24)"/>px; height: 130px; overflow: hidden;</xsl:attribute>
				<xsl:value-of select="tabtext" disable-output-escaping="yes"/>
			</div>
		</div>
	</div>
	<img border="0">
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_tabimg</xsl:attribute>
		<xsl:if test="standard='yes'">
			<xsl:attribute name="src"><xsl:value-of select="$imagesFolder"/><xsl:value-of select="tabcolor"/>/tab_calc_0.gif</xsl:attribute>
		</xsl:if>
		<xsl:if test="standard='no'">
			<xsl:attribute name="src"><xsl:value-of select="n1_img"/></xsl:attribute>
		</xsl:if>
		<xsl:attribute name="style">cursor:hand; cursor:pointer; position: absolute; top: <xsl:value-of select="tab_offset"/>px; left:<xsl:value-of select="$tabbodywidth"/>px;</xsl:attribute>
		<xsl:attribute name="onMouseOver">MM_swapImage('<xsl:value-of select="$objectID"/>_tabimg','',document.getElementById('<xsl:value-of select="$objectID"/>_tab_1').src,1);return false;</xsl:attribute>
		<xsl:attribute name="onMouseOut">MM_swapImgRestore(); return false;</xsl:attribute>
		<xsl:attribute name="onMouseDown">MM_swapImage('<xsl:value-of select="$objectID"/>_tabimg','',document.getElementById('<xsl:value-of select="$objectID"/>_tab_2').src,1);return false;</xsl:attribute>
		<xsl:attribute name="onMouseUp">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; CallMethod('nav_005_calc','MoveTab',oArgs);return false;</xsl:attribute>
		<xsl:attribute name="alt"><xsl:value-of select="alt_enabled"/></xsl:attribute>
	</img>
	<img border="0">
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_tabimg_disabled</xsl:attribute>
		<xsl:if test="standard='yes'">
			<xsl:attribute name="src"><xsl:value-of select="$imagesFolder"/><xsl:value-of select="tabcolor"/>/tab_calc_3.gif</xsl:attribute>
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
