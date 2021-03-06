<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:msxsl="urn:schemas-microsoft-com:xslt"
				xmlns:websoft="http://www.websoft.ru"
				version="1.0">
<!--
'*	q_002_select#.xsl
'*	Copyright (c) Websoft, 2007.  All rights reserved.
-->
<xsl:output method="xml" encoding="utf-8" omit-xml-declaration="yes"/>
<xsl:param name="imagesFolder"></xsl:param>
<xsl:param name="moduleImagesFolder"></xsl:param>
<xsl:param name="objectID"></xsl:param>
<!--	Profiles definition		-->
<xsl:variable name="profiles">
	<lightblue><bgcolor>#EFF8FF</bgcolor><bordercolor>#DFEFFF</bordercolor><textcolor>#336699</textcolor></lightblue>
	<turq><bgcolor>#DCF5F5</bgcolor><bordercolor>#A6DEDE</bordercolor><textcolor>#006666</textcolor></turq>
	<yellow><bgcolor>#FFFFCC</bgcolor><bordercolor>#F0F0B9</bordercolor><textcolor>#999900</textcolor></yellow>
	<brown><bgcolor>#FAE1C8</bgcolor><bordercolor>#E5C5A5</bordercolor><textcolor>#8A4F19</textcolor></brown>
	<red><bgcolor>#FFE0E0</bgcolor><bordercolor>#FCB3B3</bordercolor><textcolor>#CC3333</textcolor></red>
	<olive><bgcolor>#F5F5CB</bgcolor><bordercolor>#DEDEA0</bordercolor><textcolor>#666600</textcolor></olive>
	<orange><bgcolor>#FFE2C4</bgcolor><bordercolor>#FFCCA8</bordercolor><textcolor>#FF6600</textcolor></orange>
	<pink><bgcolor>#FAE6FA</bgcolor><bordercolor>#F5BCF5</bordercolor><textcolor>#CC33CC</textcolor></pink>
	<green><bgcolor>#DDFFCC</bgcolor><bordercolor>#D3F0B4</bordercolor><textcolor>#669900</textcolor></green>
	<grey><bgcolor>#E6E6E6</bgcolor><bordercolor>#CCCCCC</bordercolor><textcolor>#666666</textcolor></grey>
	<blue_green><bgcolor>#D3F0E0</bgcolor><bordercolor>#A8E3C2</bordercolor><textcolor>#178560</textcolor></blue_green>
	<blue><bgcolor>#D9E7FC</bgcolor><bordercolor>#9DC3FC</bordercolor><textcolor>#0D49A8</textcolor></blue>
	<steel_blue><bgcolor>#E1E9F5</bgcolor><bordercolor>#C0D3ED</bordercolor><textcolor>#496B9E</textcolor></steel_blue>
	<deeppink><bgcolor>#FFDBE7</bgcolor><bordercolor>#FAB1CA</bordercolor><textcolor>#D10D51</textcolor></deeppink>
	<violet><bgcolor>#EDDCFA</bgcolor><bordercolor>#DFBEF7</bordercolor><textcolor>#8C46C2</textcolor></violet>
</xsl:variable>
<!--		 Template: Root    -->
<xsl:template match="/">
	<xsl:apply-templates select="params"/>
</xsl:template>
<!--		 Template: Params    -->
<xsl:template match="params">

<xsl:variable name="cur_profile" select="q_skin"/>
<xsl:variable name="cur_folder"><xsl:value-of select="$imagesFolder"/><xsl:value-of select="q_realskin"/>/<xsl:if  test="q_realskin='basic'"><xsl:value-of select="q_skin"/></xsl:if><xsl:if test="q_realskin='curve'"><xsl:value-of select="q_skin"/></xsl:if><xsl:if test="q_realskin='blank'"><xsl:value-of select="q_button"/></xsl:if>/</xsl:variable>
<xsl:variable name="img_folder"><xsl:value-of select="substring-before($moduleImagesFolder,'images\')"/></xsl:variable>

