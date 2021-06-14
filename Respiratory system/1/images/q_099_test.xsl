<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:msxsl="urn:schemas-microsoft-com:xslt"
				xmlns:websoft="http://www.websoft.ru"
				version="1.0">
<!--
'*	q_099_test.xml
'*	Copyright (c) Websoft, 2007.  All rights reserved.
-->
<xsl:output method="xml" encoding="utf-8" omit-xml-declaration="yes"/>
<xsl:param name="imagesFolder"></xsl:param>
<xsl:param name="objectID"></xsl:param>

<!--	Profiles definition		-->
<xsl:variable name="profiles">
	<lightblue><bgcolor>#EFF8FF</bgcolor><bordercolor>#DFEFFF</bordercolor><textcolor>#336699</textcolor><itembordercolor>#66CCFF</itembordercolor></lightblue>
	<turq><bgcolor>#DCF5F5</bgcolor><bordercolor>#A6DEDE</bordercolor><textcolor>#006666</textcolor><itembordercolor>#357E7E</itembordercolor></turq>
	<yellow><bgcolor>#FFFFCC</bgcolor><bordercolor>#F0F0B9</bordercolor><textcolor>#999900</textcolor><itembordercolor>#D1D164</itembordercolor></yellow>
	<brown><bgcolor>#FAE1C8</bgcolor><bordercolor>#E5C5A5</bordercolor><textcolor>#8A4F19</textcolor><itembordercolor>#BD865C</itembordercolor></brown>
	<red><bgcolor>#FFE0E0</bgcolor><bordercolor>#FCB3B3</bordercolor><textcolor>#CC3333</textcolor><itembordercolor>#FF4E4E</itembordercolor></red>
	<olive><bgcolor>#F5F5CB</bgcolor><bordercolor>#DEDEA0</bordercolor><textcolor>#666600</textcolor><itembordercolor>#91A030</itembordercolor></olive>
	<orange><bgcolor>#FFE2C4</bgcolor><bordercolor>#FFCCA8</bordercolor><textcolor>#FF6600</textcolor><itembordercolor>#FE9839</itembordercolor></orange>
	<pink><bgcolor>#FAE6FA</bgcolor><bordercolor>#F5BCF5</bordercolor><textcolor>#CC33CC</textcolor><itembordercolor>#FF61CE</itembordercolor></pink>
	<green><bgcolor>#DDFFCC</bgcolor><bordercolor>#D3F0B4</bordercolor><textcolor>#669900</textcolor><itembordercolor>#9BDC4E</itembordercolor></green>
	<grey><bgcolor>#E6E6E6</bgcolor><bordercolor>#CCCCCC</bordercolor><textcolor>#666666</textcolor><itembordercolor>#A6A6A6</itembordercolor></grey>
	<blue_green><bgcolor>#D3F0E0</bgcolor><bordercolor>#A8E3C2</bordercolor><textcolor>#178560</textcolor><itembordercolor>#60B98B</itembordercolor></blue_green>
	<blue><bgcolor>#D9E7FC</bgcolor><bordercolor>#9DC3FC</bordercolor><textcolor>#0D49A8</textcolor><itembordercolor>#6F87EE</itembordercolor></blue>
	<steel_blue><bgcolor>#E1E9F5</bgcolor><bordercolor>#C0D3ED</bordercolor><textcolor>#496B9E</textcolor><itembordercolor>#8995CB</itembordercolor></steel_blue>
	<deeppink><bgcolor>#FFDBE7</bgcolor><bordercolor>#FAB1CA</bordercolor><textcolor>#D10D51</textcolor><itembordercolor>#FF78A9</itembordercolor></deeppink>
	<violet><bgcolor>#EDDCFA</bgcolor><bordercolor>#DFBEF7</bordercolor><textcolor>#8C46C2</textcolor><itembordercolor>#B979F1</itembordercolor></violet>
</xsl:variable>
<!--		 Template: Root    -->
<xsl:template match="/">
	<xsl:apply-templates select="params"/>
</xsl:template>
<!--		 Template: Params    -->
<xsl:template match="params">
<xsl:variable name="cur_profile" select="q_skin"/>
<xsl:variable name="cur_folder"><xsl:value-of select="$imagesFolder"/><xsl:value-of select="q_realskin"/>/<xsl:value-of select="q_skin"/>/</xsl:variable>

