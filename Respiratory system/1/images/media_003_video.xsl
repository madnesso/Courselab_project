<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:msxsl="urn:schemas-microsoft-com:xslt"
				xmlns:websoft="http://www.websoft.ru"
				version="1.0">
<!--
'*	media_003_video.xsl
'*	Copyright (c) Websoft, 2006.  All rights reserved.
-->
<xsl:output method="xml" encoding="utf-8" omit-xml-declaration="yes"/>
<xsl:param name="objectID"></xsl:param>
<!--		 Template: Root    -->
<xsl:template match="/">
	<xsl:apply-templates select="params"/>
</xsl:template>
<!-- Template: Params -->
<xsl:template match="params">

<xsl:variable name="mpath">
	<xsl:if test="vfile='yes'"><xsl:value-of select="video_uri"/></xsl:if>
	<xsl:if test="vURL='yes'"><xsl:value-of select="video_url"/></xsl:if>
</xsl:variable>
<xsl:variable name="plr">
	<xsl:if test="player!='auto'"><xsl:value-of select="player"/></xsl:if>
	<xsl:if test="player='auto'">
		<xsl:choose>
			<xsl:when test="contains($mpath,'.mov')">qtp</xsl:when>
			<xsl:when test="contains($mpath,'.rm')">rp</xsl:when>
			<xsl:when test="contains($mpath,'.ram')">rp</xsl:when>
			<xsl:when test="contains($mpath,'.rt')">rp</xsl:when>
			<xsl:when test="contains($mpath,'.rp')">rp</xsl:when>
			<xsl:when test="contains($mpath,'.ra')">rp</xsl:when>
			<xsl:when test="contains($mpath,'.rt')">rp</xsl:when>
			<xsl:when test="contains($mpath,'.rv')">rp</xsl:when>
			<xsl:when test="contains($mpath,'.rmvb')">rp</xsl:when>
			<xsl:otherwise>wmp</xsl:otherwise>
		</xsl:choose>
	</xsl:if>
</xsl:variable>