<xsl:choose>
	<xsl:when test="q_realskin='basic'">
		<div style="background-color:#FFFFFF;">
			<table width="100%" border="0" cellpadding="4" cellspacing="0" style="background-color: #FFFFFF;">
				<tr>
					<td width="100%"><xsl:attribute name="style">width:100%; padding:6px; text-align:center; font-family:Arial, Helvetica, sans-serif; font-size:11px; color:<xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/textcolor" />;</xsl:attribute><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_creditcontainer</xsl:attribute>
						<xsl:if test="q_scored='yes'"><xsl:value-of select="q_credit_msg"/></xsl:if>
						<xsl:if test="q_scored='no'"><xsl:value-of select="q_nocredit_msg"/></xsl:if>
					</td>
				</tr>
				<tr>
					<td width="100%"><xsl:attribute name="style">padding:4px; border: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bordercolor" /> solid 2px; background-color: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bgcolor" /></xsl:attribute><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_text</xsl:attribute><xsl:value-of select="q_question" disable-output-escaping="yes"/></td>
				</tr>
				<tr>
					<td width="100%"><xsl:attribute name="style">padding:6px; text-align:center; font-family:Arial, Helvetica, sans-serif; font-size:11px; color:<xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/textcolor" />;</xsl:attribute><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_objective</xsl:attribute><xsl:value-of select="q_goal" /></td>
				</tr>
			</table>
			<table width="100%" border="0" cellpadding="0" cellspacing="0" style="background-color: #FFFFFF;">
				<tr>
					<td>
						<xsl:for-each select="q_variants/item">
							<table width="100%" border="0" cellpadding="0" cellspacing="0">
								<xsl:attribute name="style">margin-top: 2px; border: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bordercolor" /> solid 2px; background-color: #FFFFFF;</xsl:attribute>
								<tr>
									<td valign="top" style="padding: 6px"><img border="0">
										<xsl:if test="q_right/text()!='yes'">
											<xsl:attribute name="src">
												<xsl:if test="../../q_customspot='yes'"><xsl:value-of select="$img_folder"/><xsl:value-of select="translate(../../q_spot_0,'/','\')"/></xsl:if>
												<xsl:if test="../../q_customspot!='yes'"><xsl:value-of select="$cur_folder"/>select_spot_1_0.gif</xsl:if>
											</xsl:attribute>
										</xsl:if>
										<xsl:if test="q_right/text()='yes'">
											<xsl:attribute name="src">
												<xsl:if test="../../q_customspot='yes'"><xsl:value-of select="$img_folder"/><xsl:value-of select="translate(../../q_spot_1,'/','\')"/></xsl:if>
												<xsl:if test="../../q_customspot!='yes'"><xsl:value-of select="$cur_folder"/>select_spot_1_2.gif</xsl:if>
											</xsl:attribute>
										</xsl:if>
									</img></td>
									<td width="100%" style="padding: 6px"><xsl:value-of select="q_variant/text()" disable-output-escaping="yes"/></td>
								</tr>
							</table>
						</xsl:for-each>
					</td>
				</tr>
			</table>
			<table width="100%" cellpadding="0" cellspacing="0" border="0">
				<xsl:attribute name="style">margin-top: 2px; border: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bordercolor" /> solid 2px; background-color: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bgcolor" /></xsl:attribute>
				<tr>
					<td style="width:50%; text-align:left; padding: 4px; height: 33px;">
						<span style="display:inline;"><img border="0">
							<xsl:attribute name="src">
								<xsl:if test="q_custombutton='yes'"><xsl:value-of select="$img_folder"/><xsl:value-of select="translate(q_abtn_0,'/','\')"/></xsl:if>
								<xsl:if test="q_custombutton!='yes'"><xsl:value-of select="$cur_folder"/>button_check_0.gif</xsl:if>
							</xsl:attribute>
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
										<xsl:if test="q_att_auto='no'"><xsl:value-of select="q_attempts" /></xsl:if>
										<xsl:if test="q_att_auto='yes'"><xsl:value-of select="count(q_variants/item)-1" /></xsl:if>
									</td>
								</tr>
							</table>
						</div>
					</td>
					<td align="right" width="50%" style="width:50%; text-align:right; padding: 4px; height: 33px;"><xsl:if test="q_skip='yes'"><span style="display:inline;"><img border="0">
						<xsl:attribute name="src">
							<xsl:if test="q_custombutton='yes'"><xsl:value-of select="$img_folder"/><xsl:value-of select="translate(q_sbtn_0,'/','\')"/></xsl:if>
							<xsl:if test="q_custombutton!='yes'"><xsl:value-of select="$cur_folder"/>button_skip_0.gif</xsl:if>
						</xsl:attribute>
					</img></span></xsl:if></td>
				</tr>
			</table>
			<xsl:if test="q_timer_switch='yes'">
				<table width="100%" cellspacing="0" cellpadding="2" border="0">
					<xsl:attribute name="style">margin-top: 2px; border: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bordercolor" /> solid 2px; background-color: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bgcolor" /></xsl:attribute>
					<tr>
						<td nowrap="nowrap">
							<xsl:attribute name="style">width:50%; margin: 2px; padding:4px; text-align:right; font-family:Arial, Helvetica, sans-serif; font-size:11px; color:<xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/textcolor" />;</xsl:attribute>
							<xsl:value-of select="q_timer_msg"/>
						</td>
						<td width="200" style="width: 200px; text-align:center; vertical-align: middle;">
							<div style="background-color:#00CC66; border: #666666 solid 1px; text-align:left; height: 10px; width: 200px">
								<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_timer_bg</xsl:attribute>
								<div style="background-color:#999999; height: 10px; width: 50px;">
									<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_timer_progress</xsl:attribute>
									<spacer width="1" height="1"/>
								</div>
							</div>
						</td>
						<td nowrap="nowrap">
							<xsl:attribute name="style">width:50%; margin: 2px; padding:4px; text-align:left; font-family:Arial, Helvetica, sans-serif; font-size:11px; color:<xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/textcolor" />;</xsl:attribute>
							<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_timer_value</xsl:attribute>
							<xsl:value-of select="q_timer"/> sec
						</td>
					</tr>
				</table>
			</xsl:if>
		</div>
	</xsl:when>
	<xsl:when test="q_realskin='curve'">
		<table border="0" cellpadding="0" cellspacing="0">
			<tr>
 				<td style="width: 10px; height:10px"><img width="10" height="10" border="0"><xsl:attribute name="src"><xsl:value-of select="$cur_folder"/>top_left_corner.gif</xsl:attribute></img></td>
				<td><xsl:attribute name="style">height: 10px; background-image:url(<xsl:value-of select="$cur_folder"/>top_line.gif); background-repeat: repeat-x; background-position: top;</xsl:attribute></td>
				<td style="width: 10px; height:10px"><img width="10" height="10" border="0"><xsl:attribute name="src"><xsl:value-of select="$cur_folder"/>top_right_corner.gif</xsl:attribute></img></td>
			</tr>
			<tr>
				<td><xsl:attribute name="style">width: 10px; background-image:url(<xsl:value-of select="$cur_folder"/>left_line.gif); background-repeat: repeat-y;  background-position: left;</xsl:attribute></td>
				<td width="100%">
					<div style="background-color:#FFFFFF;">
						<table width="100%" border="0" cellpadding="4" cellspacing="0" style="background-color: #FFFFFF;">
							<tr>
								<td width="100%"><xsl:attribute name="style">width:100%; padding:6px; text-align:center; font-family:Arial, Helvetica, sans-serif; font-size:11px; color:<xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/textcolor" />;</xsl:attribute><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_creditcontainer</xsl:attribute>
								<xsl:if test="q_scored='yes'"><xsl:value-of select="q_credit_msg"/></xsl:if>
								<xsl:if test="q_scored='no'"><xsl:value-of select="q_nocredit_msg"/></xsl:if>
								</td>
							</tr>
							<tr>
								<td width="100%"><xsl:attribute name="style">padding:4px; border: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bordercolor" /> solid 2px; background-color: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bgcolor" /></xsl:attribute><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_text</xsl:attribute><xsl:value-of select="q_question" disable-output-escaping="yes"/></td>
							</tr>
							<tr>
								<td width="100%"><xsl:attribute name="style">padding:6px; text-align:center; font-family:Arial, Helvetica, sans-serif; font-size:11px; color:<xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/textcolor" />;</xsl:attribute><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_objective</xsl:attribute><xsl:value-of select="q_goal" /></td>
							</tr>
						</table>
						<table width="100%" border="0" cellpadding="0" cellspacing="0" style="background-color: #FFFFFF;">
							<tr>
								<td>
								<xsl:for-each select="q_variants/item">
									<table width="100%" border="0" cellpadding="0" cellspacing="0">
										<xsl:attribute name="style">margin-top: 2px; border: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bordercolor" /> solid 2px; background-color: #FFFFFF;</xsl:attribute>
										<tr>
											<td valign="top" style="padding: 6px"><img border="0">
												<xsl:if test="q_right/text()!='yes'">
													<xsl:attribute name="src">
														<xsl:if test="../../q_customspot='yes'"><xsl:value-of select="$img_folder"/><xsl:value-of select="translate(../../q_spot_0,'/','\')"/></xsl:if>
														<xsl:if test="../../q_customspot!='yes'"><xsl:value-of select="$cur_folder"/>select_spot_1_0.gif</xsl:if>
													</xsl:attribute>
												</xsl:if>
												<xsl:if test="q_right/text()='yes'">
													<xsl:attribute name="src">
														<xsl:if test="../../q_customspot='yes'"><xsl:value-of select="$img_folder"/><xsl:value-of select="translate(../../q_spot_1,'/','\')"/></xsl:if>
														<xsl:if test="../../q_customspot!='yes'"><xsl:value-of select="$cur_folder"/>select_spot_1_2.gif</xsl:if>
													</xsl:attribute>
												</xsl:if>
											</img></td>
											<td width="100%" style="padding: 6px"><xsl:value-of select="q_variant/text()" disable-output-escaping="yes"/></td>
										</tr>
									</table>
								</xsl:for-each>
								</td>
							</tr>
						</table>
						<table width="100%" cellpadding="0" cellspacing="0" border="0">
							<xsl:attribute name="style">margin-top: 2px; border: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bordercolor" /> solid 2px; background-color: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bgcolor" /></xsl:attribute>
							<tr>
								<td style="width:50%; text-align:left; padding: 4px; height: 33px;"><span style="display:inline;"><img border="0">
									<xsl:attribute name="src">
										<xsl:if test="q_custombutton='yes'"><xsl:value-of select="$img_folder"/><xsl:value-of select="translate(q_abtn_0,'/','\')"/></xsl:if>
										<xsl:if test="q_custombutton!='yes'"><xsl:value-of select="$cur_folder"/>button_check_0.gif</xsl:if>
									</xsl:attribute>
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
													<xsl:if test="q_att_auto='no'">
														<xsl:value-of select="q_attempts" />
													</xsl:if>
													<xsl:if test="q_att_auto='yes'">
														<xsl:value-of select="count(q_variants/item)-1" />
													</xsl:if>
												</td>
											</tr>
										</table>
									</div>
								</td>
								<td align="right" width="50%" style="width:50%; text-align:right; padding: 4px; height: 33px;"><xsl:if test="q_skip='yes'"><span style="display:inline;"><img border="0">
									<xsl:attribute name="src">
										<xsl:if test="q_custombutton='yes'"><xsl:value-of select="$img_folder"/><xsl:value-of select="translate(q_sbtn_0,'/','\')"/></xsl:if>
										<xsl:if test="q_custombutton!='yes'"><xsl:value-of select="$cur_folder"/>button_skip_0.gif</xsl:if>
									</xsl:attribute>
								</img></span></xsl:if></td>
							</tr>
						</table>
						<xsl:if test="q_timer_switch='yes'">
							<table width="100%" cellspacing="0" cellpadding="2" border="0">
								<xsl:attribute name="style">margin-top: 2px; border: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bordercolor" /> solid 2px; background-color: <xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/bgcolor" /></xsl:attribute>
								<tr>
									<td nowrap="nowrap">
										<xsl:attribute name="style">width:50%; margin: 2px; padding:4px; text-align:right; font-family:Arial, Helvetica, sans-serif; font-size:11px; color:<xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/textcolor" />;</xsl:attribute>
										<xsl:value-of select="q_timer_msg"/>
									</td>
									<td width="200" style="width: 200px; text-align:center; vertical-align: middle;">
										<div style="background-color:#00CC66; border: #666666 solid 1px; text-align:left; height: 10px; width: 200px">
											<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_timer_bg</xsl:attribute>
											<div style="background-color:#999999; height: 10px; width: 50px;">
												<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_timer_progress</xsl:attribute>
												<spacer width="1" height="1"/>
											</div>
										</div>
									</td>
									<td nowrap="nowrap">
										<xsl:attribute name="style">width:50%; margin: 2px; padding:4px; text-align:left; font-family:Arial, Helvetica, sans-serif; font-size:11px; color:<xsl:value-of select="msxsl:node-set($profiles)/*[name(.)=$cur_profile]/textcolor" />;</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_timer_value</xsl:attribute>
										<xsl:value-of select="q_timer"/> sec
									</td>
								</tr>
							</table>
						</xsl:if>
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
	<xsl:when test="q_realskin='blank'">
		<div style="background-color:#FFFFFF;">
			<table width="100%" border="0" cellpadding="4" cellspacing="0" style="background-color: #FFFFFF;">
				<tr>
					<td width="100%"><xsl:attribute name="style">width:100%; padding:6px; text-align:center; font-family:Arial, Helvetica, sans-serif; font-size:11px; </xsl:attribute><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_creditcontainer</xsl:attribute>
					<xsl:if test="q_scored='yes'"><xsl:value-of select="q_credit_msg"/></xsl:if>
					<xsl:if test="q_scored='no'"><xsl:value-of select="q_nocredit_msg"/></xsl:if>
					</td>
				</tr>
				<tr>
					<td width="100%"><xsl:attribute name="style">padding:4px; border: #C8C8C8 solid 2px;</xsl:attribute><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_text</xsl:attribute><xsl:value-of select="q_question" disable-output-escaping="yes"/></td>
				</tr>
				<tr>
					<td width="100%"><xsl:attribute name="style">padding:6px; text-align:center; font-family:Arial, Helvetica, sans-serif; font-size:11px;</xsl:attribute><xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_objective</xsl:attribute><xsl:value-of select="q_goal" /></td>
				</tr>
			</table>
			<table width="100%" border="0" cellpadding="0" cellspacing="0" style="background-color: #FFFFFF;">
				<tr>
					<td>
					<xsl:for-each select="q_variants/item">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<xsl:attribute name="style"> background-color: #FFFFFF;</xsl:attribute>
							<tr>
								<td valign="top" style="padding: 6px"><img border="0">
									<xsl:if test="q_right/text()!='yes'">
										<xsl:attribute name="src">
											<xsl:if test="../../q_customspot='yes'"><xsl:value-of select="$img_folder"/><xsl:value-of select="translate(../../q_spot_0,'/','\')"/></xsl:if>
											<xsl:if test="../../q_customspot!='yes'"><xsl:value-of select="$cur_folder"/>select_spot_1_0.gif</xsl:if>
										</xsl:attribute>
									</xsl:if>
									<xsl:if test="q_right/text()='yes'">
										<xsl:attribute name="src">
											<xsl:if test="../../q_customspot='yes'"><xsl:value-of select="$img_folder"/><xsl:value-of select="translate(../../q_spot_1,'/','\')"/></xsl:if>
											<xsl:if test="../../q_customspot!='yes'"><xsl:value-of select="$cur_folder"/>select_spot_1_2.gif</xsl:if>
										</xsl:attribute>
									</xsl:if>
								</img></td>
								<td width="100%" style="padding: 6px"><xsl:value-of select="q_variant/text()" disable-output-escaping="yes"/></td>
							</tr>
						</table>
					</xsl:for-each>
					</td>
				</tr>
			</table>
			<table width="100%" cellpadding="0" cellspacing="0" border="0">
				<xsl:attribute name="style">margin-top: 2px; border-top: #C8C8C8 solid 2px;</xsl:attribute>
				<tr>
					<td style="width:50%; text-align:left; padding: 4px; height: 33px;"><span style="display:inline;"><img border="0">
						<xsl:attribute name="src">
							<xsl:if test="q_custombutton='yes'"><xsl:value-of select="$img_folder"/><xsl:value-of select="translate(q_abtn_0,'/','\')"/></xsl:if>
							<xsl:if test="q_custombutton!='yes'"><xsl:value-of select="$cur_folder"/>button_check_0.gif</xsl:if>
						</xsl:attribute>
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
										<xsl:if test="q_att_auto='no'">
											<xsl:value-of select="q_attempts" />
										</xsl:if>
										<xsl:if test="q_att_auto='yes'">
											<xsl:value-of select="count(q_variants/item)-1" />
										</xsl:if>
									</td>
								</tr>
							</table>
						</div>
					</td>
					<td align="right" width="50%" style="width:50%; text-align:right; padding: 4px; height: 33px;"><xsl:if test="q_skip='yes'"><span style="display:inline;"><img border="0">
						<xsl:attribute name="src">
							<xsl:if test="q_custombutton='yes'"><xsl:value-of select="$img_folder"/><xsl:value-of select="translate(q_sbtn_0,'/','\')"/></xsl:if>
							<xsl:if test="q_custombutton!='yes'"><xsl:value-of select="$cur_folder"/>button_skip_0.gif</xsl:if>
						</xsl:attribute>
					</img></span></xsl:if></td>
				</tr>
			</table>
			<xsl:if test="q_timer_switch='yes'">
				<table width="100%" cellspacing="0" cellpadding="2" border="0">
					<tr>
						<td nowrap="nowrap">
							<xsl:attribute name="style">width:50%; margin: 2px; padding:4px; text-align:right; font-family:Arial, Helvetica, sans-serif; font-size:11px;</xsl:attribute>
							<xsl:value-of select="q_timer_msg"/>
						</td>
						<td width="200" style="width: 200px; text-align:center; vertical-align: middle;">
							<div style="background-color:#00CC66; border: #666666 solid 1px; text-align:left; height: 10px; width: 200px">
								<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_timer_bg</xsl:attribute>
								<div style="background-color:#999999; height: 10px; width: 50px;">
									<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_timer_progress</xsl:attribute>
									<spacer width="1" height="1"/>
								</div>
							</div>
						</td>
						<td nowrap="nowrap">
							<xsl:attribute name="style">width:50%; margin: 2px; padding:4px; text-align:left; font-family:Arial, Helvetica, sans-serif; font-size:11px;</xsl:attribute>
							<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_q_timer_value</xsl:attribute>
							<xsl:value-of select="q_timer"/> sec
						</td>
					</tr>
				</table>
			</xsl:if>
		</div>
	</xsl:when>