<div style="display:none">

	<img border="0">
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_choicespot_0</xsl:attribute>
		<xsl:attribute name="src">
			<xsl:if test="q_defaultspot='no'"><xsl:value-of select="q_choicespot_0"/></xsl:if>
			<xsl:if test="q_defaultspot!='no'"><xsl:value-of select="$cur_folder"/>choice_spot_1_0.gif</xsl:if>
		</xsl:attribute>
	</img>
	<img border="0">
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_choicespot_2</xsl:attribute>
		<xsl:attribute name="src">
			<xsl:if test="q_defaultspot='no'"><xsl:value-of select="q_choicespot_1"/></xsl:if>
			<xsl:if test="q_defaultspot!='no'"><xsl:value-of select="$cur_folder"/>choice_spot_1_2.gif</xsl:if>
		</xsl:attribute>
	</img>
	<img border="0">
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_selectspot_0</xsl:attribute>
		<xsl:attribute name="src">
			<xsl:if test="q_defaultspot='no'"><xsl:value-of select="q_selectspot_0"/></xsl:if>
			<xsl:if test="q_defaultspot!='no'"><xsl:value-of select="$cur_folder"/>select_spot_1_0.gif</xsl:if>
		</xsl:attribute>
	</img>
	<img border="0">
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_selectspot_2</xsl:attribute>
		<xsl:attribute name="src">
			<xsl:if test="q_defaultspot='no'"><xsl:value-of select="q_selectspot_1"/></xsl:if>
			<xsl:if test="q_defaultspot!='no'"><xsl:value-of select="$cur_folder"/>select_spot_1_2.gif</xsl:if>
		</xsl:attribute>
	</img>

	<img border="0">
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_rangespot_up_0</xsl:attribute>
		<xsl:attribute name="src">
			<xsl:if test="q_defaultspot='no'"><xsl:value-of select="q_rangespot_up_0"/></xsl:if>
			<xsl:if test="q_defaultspot!='no'"><xsl:value-of select="$cur_folder"/>range_spot_up_0.gif</xsl:if>
		</xsl:attribute>
	</img>
	<img border="0">
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_rangespot_up_1</xsl:attribute>
		<xsl:attribute name="src">
			<xsl:if test="q_defaultspot='no'"><xsl:value-of select="q_rangespot_up_1"/></xsl:if>
			<xsl:if test="q_defaultspot!='no'"><xsl:value-of select="$cur_folder"/>range_spot_up_1.gif</xsl:if>
		</xsl:attribute>
	</img>
	<img border="0">
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_rangespot_down_0</xsl:attribute>
		<xsl:attribute name="src">
			<xsl:if test="q_defaultspot='no'"><xsl:value-of select="q_rangespot_down_0"/></xsl:if>
			<xsl:if test="q_defaultspot!='no'"><xsl:value-of select="$cur_folder"/>range_spot_down_0.gif</xsl:if>
		</xsl:attribute>
	</img>
	<img border="0">
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_rangespot_down_1</xsl:attribute>
		<xsl:attribute name="src">
			<xsl:if test="q_defaultspot='no'"><xsl:value-of select="q_rangespot_down_1"/></xsl:if>
			<xsl:if test="q_defaultspot!='no'"><xsl:value-of select="$cur_folder"/>range_spot_down_1.gif</xsl:if>
		</xsl:attribute>
	</img>

	<xsl:if test="q_defaultbutton='no'">
		<img border="0"><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_b_check_0</xsl:attribute><xsl:attribute name="src"><xsl:value-of select="q_abtn_0"/></xsl:attribute></img>
		<img border="0"><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_b_check_1</xsl:attribute><xsl:attribute name="src"><xsl:value-of select="q_abtn_1"/></xsl:attribute></img>
		<img border="0"><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_b_skip_0</xsl:attribute><xsl:attribute name="src"><xsl:value-of select="q_sbtn_0"/></xsl:attribute></img>
		<img border="0"><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_b_skip_1</xsl:attribute><xsl:attribute name="src"><xsl:value-of select="q_sbtn_1"/></xsl:attribute></img>
		<img border="0"><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_b_next_0</xsl:attribute><xsl:attribute name="src"><xsl:value-of select="q_nbtn_0"/></xsl:attribute></img>
		<img border="0"><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_b_next_1</xsl:attribute><xsl:attribute name="src"><xsl:value-of select="q_nbtn_1"/></xsl:attribute></img>
	</xsl:if>
	<xsl:if test="q_defaultbutton='yes'">
		<img width="150" height="25" border="0"><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_b_check_0</xsl:attribute><xsl:attribute name="src"><xsl:value-of select="$cur_folder"/>button_check_0.gif</xsl:attribute></img>
		<img width="150" height="25" border="0"><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_b_check_1</xsl:attribute><xsl:attribute name="src"><xsl:value-of select="$cur_folder"/>button_check_1.gif</xsl:attribute></img>
		<img width="150" height="25" border="0"><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_b_skip_0</xsl:attribute><xsl:attribute name="src"><xsl:value-of select="$cur_folder"/>button_skip_0.gif</xsl:attribute></img>
		<img width="150" height="25" border="0"><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_b_skip_1</xsl:attribute><xsl:attribute name="src"><xsl:value-of select="$cur_folder"/>button_skip_1.gif</xsl:attribute></img>
		<img width="150" height="25" border="0"><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_b_next_0</xsl:attribute><xsl:attribute name="src"><xsl:value-of select="$cur_folder"/>button_next_0.gif</xsl:attribute></img>
		<img width="150" height="25" border="0"><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_b_next_1</xsl:attribute><xsl:attribute name="src"><xsl:value-of select="$cur_folder"/>button_next_1.gif</xsl:attribute></img>
	</xsl:if>


	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_choiceitem</xsl:attribute>
		<xsl:if test="q_realskin!='blank'">
			<xsl:attribute name="style">margin-top: 2px; border: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bordercolor" /> solid 2px; background-color: #FFFFFF;</xsl:attribute>
		</xsl:if>
		<tr>
			<td valign="top" style="padding: 6px"><img border="0">
				<xsl:attribute name="src">
					<xsl:if test="q_defaultspot='no'"><xsl:value-of select="q_choicespot_0"/></xsl:if>
					<xsl:if test="q_defaultspot='yes'"><xsl:value-of select="$cur_folder"/>choice_spot_1_0.gif</xsl:if>
				</xsl:attribute>
				<xsl:attribute name="onclick">var oArgs = new Object; oArgs.pid = '<xsl:value-of select="$objectID"/>'; oArgs.qtype='choice'; oArgs.oid = this.getAttribute('spotid'); CallMethod('q_099_test','HandleClick',oArgs); return false;</xsl:attribute>
			</img><img border="0">
				<xsl:attribute name="style">display: none</xsl:attribute>
				<xsl:attribute name="src">
					<xsl:if test="q_defaultspot='no'"><xsl:value-of select="q_choicespot_1"/></xsl:if>
					<xsl:if test="q_defaultspot='yes'"><xsl:value-of select="$cur_folder"/>choice_spot_1_2.gif</xsl:if>
				</xsl:attribute>
			</img></td>
			<td width="100%" style="padding: 6px">%%var%%</td>
		</tr>
	</table>

	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_selectitem</xsl:attribute>
		<xsl:if test="q_realskin!='blank'">
			<xsl:attribute name="style">margin-top: 2px; border: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bordercolor" /> solid 2px; background-color: #FFFFFF;</xsl:attribute>
		</xsl:if>
		<tr>
			<td valign="top" style="padding: 6px"><img border="0">
				<xsl:attribute name="src">
					<xsl:if test="q_defaultspot='no'"><xsl:value-of select="q_selectspot_0"/></xsl:if>
					<xsl:if test="q_defaultspot='yes'"><xsl:value-of select="$cur_folder"/>select_spot_1_0.gif</xsl:if>
				</xsl:attribute>
				<xsl:attribute name="onclick">var oArgs = new Object; oArgs.pid = '<xsl:value-of select="$objectID"/>'; oArgs.qtype='select'; oArgs.oid = this.getAttribute('spotid'); CallMethod('q_099_test','HandleClick',oArgs); return false;</xsl:attribute>
			</img><img border="0">
				<xsl:attribute name="style">display: none</xsl:attribute>
				<xsl:attribute name="src">
					<xsl:if test="q_defaultspot='no'"><xsl:value-of select="q_selectspot_1"/></xsl:if>
					<xsl:if test="q_defaultspot='yes'"><xsl:value-of select="$cur_folder"/>select_spot_1_2.gif</xsl:if>
				</xsl:attribute>
				<xsl:attribute name="onclick">var oArgs = new Object; oArgs.pid = '<xsl:value-of select="$objectID"/>'; oArgs.qtype='select'; oArgs.oid = this.getAttribute('spotid'); CallMethod('q_099_test','HandleClick',oArgs); return false;</xsl:attribute>
			</img></td>
			<td width="100%" style="padding: 6px">%%var%%</td>
		</tr>
	</table>

	<table width="100%"  border="0" cellpadding="4" cellspacing="0" style="position: relative;">
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_rangeitem</xsl:attribute>
		<xsl:attribute name="style">position:relative; margin-top: 2px; border: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bordercolor" /> solid 2px; background-color: #FFFFFF;</xsl:attribute>
		<tr>
			<td valign="top" style="padding: 6px;">
				<table cellpadding="0" cellspacing="0" border="0">
					<tr>
						<td>
							<img border="0">
								<xsl:attribute name="src">
									<xsl:if test="q_defaultspot='no'"><xsl:value-of select="q_rangespot_up_0"/></xsl:if>
									<xsl:if test="q_defaultspot='yes'"><xsl:value-of select="$cur_folder"/>range_spot_up_0.gif</xsl:if>
								</xsl:attribute>
								<xsl:attribute name="onclick">var oArgs = new Object; oArgs.pid = '<xsl:value-of select="$objectID"/>'; oArgs.qtype='range'; oArgs.oid = this.getAttribute('id'); CallMethod('q_099_test','HandleClick',oArgs); return false;</xsl:attribute>
							</img>
						</td>
					</tr>
					<tr>
						<td>
							<img border="0">
								<xsl:attribute name="src">
									<xsl:if test="q_defaultspot='no'"><xsl:value-of select="q_rangespot_down_0"/></xsl:if>
									<xsl:if test="q_defaultspot='yes'"><xsl:value-of select="$cur_folder"/>range_spot_down_0.gif</xsl:if>
								</xsl:attribute>
								<xsl:attribute name="onclick">var oArgs = new Object; oArgs.pid = '<xsl:value-of select="$objectID"/>'; oArgs.qtype='range'; oArgs.oid = this.getAttribute('id'); CallMethod('q_099_test','HandleClick',oArgs); return false;</xsl:attribute>
							</img>
						</td>
					</tr>
				</table>
			</td>
			<td width="100%" style="padding: 6px;">%%var%%</td>
		</tr>
	</table>

	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_numericitem</xsl:attribute>
		<xsl:attribute name="style">margin-top: 2px; border: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bordercolor" /> solid 2px; background-color: #FFFFFF;</xsl:attribute>
		<tr>
			<td width="50%" valign="middle" align="right" style="padding: 6px">%%exp%%</td>
			<td width="50%" valign="middle" align="left" style="padding: 6px">
				<input type="text">
					<xsl:attribute name="onkeypress">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.iid=this.getAttribute('id'); oArgs.returnvalue = true; if(g_isMSIE) CallMethod('q_099_test','HandleKeyPressed',oArgs);if(!oArgs.returnvalue) return false;</xsl:attribute>
					<xsl:attribute name="onkeyup">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.iid=this.getAttribute('id'); oArgs.returnvalue = true; CallMethod('q_099_test','CheckValue',oArgs);</xsl:attribute>
					<xsl:attribute name="style">font-family: <xsl:value-of select="input_font"/>; color: <xsl:value-of select="input_font_color"/>; background-color: <xsl:value-of select="input_bg_color"/>; font-size:<xsl:value-of select="input_font_size"/>px; border-width: <xsl:value-of select="input_border_width"/>px; border-color: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bordercolor" />; border-style: <xsl:value-of select="input_border_style"/>;</xsl:attribute>
				</input>
			</td>
		</tr>
	</table>

	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_textitem</xsl:attribute>
		<xsl:attribute name="style">margin-top: 2px; border: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bordercolor" /> solid 2px; background-color: #FFFFFF;</xsl:attribute>
		<tr>
			<td width="50%" valign="middle" align="right" style="padding: 6px">%%exp%%</td>
			<td width="50%" valign="middle" align="left" style="padding: 6px">
				<input type="text">
					<xsl:attribute name="style">font-family: <xsl:value-of select="input_font"/>; color: <xsl:value-of select="input_font_color"/>; background-color: <xsl:value-of select="input_bg_color"/>; font-size:<xsl:value-of select="input_font_size"/>px; border-width: <xsl:value-of select="input_border_width"/>px; border-color: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bordercolor" />; border-style: <xsl:value-of select="input_border_style"/>;</xsl:attribute>
					<xsl:attribute name="onkeyup">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.iid=this.getAttribute('id'); oArgs.returnvalue = true; CallMethod('q_099_test','IfValue',oArgs);</xsl:attribute>
				</input>
			</td>
		</tr>
	</table>

	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_targetitem</xsl:attribute>
		<xsl:attribute name="style">position: absolute; z-index: 20; top: 0px; left:0px; width: <xsl:value-of select="q_targetwidth"/>px; height: 40px; background-color: #FFFFFF; border-left: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/itembordercolor" /> 2px solid; border-bottom: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/itembordercolor" /> 2px solid; border-top: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/itembordercolor" /> 2px solid; border-right: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/itembordercolor" /> 2px dotted; background-color: #FFFFFF; overflow: hidden; padding: 3px</xsl:attribute>
		<tr>
			<td>...</td>
		</tr>
	</table>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_bulletitem</xsl:attribute>
		<xsl:attribute name="style">display: none; position: absolute; z-index: 21; cursor:move; top: 0px; left:0px; width: <xsl:value-of select="q_bulletwidth"/>px; height: 40px; background-color: #FFFFFF; border-right: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/itembordercolor" /> 2px solid; border-bottom: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/itembordercolor" /> 2px solid; border-top: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/itembordercolor" /> 2px solid; border-left: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/itembordercolor" /> 2px dotted; background-color: #FFFFFF; overflow: hidden; padding: 3px</xsl:attribute>
		<xsl:attribute name="onmousedown">DragBegin(this, event); this.style.zIndex = 22;</xsl:attribute>
		<xsl:attribute name="onmouseup">DragEnd(this, event); this.style.zIndex = 21;</xsl:attribute>
		<xsl:attribute name="onmousemove">DragMove(this, event);</xsl:attribute>
		<tr>
			<td>...</td>
		</tr>
	</table>

	<xsl:if test="qtiimages='yes'">
		<xsl:for-each select="q_questions/item">
			<xsl:if test="q_image/text()!=''">
				<img border="0">
					<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_img_<xsl:value-of select="position()"/></xsl:attribute>
					<xsl:attribute name="src"><xsl:value-of select="q_image/text()"/></xsl:attribute>
				</img>
			</xsl:if>
		</xsl:for-each>
	</xsl:if>