<xsl:if test="$plr='wmp'">
	<div>
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_activex</xsl:attribute>
		<xsl:attribute name="style">display: none;</xsl:attribute>
		<object>
			<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_wmpie</xsl:attribute>
			<xsl:attribute name="name"><xsl:value-of select="$objectID"/>_wmpie</xsl:attribute>
			<xsl:attribute name="classid">clsid:6BF52A52-394A-11D3-B153-00C04F79FAA6</xsl:attribute>
			<xsl:attribute name="codebase">http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701</xsl:attribute>
			<xsl:attribute name="type">application/x-oleobject</xsl:attribute>
			<xsl:attribute name="standby">Loading... Please wait...</xsl:attribute>
			<xsl:attribute name="width">100%</xsl:attribute>
			<xsl:attribute name="height">100%</xsl:attribute>
			<param name="AllowChangeDisplaySize" value="false"/>
			<param name="AutoSize" value="true"/>
			<param name="DisplaySize" value="false"/>
			<param name="ShowStatusBar" value="false"/>
			<param name="AutoRewind" value="false"/>
			<param name="SendPlayStateChangeEvents" value="true"/>
			<param name="URL">
				<xsl:attribute name="value">
					<xsl:if test="vURL='yes'"><xsl:value-of select="video_url"/></xsl:if>
					<xsl:if test="vfile='yes'"><xsl:value-of select="video_uri"/></xsl:if>
				</xsl:attribute>
			</param>
			<param name="ShowControls">
				<xsl:attribute name="value">
					<xsl:if test="video_controls='no'">false</xsl:if>
					<xsl:if test="video_controls!='no'">true</xsl:if>
				</xsl:attribute>
			</param>
			<param name="uiMode">
				<xsl:attribute name="value">
					<xsl:if test="video_invisible='no'">
						<xsl:if test="video_controls!='no'"><xsl:value-of select="video_controls"/></xsl:if>
						<xsl:if test="video_controls='no'">none</xsl:if>
					</xsl:if>
					<xsl:if test="video_invisible='yes'">invisible</xsl:if>
				</xsl:attribute>
			</param>
			<param name="AutoStart">
				<xsl:attribute name="value">
					<xsl:if test="video_autostart='yes'">true</xsl:if>
					<xsl:if test="video_autostart='no'">false</xsl:if>
				</xsl:attribute>
			</param>
			<param name="windowlessVideo">
				<xsl:attribute name="value">
					<xsl:if test="video_windowless='yes'">true</xsl:if>
					<xsl:if test="video_windowless='no'">false</xsl:if>
				</xsl:attribute>
			</param>

			<embed>
				<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_wmpembed</xsl:attribute>
				<xsl:attribute name="name"><xsl:value-of select="$objectID"/>_wmpembed</xsl:attribute>
				<xsl:attribute name="SendPlayStateChangeEvents">1</xsl:attribute>
				<xsl:attribute name="pluginspage">http://www.microsoft.com/Windows/Downloads/Contents/Products/MediaPlayer/</xsl:attribute>
				<xsl:attribute name="type">application/x-mplayer2</xsl:attribute>
				<xsl:attribute name="standby">Loading... Please wait...</xsl:attribute>
				<xsl:attribute name="width">100%</xsl:attribute>
				<xsl:attribute name="height">100%</xsl:attribute>
				<xsl:attribute name="ShowControls">
					<xsl:if test="video_controls='no'">0</xsl:if>
					<xsl:if test="video_controls!='no'">1</xsl:if>
				</xsl:attribute>
				<xsl:attribute name="ShowStatusBar">0</xsl:attribute>
				<xsl:attribute name="AutoSize">0</xsl:attribute>
				<xsl:attribute name="EnableControls">0</xsl:attribute>
				<xsl:attribute name="DisplaySize">0</xsl:attribute>
				<xsl:attribute name="Loop">0</xsl:attribute>
				<xsl:attribute name="AutoStart">1</xsl:attribute>
				<xsl:attribute name="src">
					<xsl:if test="vURL='yes'"><xsl:value-of select="video_url"/></xsl:if>
					<xsl:if test="vfile='yes'"><xsl:value-of select="video_uri"/></xsl:if>
				</xsl:attribute>
			</embed>

		</object>
	</div>
	<div>
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_ffactivex</xsl:attribute>
		<xsl:attribute name="style">display: none;</xsl:attribute>
		<object>
			<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_wmpff</xsl:attribute>
			<xsl:attribute name="name"><xsl:value-of select="$objectID"/>_wmpff</xsl:attribute>
			<xsl:attribute name="type">application/x-ms-wmp</xsl:attribute>
			<xsl:attribute name="standby">Loading... Please wait...</xsl:attribute>
			<xsl:attribute name="width">100%</xsl:attribute>
			<xsl:attribute name="height">100%</xsl:attribute>
			<xsl:attribute name="data">
				<xsl:if test="vURL='yes'"><xsl:value-of select="video_url"/></xsl:if>
				<xsl:if test="vfile='yes'"><xsl:value-of select="video_uri"/></xsl:if>
			</xsl:attribute>
			<param name="AllowChangeDisplaySize" value="true"/>
			<param name="AutoSize" value="true"/>
			<param name="DisplaySize" value="false"/>
			<param name="showstatusbar" value="false"/>
			<param name="AutoRewind" value="true"/>
			<param name="SendPlayStateChangeEvents" value="true"/>
			<param name="URL">
				<xsl:attribute name="value">
					<xsl:if test="vURL='yes'"><xsl:value-of select="video_url"/></xsl:if>
					<xsl:if test="vfile='yes'"><xsl:value-of select="video_uri"/></xsl:if>
				</xsl:attribute>
			</param>
			<param name="ShowControls">
				<xsl:attribute name="value">
					<xsl:if test="video_controls='no'">false</xsl:if>
					<xsl:if test="video_controls!='no'">true</xsl:if>
				</xsl:attribute>
			</param>
			<param name="uiMode">
				<xsl:attribute name="value">
					<xsl:if test="video_invisible='no'">
						<xsl:if test="video_controls!='no'"><xsl:value-of select="video_controls"/></xsl:if>
						<xsl:if test="video_controls='no'">none</xsl:if>
					</xsl:if>
					<xsl:if test="video_invisible='yes'">invisible</xsl:if>
				</xsl:attribute>
			</param>
			<param name="AutoStart">
				<xsl:attribute name="value">
					<xsl:if test="video_autostart='yes'">true</xsl:if>
					<xsl:if test="video_autostart='no'">false</xsl:if>
				</xsl:attribute>
			</param>
			<param name="windowlessVideo">
				<xsl:attribute name="value">
					<xsl:if test="video_windowless='yes'">true</xsl:if>
					<xsl:if test="video_windowless='no'">false</xsl:if>
				</xsl:attribute>
			</param>
		</object>
	</div>