</xsl:choose>

<xsl:if test="q_fb_switch='yes'">
	<xsl:if test="q_feedbackright_preview='yes'">
		<div>
			<xsl:attribute name="style">display:inline; position:absolute; top:<xsl:value-of select="q_feedbacktop"/>px; left:<xsl:value-of select="q_feedbackleft"/>px; width:250px; background-color:#E0FFE0; border: #339933 solid 2px;</xsl:attribute>
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td width="100%"><spacer height="1" width="50"/></td>
					<td align="center">
						<xsl:attribute name="style">padding-left: 4px; padding-right: 3px; padding-top:1px; padding-bottom: 2px; background-color: #339933; color: white; font-family: Tahoma, sans-serif; font-size: 10px; font-weight: bold</xsl:attribute>
						X
					</td>
				</tr>
				<tr>
					<td  colspan="2" style="padding-top: 0px; padding-left: 6px; padding-right: 6px; padding-bottom:16px;">
						<div style="width:100%; text-align:center;"><xsl:value-of select="q_feedbackright" disable-output-escaping="yes" /></div>
					</td>
				</tr>
			</table>
		</div>
	</xsl:if>
	<xsl:if test="q_feedbackwrong_preview='yes'">
		<div>
			<xsl:attribute name="style">display:inline; position:absolute; top:<xsl:value-of select="q_feedbacktop"/>px; left:<xsl:value-of select="q_feedbackleft"/>px; width:250px; background-color:#FFE0E0; border: #FF6666 solid 2px;</xsl:attribute>
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td width="100%"><spacer height="1" width="50"/></td>
					<td align="center">
						<xsl:attribute name="style">padding-left: 4px; padding-right: 3px; padding-top:1px; padding-bottom: 2px; background-color: #FF6666; color: white; font-family: Tahoma, sans-serif; font-size: 10px; font-weight: bold</xsl:attribute>
						X
					</td>
				</tr>
				<tr>
					<td  colspan="2" style="padding-top: 0px; padding-left: 6px; padding-right: 6px; padding-bottom:16px;">
						<div style="width:100%; text-align:center;"><xsl:value-of select="q_feedbackwrong" disable-output-escaping="yes"/></div>
					</td>
				</tr>
			</table>
		</div>
	</xsl:if>
	<xsl:if test="q_feedbackexhausted_preview='yes'">
		<div>
			<xsl:attribute name="style">display:inline; position:absolute; top:<xsl:value-of select="q_feedbacktop"/>px; left:<xsl:value-of select="q_feedbackleft"/>px; width:250px; background-color:#FFE0E0; border: #FF6666 solid 2px;</xsl:attribute>
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td width="100%"><spacer height="1" width="50"/></td>
					<td align="center">
						<xsl:attribute name="style">padding-left: 4px; padding-right: 3px; padding-top:1px; padding-bottom: 2px; background-color: #FF6666; color: white; font-family: Tahoma, sans-serif; font-size: 10px; font-weight: bold</xsl:attribute>
						X
					</td>
				</tr>
				<tr>
					<td  colspan="2" style="padding-top: 0px; padding-left: 6px; padding-right: 6px; padding-bottom:16px;">
						<div style="width:100%; text-align:center;"><xsl:value-of select="q_feedbackexhausted" disable-output-escaping="yes"/></div>
					</td>
				</tr>
			</table>
		</div>
	</xsl:if>
	<xsl:if test="q_feedbacktimeout_preview='yes'">
		<div>
			<xsl:attribute name="style">display:inline; position:absolute; top:<xsl:value-of select="q_feedbacktop"/>px; left:<xsl:value-of select="q_feedbackleft"/>px; width:250px; background-color:#FFE0E0; border: #FF6666 solid 2px;</xsl:attribute>
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td width="100%"><spacer height="1" width="50"/></td>
					<td align="center">
						<xsl:attribute name="style">padding-left: 4px; padding-right: 3px; padding-top:1px; padding-bottom: 2px; background-color: #FF6666; color: white; font-family: Tahoma, sans-serif; font-size: 10px; font-weight: bold</xsl:attribute>
						X
					</td>
				</tr>
				<tr>
					<td  colspan="2" style="padding-top: 0px; padding-left: 6px; padding-right: 6px; padding-bottom:16px;">
						<div style="width:100%; text-align:center;"><xsl:value-of select="q_feedbacktimeout" disable-output-escaping="yes"/></div>
					</td>
				</tr>
			</table>
		</div>
	</xsl:if>
</xsl:if>
</xsl:template>

</xsl:stylesheet>