</div>

<xsl:if test="test_fb_switch='yes'">
	<div>
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_fb_template</xsl:attribute>
		<xsl:attribute name="style">display: none; position:absolute; top:<xsl:value-of select="test_feedbacktop"/>px; left:<xsl:value-of select="test_feedbackleft"/>px; width:250px; border-style:solid; border-width: 2px; z-index: 100;</xsl:attribute>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="100%"><spacer height="1" width="50"/></td>
				<td align="center">
					<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_fb_closebutton</xsl:attribute>
					<xsl:attribute name="style">cursor: hand; cursor: pointer; padding-left: 4px; padding-right: 3px; padding-top:1px; padding-bottom: 2px; background-color: black; color: white; font-family: Tahoma, sans-serif; font-size: 10px; font-weight: bold</xsl:attribute>
					<xsl:attribute name="onclick">var oArgs = new Object; oArgs.pid = '<xsl:value-of select="$objectID"/>'; CallMethod('q_099_test','HideFeedback',oArgs); return false;</xsl:attribute>
					X
				</td>
			</tr>
			<tr>
				<td  colspan="2" style="padding-top: 0px; padding-left: 6px; padding-right: 6px; padding-bottom:16px;">
					<div style="width:100%; text-align:center;"><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_fb_text</xsl:attribute>%%%</div>
				</td>
			</tr>
		</table>
	</div>