</xsl:if>
<xsl:if test="$plr='qtp'">
	<div>
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_qtpdiv</xsl:attribute>
		<xsl:attribute name="style">display: block;</xsl:attribute>
		<object>
			<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_qtp</xsl:attribute>
			<xsl:attribute name="name"><xsl:value-of select="$objectID"/>_qtp</xsl:attribute>
			<xsl:attribute name="classid">clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B</xsl:attribute>
			<xsl:attribute name="codebase">http://www.apple.com/qtactivex/qtplugin.cab</xsl:attribute>
			<xsl:attribute name="width">100</xsl:attribute>
			<xsl:attribute name="height">100</xsl:attribute>
			<param name="scale" value="aspect"/>
			<param name="src">
				<xsl:attribute name="value"><xsl:value-of select="$mpath"/></xsl:attribute>
			</param>
			<param name="autoplay">
				<xsl:attribute name="value">
					<xsl:if test="video_autostart='yes'">true</xsl:if>
					<xsl:if test="video_autostart='no'">false</xsl:if>
				</xsl:attribute>
			</param>
			<param name="controller">
				<xsl:attribute name="value">
					<xsl:if test="video_controls!='no'">true</xsl:if>
					<xsl:if test="video_controls='no'">false</xsl:if>
				</xsl:attribute>
			</param>
			<embed pluginspage="http://www.apple.com/quicktime/download/" bgcolor="">
				<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_qtpembed</xsl:attribute>
				<xsl:attribute name="name"><xsl:value-of select="$objectID"/>_qtpembed</xsl:attribute>
				<xsl:attribute name="src"><xsl:value-of select="$mpath"/></xsl:attribute>
				<xsl:attribute name="width">100</xsl:attribute>
				<xsl:attribute name="height">100</xsl:attribute>
				<xsl:attribute name="javascriptenable">true</xsl:attribute>
				<xsl:attribute name="scale">aspect</xsl:attribute>
				<xsl:attribute name="autoplay">
					<xsl:if test="video_autostart='yes'">true</xsl:if>
					<xsl:if test="video_autostart='no'">false</xsl:if>
				</xsl:attribute>
				<xsl:attribute name="controller">
					<xsl:if test="video_controls!='no'">true</xsl:if>
					<xsl:if test="video_controls='no'">false</xsl:if>
				</xsl:attribute>
			</embed>
		</object>
	</div>
</xsl:if>

<xsl:if test="$plr='rp'">
	<div>
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_rpdiv</xsl:attribute>
		<xsl:attribute name="style">display: block;</xsl:attribute>
		<object>
			<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_rp</xsl:attribute>
			<xsl:attribute name="name"><xsl:value-of select="$objectID"/>_rp</xsl:attribute>
			<xsl:attribute name="classid">clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA</xsl:attribute>
			<xsl:attribute name="codebase">http://www.real.com/</xsl:attribute>
			<xsl:attribute name="width">100%</xsl:attribute>
			<xsl:attribute name="height">100%</xsl:attribute>
			<param name="src">
				<xsl:attribute name="value"><xsl:value-of select="$mpath"/></xsl:attribute>
			</param>
			<param name="controls">
				<xsl:attribute name="value">
					<xsl:if test="video_controls='full'">All</xsl:if>
					<xsl:if test="video_controls='mini'">PlayButton</xsl:if>
					<xsl:if test="video_controls='no'">ImageWindow</xsl:if>
				</xsl:attribute>
			</param>
			<embed pluginspage="http://www.real.com/" bgcolor="">
				<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_rpembed</xsl:attribute>
				<xsl:attribute name="name"><xsl:value-of select="$objectID"/>_rpembed</xsl:attribute>
				<xsl:attribute name="src"><xsl:value-of select="$mpath"/></xsl:attribute>
				<xsl:attribute name="width">100%</xsl:attribute>
				<xsl:attribute name="height">100%</xsl:attribute>
				<xsl:attribute name="controls">
					<xsl:if test="video_controls='full'">All</xsl:if>
					<xsl:if test="video_controls='mini'">PlayButton</xsl:if>
					<xsl:if test="video_controls='no'">ImageWindow</xsl:if>
				</xsl:attribute>
			</embed>
		</object>
	</div>
</xsl:if>

</xsl:template>
</xsl:stylesheet>