</xsl:if>

<xsl:choose>
	<xsl:when test="q_realskin='basic'">
		<div style="background-color: #FFFFFF;">
			<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_test_container</xsl:attribute>
			<table width="100%" cellpadding="0" cellspacing="0" border="0"><tr>
			<xsl:if test="qtiimages='yes'">
				<td>
					<xsl:attribute name="style">padding-right:6px; vertical-align:top;</xsl:attribute>
					<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_imgcontainer</xsl:attribute>
				</td>
			</xsl:if>
			<td width="100%" valign="top">
				<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_qcontainer</xsl:attribute>
				<table width="100%" border="0" cellpadding="0" cellspacing="0" style="background-color: #FFFFFF;">
					<tr>
						<td width="100%" valign="top">
							<xsl:attribute name="style">width:100%; padding:6px; text-align:center; font-family:Arial, Helvetica, sans-serif; font-size:11px; color:<xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/textcolor" />;</xsl:attribute>
							<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_creditcontainer</xsl:attribute>
							<xsl:if test="test_scored='yes'"><span><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_credited</xsl:attribute><xsl:value-of select="q_scored_msg"/></span></xsl:if>
							<xsl:if test="test_scored='no'"><span><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_notcredited</xsl:attribute><xsl:value-of select="q_notscored_msg"/></span></xsl:if>
							<span style="margin-left: 4px; margin-right: 4px;"><xsl:value-of select="q_question_msg"/></span>
							<span><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_test_currentq</xsl:attribute>0</span>
							<span style="margin-left: 4px; margin-right: 4px;"><xsl:value-of select="q_from_msg"/></span>
							<span><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_test_totalq</xsl:attribute>0</span>
						</td>
					</tr>
					<tr>
						<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_textcontainer</xsl:attribute>
						<td width="100%">
								<xsl:attribute name="style">padding:4px; border: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bordercolor" /> solid 2px; background-color: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bgcolor" /></xsl:attribute><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_text</xsl:attribute>
								%%%
						</td>
					</tr>
					<tr>
						<td width="100%">
							<xsl:attribute name="style">padding:6px; text-align:center; font-family:Arial, Helvetica, sans-serif; font-size:11px; color:<xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/textcolor" />;</xsl:attribute>
							<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_objective</xsl:attribute>
							%%%
						</td>
					</tr>
				</table>
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td width="100%">
							<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_holder</xsl:attribute>
							<div width="100%">
								<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_otoworkarea</xsl:attribute>
								<xsl:attribute name="style">position: relative; background-color:<xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bordercolor" />; overflow: hidden; height: 5px;</xsl:attribute>
								...
							</div>
							<div>
								<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_workarea</xsl:attribute>
								<xsl:attribute name="style">position: relative; top:0px; left:0px; background-color:#FFFFFF;</xsl:attribute>
								...
							</div>
						</td>
					</tr>
				</table>
				<table width="100%" cellpadding="0" cellspacing="0" border="0">
					<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_button_area</xsl:attribute>
					<xsl:attribute name="style">margin-top: 2px; border: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bordercolor" /> solid 2px; background-color: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bgcolor" /></xsl:attribute>
					<tr>
						<td style="width:50%; text-align:left; padding: 4px; height: 33px;"><span style="display:none;"><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_b_check_container</xsl:attribute><img style="cursor:hand; cursor:pointer;" border="0">
						<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_b_check_button</xsl:attribute>
						<xsl:attribute name="alt"><xsl:value-of select="q_abtn_tooltip"/></xsl:attribute>
						<xsl:attribute name="src">
							<xsl:if test="q_defaultbutton='no'"><xsl:value-of select="q_abtn_0"/></xsl:if>
							<xsl:if test="q_defaultbutton='yes'"><xsl:value-of select="$cur_folder"/>button_check_0.gif</xsl:if>
						</xsl:attribute>
						<xsl:attribute name="onmouseover">this.src = document.getElementById('<xsl:value-of select="$objectID"/>_q_b_check_1').src; return false;</xsl:attribute>
						<xsl:attribute name="onmouseout">this.src = document.getElementById('<xsl:value-of select="$objectID"/>_q_b_check_0').src; return false;</xsl:attribute>
						<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; CallMethod('q_099_test','EvalAnswer',oArgs); return false;</xsl:attribute>
					</img></span></td>
					<td align="center" style="text-align:center; height: 33px;">
						<div style="display:inline;">
							<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_attempts_container</xsl:attribute>
							<table cellspacing="0" cellpadding="2" border="0">
								<tr>
									<td align="right" nowrap="nowrap">
										<xsl:attribute name="style">font-family:Arial, Helvetica, sans-serif; font-size:11px; </xsl:attribute>
										<xsl:value-of select="q_attempts_msg"/>
									</td>
									<td align="left" nowrap="nowrap">
										<xsl:attribute name="style">font-family:Arial, Helvetica, sans-serif; font-size:11px; </xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_attempts_count</xsl:attribute>
										<xsl:if test="q_att_auto='no'"><xsl:value-of select="q_attempts" /></xsl:if>
										<xsl:if test="q_att_auto='yes'"><xsl:value-of select="count(q_variants/item)-1" /></xsl:if>
									</td>
								</tr>
							</table>
						</div>
					</td>
					<td align="right" width="50%" style="width:50%; text-align:right; padding: 4px; height: 33px;">
						<span style="display:none;"><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_b_skip_container</xsl:attribute><img style="cursor:hand;cursor:pointer;" border="0">
						<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_b_skip_button</xsl:attribute>
						<xsl:attribute name="alt"><xsl:value-of select="q_sbtn_tooltip"/></xsl:attribute>
						<xsl:attribute name="src">
							<xsl:if test="q_defaultbutton='no'"><xsl:value-of select="q_sbtn_0"/></xsl:if>
							<xsl:if test="q_defaultbutton='yes'"><xsl:value-of select="$cur_folder"/>button_skip_0.gif</xsl:if>
						</xsl:attribute>
						<xsl:attribute name="onmouseover">this.src = document.getElementById('<xsl:value-of select="$objectID"/>_q_b_skip_1').src; return false;</xsl:attribute>
						<xsl:attribute name="onmouseout">this.src = document.getElementById('<xsl:value-of select="$objectID"/>_q_b_skip_0').src; return false;</xsl:attribute>
						<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; CallMethod('q_099_test','SkipQuestion',oArgs);return false;</xsl:attribute>
						</img></span>
						<div style="display:none;">
							<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_b_next_container</xsl:attribute>
							<img style="cursor:hand;cursor:pointer;" border="0">
								<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_b_next_button</xsl:attribute>
								<xsl:attribute name="alt"><xsl:value-of select="q_nbtn_tooltip"/></xsl:attribute>
								<xsl:attribute name="src">
									<xsl:if test="q_defaultbutton='no'"><xsl:value-of select="q_nbtn_0"/></xsl:if>
									<xsl:if test="q_defaultbutton='yes'"><xsl:value-of select="$cur_folder"/>button_next_0.gif</xsl:if>
								</xsl:attribute>
								<xsl:attribute name="onmouseover">this.src = document.getElementById('<xsl:value-of select="$objectID"/>_q_b_next_1').src; return false;</xsl:attribute>
								<xsl:attribute name="onmouseout">this.src = document.getElementById('<xsl:value-of select="$objectID"/>_q_b_next_0').src; return false;</xsl:attribute>
								<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.action='clicknext'; CallMethod("q_099_test","Dispatcher",oArgs);return false;</xsl:attribute>
							</img>
						</div>
						<div style="display:none; font-family: Verdana,Arial,sans-serif; font-size: 10px">
							<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_nomore</xsl:attribute>
							<xsl:value-of select="t_nomoreanswered_msg"/>
						</div>
						<div style="display:none; font-family: Verdana,Arial,sans-serif; font-size: 10px">
							<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_testend</xsl:attribute>
							<xsl:value-of select="t_allanswered_msg"/>
						</div>
						<div style="display:none; font-family: Verdana,Arial,sans-serif; font-size: 10px">
							<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_teststopped</xsl:attribute>
							<xsl:value-of select="t_stop_msg"/>
						</div>
					</td>
				</tr>
			</table>
			<table cellspacing="0" cellpadding="2" border="0" width="100%">
				<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_timer_area</xsl:attribute>
				<xsl:attribute name="style">display: none; margin-top: 2px; padding:4px; border: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bordercolor" /> solid 2px; background-color: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bgcolor" /></xsl:attribute>
				<tr>
					<td align="center" width="50%"></td>
					<td align="center">
						<xsl:attribute name="style">text-align: center;</xsl:attribute>
						<table cellspacing="0" cellpadding="0" border="0" align="center" width="100%">
							<tr>
								<td nowrap="nowrap" align="right">
									<xsl:attribute name="style">margin: 2px; padding:4px; text-align:right; font-family:Arial, Helvetica, sans-serif; font-size:11px; color:<xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/textcolor" />;</xsl:attribute>
									<xsl:value-of select="q_timer_msg"/>
								</td>
								<td width="200" style="width: 200px; text-align:center; vertical-align: middle;">
									<div style="background-color:#00CC66; border: #666666 solid 1px; text-align:left; height: 10px; width: 200px">
										<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_timer_bg</xsl:attribute>
										<div style="background-color:#999999; height: 10px; width: 1px;">
											<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_timer_progress</xsl:attribute>
											<spacer width="1" height="1"/>
										</div>
									</div>
								</td>
								<td nowrap="nowrap" align="left" width="50%">
									<xsl:attribute name="style">margin: 2px; padding:4px; text-align:left; font-family:Arial, Helvetica, sans-serif; font-size:11px; color:<xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/textcolor" />;</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_timer_value</xsl:attribute>
									 sec
								</td>
							</tr>
						</table>
					</td>
					<td align="center" width="50%"></td>
				</tr>
			</table>
			<xsl:if test="test_timer_switch='yes'">
				<table cellspacing="0" cellpadding="2" border="0" width="100%">
					<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_test_timer_area</xsl:attribute>
					<xsl:attribute name="style">display: none; margin-top: 2px; padding:4px; border: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bordercolor" /> solid 2px; background-color: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bgcolor" /></xsl:attribute>
					<tr>
						<td align="center" width="50%"></td>
						<td align="center">
							<table cellspacing="0" cellpadding="0" border="0">
								<tr>
									<td nowrap="nowrap" align="right">
										<xsl:attribute name="style">margin: 2px; padding:4px; text-align:right; font-family:Arial, Helvetica, sans-serif; font-size:11px; color:<xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/textcolor" />;</xsl:attribute>
										<xsl:value-of select="t_timer_msg"/>
									</td>
									<td width="200" style="width: 200px; text-align:center; vertical-align: middle;">
										<div style="background-color:#00CC66; border: #666666 solid 1px; text-align:left; height: 10px; width: 200px">
											<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_test_timer_bg</xsl:attribute>
											<div style="background-color:#999999; height: 10px; width: 1px;">
												<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_test_timer_progress</xsl:attribute>
												<spacer width="1" height="1"/>
											</div>
										</div>
									</td>
									<td nowrap="nowrap" align="left">
										<xsl:attribute name="style">margin: 2px; padding:4px; text-align:left; font-family:Arial, Helvetica, sans-serif; font-size:11px; color:<xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/textcolor" />;</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_test_timer_value</xsl:attribute>
										 sec
									</td>
								</tr>
							</table>
						</td>
						<td align="center" width="50%"></td>
					</tr>
				</table>
			</xsl:if>
			</td></tr></table>
		</div>
	</xsl:when>
	<xsl:when test="q_realskin='curve'">
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tr>
 				<td style="width: 10px; height:10px"><img width="10" height="10" border="0"><xsl:attribute name="src"><xsl:value-of select="$cur_folder"/>top_left_corner.gif</xsl:attribute></img></td>
				<td><xsl:attribute name="style">height: 10px; background-image:url(<xsl:value-of select="$cur_folder"/>top_line.gif); background-repeat: repeat-x; background-position: top;</xsl:attribute></td>
				<td style="width: 10px; height:10px"><img width="10" height="10" border="0"><xsl:attribute name="src"><xsl:value-of select="$cur_folder"/>top_right_corner.gif</xsl:attribute></img></td>
			</tr>
			<tr>
				<td><xsl:attribute name="style">width: 10px; background-image:url(<xsl:value-of select="$cur_folder"/>left_line.gif); background-repeat: repeat-y;  background-position: left;</xsl:attribute></td>
				<td>
					<div style="background-color: #FFFFFF;">
						<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_test_container</xsl:attribute>
						<table width="100%" cellpadding="0" cellspacing="0" border="0"><tr>
						<xsl:if test="qtiimages='yes'">
							<td>
								<xsl:attribute name="style">padding-right:6px; vertical-align:top;</xsl:attribute>
								<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_imgcontainer</xsl:attribute>
							</td>
						</xsl:if>
						<td valign="top">
							<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_qcontainer</xsl:attribute>
							<table width="100%" border="0" cellpadding="0" cellspacing="0" style="background-color: #FFFFFF;">
								<tr>
									<td width="100%">
										<xsl:attribute name="style">width:100%; padding:6px; text-align:center; font-family:Arial, Helvetica, sans-serif; font-size:11px; color:<xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/textcolor" />;</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_creditcontainer</xsl:attribute>
										<xsl:if test="test_scored='yes'"><span><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_credited</xsl:attribute><xsl:value-of select="q_scored_msg"/></span></xsl:if>
										<xsl:if test="test_scored='no'"><span><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_notcredited</xsl:attribute><xsl:value-of select="q_notscored_msg"/></span></xsl:if>
										<span style="margin-left: 4px; margin-right: 4px;"><xsl:value-of select="q_question_msg"/></span>
										<span><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_test_currentq</xsl:attribute>0</span>
										<span style="margin-left: 4px; margin-right: 4px;"><xsl:value-of select="q_from_msg"/></span>
										<span><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_test_totalq</xsl:attribute>0</span>
									</td>
								</tr>
								<tr>
									<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_textcontainer</xsl:attribute>
									<td width="100%">
											<xsl:attribute name="style">padding:4px; border: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bordercolor" /> solid 2px; background-color: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bgcolor" /></xsl:attribute><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_text</xsl:attribute>
											%%%
									</td>
								</tr>
								<tr>
									<td width="100%">
										<xsl:attribute name="style">padding:6px; text-align:center; font-family:Arial, Helvetica, sans-serif; font-size:11px; color:<xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/textcolor" />;</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_objective</xsl:attribute>
										%%%
									</td>
								</tr>
							</table>
							<table width="100%" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td width="100%">
										<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_holder</xsl:attribute>
										<div width="100%">
											<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_otoworkarea</xsl:attribute>
											<xsl:attribute name="style">position: relative; background-color:<xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bordercolor" />; overflow: hidden; height: 1px;</xsl:attribute>
											...
										</div>
										<div>
											<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_workarea</xsl:attribute>
											<xsl:attribute name="style">position: relative; top:0px; left:0px; background-color:#FFFFFF;</xsl:attribute>
											...
										</div>
									</td>
								</tr>
							</table>
							<table width="100%" cellpadding="0" cellspacing="0" border="0">
								<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_button_area</xsl:attribute>
								<xsl:attribute name="style">margin-top: 2px; border: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bordercolor" /> solid 2px; background-color: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bgcolor" /></xsl:attribute>
								<tr>
									<td style="width:50%; text-align:left; padding: 4px; height: 33px;"><span style="display:none;"><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_b_check_container</xsl:attribute><img style="cursor:hand; cursor:pointer;" border="0">
										<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_b_check_button</xsl:attribute>
										<xsl:attribute name="alt"><xsl:value-of select="q_abtn_tooltip"/></xsl:attribute>
										<xsl:attribute name="src">
											<xsl:if test="q_defaultbutton='no'"><xsl:value-of select="q_abtn_0"/></xsl:if>
											<xsl:if test="q_defaultbutton='yes'"><xsl:value-of select="$cur_folder"/>button_check_0.gif</xsl:if>
										</xsl:attribute>
										<xsl:attribute name="onmouseover">this.src = document.getElementById('<xsl:value-of select="$objectID"/>_q_b_check_1').src; return false;</xsl:attribute>
										<xsl:attribute name="onmouseout">this.src = document.getElementById('<xsl:value-of select="$objectID"/>_q_b_check_0').src; return false;</xsl:attribute>
										<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; CallMethod('q_099_test','EvalAnswer',oArgs); return false;</xsl:attribute>
									</img></span></td>
									<td align="center" style="text-align:center; height: 33px;">
										<div style="display:inline;">
											<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_attempts_container</xsl:attribute>
											<table cellspacing="0" cellpadding="2" border="0">
												<tr>
													<td align="right" nowrap="nowrap">
														<xsl:attribute name="style">font-family:Arial, Helvetica, sans-serif; font-size:11px; </xsl:attribute>
														<xsl:value-of select="q_attempts_msg"/>
													</td>
													<td align="left" nowrap="nowrap">
														<xsl:attribute name="style">font-family:Arial, Helvetica, sans-serif; font-size:11px; </xsl:attribute>
														<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_attempts_count</xsl:attribute>
														0
													</td>
												</tr>
											</table>
										</div>
									</td>
									<td align="right" width="50%" style="width:50%; text-align:right; padding: 4px; height: 33px;">
										<span style="display:none;"><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_b_skip_container</xsl:attribute><img style="cursor:hand;cursor:pointer;" border="0">
										<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_b_skip_button</xsl:attribute>
										<xsl:attribute name="alt"><xsl:value-of select="q_sbtn_tooltip"/></xsl:attribute>
										<xsl:attribute name="src">
											<xsl:if test="q_defaultbutton='no'"><xsl:value-of select="q_sbtn_0"/></xsl:if>
											<xsl:if test="q_defaultbutton='yes'"><xsl:value-of select="$cur_folder"/>button_skip_0.gif</xsl:if>
										</xsl:attribute>
										<xsl:attribute name="onmouseover">this.src = document.getElementById('<xsl:value-of select="$objectID"/>_q_b_skip_1').src; return false;</xsl:attribute>
										<xsl:attribute name="onmouseout">this.src = document.getElementById('<xsl:value-of select="$objectID"/>_q_b_skip_0').src; return false;</xsl:attribute>
										<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; CallMethod('q_099_test','SkipQuestion',oArgs);return false;</xsl:attribute>
										</img></span>
										<div style="display:none;">
											<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_b_next_container</xsl:attribute>
											<img style="cursor:hand;cursor:pointer;" border="0">
												<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_b_next_button</xsl:attribute>
												<xsl:attribute name="alt"><xsl:value-of select="q_nbtn_tooltip"/></xsl:attribute>
												<xsl:attribute name="src">
													<xsl:if test="q_defaultbutton='no'"><xsl:value-of select="q_nbtn_0"/></xsl:if>
													<xsl:if test="q_defaultbutton='yes'"><xsl:value-of select="$cur_folder"/>button_next_0.gif</xsl:if>
												</xsl:attribute>
												<xsl:attribute name="onmouseover">this.src = document.getElementById('<xsl:value-of select="$objectID"/>_q_b_next_1').src; return false;</xsl:attribute>
												<xsl:attribute name="onmouseout">this.src = document.getElementById('<xsl:value-of select="$objectID"/>_q_b_next_0').src; return false;</xsl:attribute>
												<xsl:attribute name="onclick">var oArgs=new Object; oArgs.pid='<xsl:value-of select="$objectID"/>'; oArgs.action='clicknext'; CallMethod("q_099_test","Dispatcher",oArgs);return false;</xsl:attribute>
											</img>
										</div>
										<div style="display:none; font-family: Verdana,Arial,sans-serif; font-size: 10px">
											<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_nomore</xsl:attribute>
											<xsl:value-of select="t_nomoreanswered_msg"/>
										</div>
										<div style="display:none; font-family: Verdana,Arial,sans-serif; font-size: 10px">
											<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_testend</xsl:attribute>
											<xsl:value-of select="t_allanswered_msg"/>
										</div>
										<div style="display:none; font-family: Verdana,Arial,sans-serif; font-size: 10px">
											<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_teststopped</xsl:attribute>
											<xsl:value-of select="t_stop_msg"/>
										</div>
									</td>
								</tr>
							</table>
							<table cellspacing="0" cellpadding="2" border="0" width="100%">
								<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_timer_area</xsl:attribute>
								<xsl:attribute name="style">display: none; margin-top: 2px; padding:4px; border: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bordercolor" /> solid 2px; background-color: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bgcolor" /></xsl:attribute>
								<tr>
									<td align="center" width="50%"></td>
									<td align="center">
										<xsl:attribute name="style">text-align: center;</xsl:attribute>
										<table cellspacing="0" cellpadding="0" border="0" align="center" width="100%">
											<tr>
												<td nowrap="nowrap" align="right">
													<xsl:attribute name="style">margin: 2px; padding:4px; text-align:right; font-family:Arial, Helvetica, sans-serif; font-size:11px; color:<xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/textcolor" />;</xsl:attribute>
													<xsl:value-of select="q_timer_msg"/>
												</td>
												<td width="200" style="width: 200px; text-align:center; vertical-align: middle;">
													<div style="background-color:#00CC66; border: #666666 solid 1px; text-align:left; height: 10px; width: 200px">
														<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_timer_bg</xsl:attribute>
														<div style="background-color:#999999; height: 10px; width: 1px;">
															<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_timer_progress</xsl:attribute>
															<spacer width="1" height="1"/>
														</div>
													</div>
												</td>
												<td nowrap="nowrap" align="left" width="50%">
													<xsl:attribute name="style">margin: 2px; padding:4px; text-align:left; font-family:Arial, Helvetica, sans-serif; font-size:11px; color:<xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/textcolor" />;</xsl:attribute>
													<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_timer_value</xsl:attribute>
													 sec
												</td>
											</tr>
										</table>
									</td>
									<td align="center" width="50%"></td>
								</tr>
							</table>
							<xsl:if test="test_timer_switch='yes'">
								<table cellspacing="0" cellpadding="2" border="0" width="100%">
									<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_test_timer_area</xsl:attribute>
									<xsl:attribute name="style">display: none; margin-top: 2px; padding:4px; border: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bordercolor" /> solid 2px; background-color: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bgcolor" /></xsl:attribute>
									<tr>
										<td align="center" width="50%"></td>
										<td align="center">
											<table cellspacing="0" cellpadding="0" border="0">
												<tr>
													<td nowrap="nowrap" align="right">
														<xsl:attribute name="style">margin: 2px; padding:4px; text-align:right; font-family:Arial, Helvetica, sans-serif; font-size:11px; color:<xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/textcolor" />;</xsl:attribute>
														<xsl:value-of select="t_timer_msg"/>
													</td>
													<td width="200" style="width: 200px; text-align:center; vertical-align: middle;">
														<div style="background-color:#00CC66; border: #666666 solid 1px; text-align:left; height: 10px; width: 200px">
															<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_test_timer_bg</xsl:attribute>
															<div style="background-color:#999999; height: 10px; width: 1px;">
																<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_test_timer_progress</xsl:attribute>
																<spacer width="1" height="1"/>
															</div>
														</div>
													</td>
													<td nowrap="nowrap" align="left">
														<xsl:attribute name="style">margin: 2px; padding:4px; text-align:left; font-family:Arial, Helvetica, sans-serif; font-size:11px; color:<xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/textcolor" />;</xsl:attribute>
														<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_test_timer_value</xsl:attribute>
														 sec
													</td>
												</tr>
											</table>
										</td>
										<td align="center" width="50%"></td>
									</tr>
								</table>
							</xsl:if>
						</td></tr></table>
					</div>
				</td>
				<td><xsl:attribute name="style">width:10px; background-image:url(<xsl:value-of select="$cur_folder"/>right_line.gif); background-repeat: repeat-y;  background-position: right;</xsl:attribute></td>
			</tr>
			<tr>
				<td style="width: 10px; height:10px"><img width="10" height="10" border="0"><xsl:attribute name="src"><xsl:value-of select="$cur_folder"/>bottom_left_corner.gif</xsl:attribute></img></td>
				<td><xsl:attribute name="style">background-image:url(<xsl:value-of select="$cur_folder"/>bottom_line.gif); background-repeat: repeat-x; background-position: bottom;</xsl:attribute></td>
				<td style="width: 10px; height:10px"><img width="10" height="10" border="0"><xsl:attribute name="src"><xsl:value-of select="$cur_folder"/>bottom_right_corner.gif</xsl:attribute></img></td>
			</tr>
		</table>
	</xsl:when>
</xsl:choose>
</xsl:template>
</xsl:stylesheet>
