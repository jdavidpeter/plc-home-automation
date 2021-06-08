<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dc="http://purl.org/dc/elements/1.1/" version="1.0">
<xsl:output doctype-public="-//W3C//DTD HTML 4.01 STRICT//EN" encoding="UTF-8" />
<xsl:template match="/PAGE">
<html>
<head>
<meta name="viewport" content="width=device-width" />
<meta name="generator" content="WebMaker" />
<meta name="author" content="" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache, must-revalidate" />
<meta http-equiv="expires" content="0" />
<link rel="shortcut icon" href="FAVICON.ICO" type="image/x-icon" />
<link href="STYLE.CSS" rel="stylesheet" type="text/css" />
<title>
<xsl:value-of select="/PAGE/@TITLE" />
Világítás</title>
<script src="LIGHTS.JS?U=1623080484" language="JavaScript" charset="utf-8" />
<style type="text/css">.mono {font-family: Verdana, Arial, FreeSans, sans-serif;}</style>
</head>
<body onload="GetXML('LIGHTS.XML'); FunWatchDog();">
<xsl:if test="1623080484 != ACCESS/@UCID">
<xsl:attribute name="onload">
null;
</xsl:attribute>
<div id="cachewarning" style="text-align: left;"></div>
<script src="REFCLR.JS" language="JavaScript" charset="utf-8"></script>
</xsl:if>
<xsl:if test="1623080484 = ACCESS/@UCID">
<table cellpadding="0" cellspacing="0">
<tr style="height: 40px;">
<!--logo-->
<td id="top_left">
<div id="top_left_div" style="width: 150px;"></div>
&#160;</td>
<!--title-->
<td id="top">
<span id="title">
<xsl:value-of select="/PAGE/@TITLE" />
Világítás</span>
</td>
</tr>
<tr>
<!--menu-->
<td id="menu">
<span id="group">Home control</span>
<br />
<div class="pages">
<a href="LIGHTS.XML">Világítás</a>
<br />
<a href="HEATING.XML">Fűtés</a>
<br />
<a href="TUNING.XML">Finomhangolás</a>
<br />
</div>
<br />
<div class="pages">
<a href="logout.xml">Logout</a>
</div>
</td>
<!--plan-->
<td id="page">
<div style="background-color:#FFFFFF;position: relative; width: 800px; height: 610px;">
<form action="javascript:PostGlobal();">
<input class="mono" tabindex="2" type="text" id="INPUT60" style="position: absolute; top: 225px; left: 74px; width: 49px; z-index: 62; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[26]/@VALUE}" name="{INPUT[26]/@NAME}" onfocus="SetInputEdited(60, event);" onblur="InputFocused[59]=0" onkeydown="SetInputEdited(60, event);"></input>
<input class="mono" tabindex="4" type="text" id="INPUT63" style="position: absolute; top: 490px; left: 87px; width: 34px; z-index: 65; font-size: 8px; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[29]/@VALUE}" name="{INPUT[29]/@NAME}" onfocus="SetInputEdited(63, event);" onblur="InputFocused[62]=0" onkeydown="SetInputEdited(63, event);"></input>
<input class="mono" tabindex="6" type="text" id="INPUT66" style="position: absolute; top: 344px; left: 242px; width: 49px; z-index: 68; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[32]/@VALUE}" name="{INPUT[32]/@NAME}" onfocus="SetInputEdited(66, event);" onblur="InputFocused[65]=0" onkeydown="SetInputEdited(66, event);"></input>
<input class="mono" tabindex="9" type="text" id="INPUT70" style="position: absolute; top: 138px; left: 242px; width: 49px; z-index: 72; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[35]/@VALUE}" name="{INPUT[35]/@NAME}" onfocus="SetInputEdited(70, event);" onblur="InputFocused[69]=0" onkeydown="SetInputEdited(70, event);"></input>
<input class="mono" tabindex="11" type="text" id="INPUT73" style="position: absolute; top: 470px; left: 147px; width: 34px; z-index: 75; font-size: 8px; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[38]/@VALUE}" name="{INPUT[38]/@NAME}" onfocus="SetInputEdited(73, event);" onblur="InputFocused[72]=0" onkeydown="SetInputEdited(73, event);"></input>
<input class="mono" tabindex="13" type="text" id="INPUT77" style="position: absolute; top: 390px; left: 632px; width: 34px; z-index: 79; font-size: 8px; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[41]/@VALUE}" name="{INPUT[41]/@NAME}" onfocus="SetInputEdited(77, event);" onblur="InputFocused[76]=0" onkeydown="SetInputEdited(77, event);"></input>
<input class="mono" tabindex="15" type="text" id="INPUT80" style="position: absolute; top: 305px; left: 402px; width: 49px; z-index: 82; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[44]/@VALUE}" name="{INPUT[44]/@NAME}" onfocus="SetInputEdited(80, event);" onblur="InputFocused[79]=0" onkeydown="SetInputEdited(80, event);"></input>
<input class="mono" tabindex="17" type="text" id="INPUT83" style="position: absolute; top: 115px; left: 417px; width: 49px; z-index: 85; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[47]/@VALUE}" name="{INPUT[47]/@NAME}" onfocus="SetInputEdited(83, event);" onblur="InputFocused[82]=0" onkeydown="SetInputEdited(83, event);"></input>
<input class="mono" tabindex="19" type="text" id="INPUT86" style="position: absolute; top: 124px; left: 604px; width: 49px; z-index: 88; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[50]/@VALUE}" name="{INPUT[50]/@NAME}" onfocus="SetInputEdited(86, event);" onblur="InputFocused[85]=0" onkeydown="SetInputEdited(86, event);"></input>
<input title="External temperature" class="mono" tabindex="7" type="text" id="INPUT110" style="position: absolute; top: 564px; left: 137px; width: 49px; z-index: 112; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[71]/@VALUE}" name="{INPUT[71]/@NAME}" onfocus="SetInputEdited(110, event);" onblur="InputFocused[109]=0" onkeydown="SetInputEdited(110, event);"></input>
</form>
<div style="position: absolute; top: 15px; left: 10px; z-index: 1; background-image: url(IMAGES/BR_44__4.PNG); line-height: 513px; height: 513px; width: 334px;"></div>
<div style="position: absolute; top: 15px; left: 370px; z-index: 2; background-image: url(IMAGES/BR_44__3.PNG); line-height: 519px; height: 519px; width: 340px;"></div>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 150px; left: 100px; z-index: 3;">
<div onclick="PostXML1()" id="INPUT1" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 150px; left: 100px; z-index: 3;">
<div onclick="PostXML1()" id="INPUT1" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 150px; left: 100px; z-index: 4;">
<div onclick="PostXML2()" id="INPUT2" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 150px; left: 100px; z-index: 4;">
<div onclick="PostXML2()" id="INPUT2" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE = 0">
<div style="position: absolute; top: 210px; left: 455px; z-index: 5;">
<div onclick="PostXML3()" id="INPUT3" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div style="position: absolute; top: 210px; left: 455px; z-index: 5;">
<div onclick="PostXML3()" id="INPUT3" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div style="position: absolute; top: 210px; left: 455px; z-index: 6;">
<div onclick="PostXML4()" id="INPUT4" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE = 0">
<div style="position: absolute; top: 210px; left: 455px; z-index: 6;">
<div onclick="PostXML4()" id="INPUT4" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 403px; left: 71px; z-index: 7;">
<div onclick="PostXML5()" id="INPUT5" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 403px; left: 71px; z-index: 7;">
<div onclick="PostXML5()" id="INPUT5" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 403px; left: 71px; z-index: 8;">
<div onclick="PostXML6()" id="INPUT6" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 403px; left: 71px; z-index: 8;">
<div onclick="PostXML6()" id="INPUT6" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 215px; left: 635px; z-index: 9;">
<div onclick="PostXML7()" id="INPUT7" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 215px; left: 635px; z-index: 9;">
<div onclick="PostXML7()" id="INPUT7" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 215px; left: 635px; z-index: 10;">
<div onclick="PostXML8()" id="INPUT8" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 215px; left: 635px; z-index: 10;">
<div onclick="PostXML8()" id="INPUT8" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE = 0">
<div style="position: absolute; top: 35px; left: 70px; z-index: 11;">
<div onclick="PostXML9()" id="INPUT9" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<div style="position: absolute; top: 35px; left: 70px; z-index: 11;">
<div onclick="PostXML9()" id="INPUT9" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<div style="position: absolute; top: 35px; left: 70px; z-index: 12;">
<div onclick="PostXML10()" id="INPUT10" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE = 0">
<div style="position: absolute; top: 35px; left: 70px; z-index: 12;">
<div onclick="PostXML10()" id="INPUT10" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE = 0">
<div style="position: absolute; top: 485px; left: 215px; z-index: 13;">
<div onclick="PostXML11()" id="INPUT11" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div style="position: absolute; top: 485px; left: 215px; z-index: 13;">
<div onclick="PostXML11()" id="INPUT11" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div style="position: absolute; top: 485px; left: 215px; z-index: 14;">
<div onclick="PostXML12()" id="INPUT12" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE = 0">
<div style="position: absolute; top: 485px; left: 215px; z-index: 14;">
<div onclick="PostXML12()" id="INPUT12" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE = 0">
<div style="position: absolute; top: 335px; left: 535px; z-index: 15;">
<div onclick="PostXML13()" id="INPUT13" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div style="position: absolute; top: 335px; left: 535px; z-index: 15;">
<div onclick="PostXML13()" id="INPUT13" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div style="position: absolute; top: 335px; left: 535px; z-index: 16;">
<div onclick="PostXML14()" id="INPUT14" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE = 0">
<div style="position: absolute; top: 335px; left: 535px; z-index: 16;">
<div onclick="PostXML14()" id="INPUT14" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE = 0">
<div style="position: absolute; top: 144px; left: 454px; z-index: 17;">
<div onclick="PostXML15()" id="INPUT15" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<div style="position: absolute; top: 144px; left: 454px; z-index: 17;">
<div onclick="PostXML15()" id="INPUT15" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<div style="position: absolute; top: 144px; left: 454px; z-index: 18;">
<div onclick="PostXML16()" id="INPUT16" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE = 0">
<div style="position: absolute; top: 144px; left: 454px; z-index: 18;">
<div onclick="PostXML16()" id="INPUT16" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE = 0">
<div style="position: absolute; top: 331px; left: 174px; z-index: 19;">
<div onclick="PostXML17()" id="INPUT17" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div style="position: absolute; top: 331px; left: 174px; z-index: 19;">
<div onclick="PostXML17()" id="INPUT17" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div style="position: absolute; top: 331px; left: 174px; z-index: 20;">
<div onclick="PostXML18()" id="INPUT18" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE = 0">
<div style="position: absolute; top: 331px; left: 174px; z-index: 20;">
<div onclick="PostXML18()" id="INPUT18" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 460px; left: 40px; z-index: 21;">
<div onclick="PostXML19()" id="INPUT19" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 460px; left: 40px; z-index: 21;">
<div onclick="PostXML19()" id="INPUT19" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 460px; left: 40px; z-index: 22;">
<div onclick="PostXML20()" id="INPUT20" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 460px; left: 40px; z-index: 22;">
<div onclick="PostXML20()" id="INPUT20" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE = 0">
<div style="position: absolute; top: 108px; left: 255px; z-index: 23;">
<div onclick="PostXML21()" id="INPUT21" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div style="position: absolute; top: 108px; left: 255px; z-index: 23;">
<div onclick="PostXML21()" id="INPUT21" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div style="position: absolute; top: 107px; left: 255px; z-index: 24;">
<div onclick="PostXML22()" id="INPUT22" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE = 0">
<div style="position: absolute; top: 107px; left: 255px; z-index: 24;">
<div onclick="PostXML22()" id="INPUT22" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<div style="position: absolute; top: 305px; left: 260px; z-index: 25;">
<div onclick="PostXML23()" id="INPUT23" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div style="position: absolute; top: 305px; left: 260px; z-index: 25;">
<div onclick="PostXML23()" id="INPUT23" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div style="position: absolute; top: 305px; left: 260px; z-index: 26;">
<div onclick="PostXML24()" id="INPUT24" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<div style="position: absolute; top: 305px; left: 260px; z-index: 26;">
<div onclick="PostXML24()" id="INPUT24" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE = 0">
<div style="position: absolute; top: 443px; left: 157px; z-index: 27;">
<div onclick="PostXML25()" id="INPUT25" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div style="position: absolute; top: 443px; left: 157px; z-index: 27;">
<div onclick="PostXML25()" id="INPUT25" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div style="position: absolute; top: 443px; left: 157px; z-index: 28;">
<div onclick="PostXML26()" id="INPUT26" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE = 0">
<div style="position: absolute; top: 443px; left: 157px; z-index: 28;">
<div onclick="PostXML26()" id="INPUT26" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div style="position: absolute; top: 460px; left: 90px; z-index: 29;">
<div onclick="PostXML27()" id="INPUT27" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div style="position: absolute; top: 460px; left: 90px; z-index: 29;">
<div onclick="PostXML27()" id="INPUT27" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div style="position: absolute; top: 460px; left: 90px; z-index: 30;">
<div onclick="PostXML28()" id="INPUT28" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div style="position: absolute; top: 460px; left: 90px; z-index: 30;">
<div onclick="PostXML28()" id="INPUT28" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[15]/@VALUE = 0">
<div style="position: absolute; top: 290px; left: 80px; z-index: 31;">
<div onclick="PostXML29()" id="INPUT29" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[15]/@VALUE != 0">
<div style="position: absolute; top: 290px; left: 80px; z-index: 31;">
<div onclick="PostXML29()" id="INPUT29" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[15]/@VALUE != 0">
<div style="position: absolute; top: 290px; left: 80px; z-index: 32;">
<div onclick="PostXML30()" id="INPUT30" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[15]/@VALUE = 0">
<div style="position: absolute; top: 290px; left: 80px; z-index: 32;">
<div onclick="PostXML30()" id="INPUT30" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE = 0">
<div style="position: absolute; top: 35px; left: 140px; z-index: 33;">
<div onclick="PostXML31()" id="INPUT31" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<div style="position: absolute; top: 35px; left: 140px; z-index: 33;">
<div onclick="PostXML31()" id="INPUT31" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<div style="position: absolute; top: 35px; left: 140px; z-index: 34;">
<div onclick="PostXML32()" id="INPUT32" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE = 0">
<div style="position: absolute; top: 35px; left: 140px; z-index: 34;">
<div onclick="PostXML32()" id="INPUT32" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE = 0">
<div style="position: absolute; top: 230px; left: 535px; z-index: 35;">
<div onclick="PostXML33()" id="INPUT33" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div style="position: absolute; top: 230px; left: 535px; z-index: 35;">
<div onclick="PostXML33()" id="INPUT33" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div style="position: absolute; top: 230px; left: 535px; z-index: 36;">
<div onclick="PostXML34()" id="INPUT34" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE = 0">
<div style="position: absolute; top: 230px; left: 535px; z-index: 36;">
<div onclick="PostXML34()" id="INPUT34" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[16]/@VALUE = 0">
<div style="position: absolute; top: 294px; left: 639px; z-index: 37;">
<div onclick="PostXML35()" id="INPUT35" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[16]/@VALUE != 0">
<div style="position: absolute; top: 294px; left: 639px; z-index: 37;">
<div onclick="PostXML35()" id="INPUT35" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[16]/@VALUE != 0">
<div style="position: absolute; top: 294px; left: 639px; z-index: 38;">
<div onclick="PostXML36()" id="INPUT36" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[16]/@VALUE = 0">
<div style="position: absolute; top: 294px; left: 639px; z-index: 38;">
<div onclick="PostXML36()" id="INPUT36" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE = 0">
<div style="position: absolute; top: 359px; left: 639px; z-index: 39;">
<div onclick="PostXML37()" id="INPUT37" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<div style="position: absolute; top: 359px; left: 639px; z-index: 39;">
<div onclick="PostXML37()" id="INPUT37" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<div style="position: absolute; top: 359px; left: 639px; z-index: 40;">
<div onclick="PostXML38()" id="INPUT38" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE = 0">
<div style="position: absolute; top: 359px; left: 639px; z-index: 40;">
<div onclick="PostXML38()" id="INPUT38" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[18]/@VALUE = 0">
<div style="position: absolute; top: 419px; left: 589px; z-index: 41;">
<div onclick="PostXML39()" id="INPUT39" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[18]/@VALUE != 0">
<div style="position: absolute; top: 419px; left: 589px; z-index: 41;">
<div onclick="PostXML39()" id="INPUT39" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[18]/@VALUE != 0">
<div style="position: absolute; top: 419px; left: 589px; z-index: 42;">
<div onclick="PostXML40()" id="INPUT40" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[18]/@VALUE = 0">
<div style="position: absolute; top: 419px; left: 589px; z-index: 42;">
<div onclick="PostXML40()" id="INPUT40" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<div style="position: absolute; top: 419px; left: 544px; z-index: 43;">
<div onclick="PostXML41()" id="INPUT41" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<div style="position: absolute; top: 419px; left: 544px; z-index: 43;">
<div onclick="PostXML41()" id="INPUT41" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<div style="position: absolute; top: 419px; left: 544px; z-index: 44;">
<div onclick="PostXML42()" id="INPUT42" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<div style="position: absolute; top: 419px; left: 544px; z-index: 44;">
<div onclick="PostXML42()" id="INPUT42" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[20]/@VALUE = 0">
<div style="position: absolute; top: 359px; left: 439px; z-index: 45;">
<div onclick="PostXML43()" id="INPUT43" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[20]/@VALUE != 0">
<div style="position: absolute; top: 359px; left: 439px; z-index: 45;">
<div onclick="PostXML43()" id="INPUT43" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[20]/@VALUE != 0">
<div style="position: absolute; top: 359px; left: 439px; z-index: 46;">
<div onclick="PostXML44()" id="INPUT44" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[20]/@VALUE = 0">
<div style="position: absolute; top: 359px; left: 439px; z-index: 46;">
<div onclick="PostXML44()" id="INPUT44" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[21]/@VALUE = 0">
<div style="position: absolute; top: 97px; left: 614px; z-index: 47;">
<div onclick="PostXML45()" id="INPUT45" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[21]/@VALUE != 0">
<div style="position: absolute; top: 97px; left: 614px; z-index: 47;">
<div onclick="PostXML45()" id="INPUT45" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[21]/@VALUE != 0">
<div style="position: absolute; top: 97px; left: 614px; z-index: 48;">
<div onclick="PostXML46()" id="INPUT46" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[21]/@VALUE = 0">
<div style="position: absolute; top: 97px; left: 614px; z-index: 48;">
<div onclick="PostXML46()" id="INPUT46" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[22]/@VALUE = 0">
<div style="position: absolute; top: 489px; left: 469px; z-index: 49;">
<div onclick="PostXML47()" id="INPUT47" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[22]/@VALUE != 0">
<div style="position: absolute; top: 489px; left: 469px; z-index: 49;">
<div onclick="PostXML47()" id="INPUT47" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[22]/@VALUE != 0">
<div style="position: absolute; top: 489px; left: 469px; z-index: 50;">
<div onclick="PostXML48()" id="INPUT48" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[22]/@VALUE = 0">
<div style="position: absolute; top: 489px; left: 469px; z-index: 50;">
<div onclick="PostXML48()" id="INPUT48" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[22]/@VALUE = 0">
<div style="position: absolute; top: 489px; left: 409px; z-index: 51;">
<div onclick="PostXML49()" id="INPUT49" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[22]/@VALUE != 0">
<div style="position: absolute; top: 489px; left: 409px; z-index: 51;">
<div onclick="PostXML49()" id="INPUT49" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[22]/@VALUE != 0">
<div style="position: absolute; top: 489px; left: 409px; z-index: 52;">
<div onclick="PostXML50()" id="INPUT50" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[22]/@VALUE = 0">
<div style="position: absolute; top: 489px; left: 409px; z-index: 52;">
<div onclick="PostXML50()" id="INPUT50" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[23]/@VALUE = 0">
<div style="position: absolute; top: 44px; left: 504px; z-index: 53;">
<div onclick="PostXML51()" id="INPUT51" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[23]/@VALUE != 0">
<div style="position: absolute; top: 44px; left: 504px; z-index: 53;">
<div onclick="PostXML51()" id="INPUT51" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[23]/@VALUE != 0">
<div style="position: absolute; top: 44px; left: 504px; z-index: 54;">
<div onclick="PostXML52()" id="INPUT52" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[23]/@VALUE = 0">
<div style="position: absolute; top: 44px; left: 504px; z-index: 54;">
<div onclick="PostXML52()" id="INPUT52" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[23]/@VALUE = 0">
<div style="position: absolute; top: 44px; left: 444px; z-index: 55;">
<div onclick="PostXML53()" id="INPUT53" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[23]/@VALUE != 0">
<div style="position: absolute; top: 44px; left: 444px; z-index: 55;">
<div onclick="PostXML53()" id="INPUT53" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[23]/@VALUE != 0">
<div style="position: absolute; top: 44px; left: 444px; z-index: 56;">
<div onclick="PostXML54()" id="INPUT54" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[23]/@VALUE = 0">
<div style="position: absolute; top: 44px; left: 444px; z-index: 56;">
<div onclick="PostXML54()" id="INPUT54" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[24]/@VALUE = 0">
<div style="position: absolute; top: 385px; left: 705px; z-index: 57;">
<div onclick="PostXML55()" id="INPUT55" class="imgsub" style="background-image: url(IMAGES/FAN1_O_1.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[24]/@VALUE != 0">
<div style="position: absolute; top: 385px; left: 705px; z-index: 57;">
<div onclick="PostXML55()" id="INPUT55" class="imgsub" style="background-image: url(IMAGES/FAN1_O_1.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[24]/@VALUE != 0">
<div style="position: absolute; top: 385px; left: 705px; z-index: 58;">
<div onclick="PostXML56()" id="INPUT56" class="imgsub" style="background-image: url(IMAGES/FAN1_O_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[24]/@VALUE = 0">
<div style="position: absolute; top: 385px; left: 705px; z-index: 58;">
<div onclick="PostXML56()" id="INPUT56" class="imgsub" style="background-image: url(IMAGES/FAN1_O_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE = 0">
<div style="position: absolute; top: 520px; left: 190px; z-index: 59;">
<div onclick="PostXML57()" id="INPUT57" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div style="position: absolute; top: 520px; left: 190px; z-index: 59;">
<div onclick="PostXML57()" id="INPUT57" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div style="position: absolute; top: 520px; left: 190px; z-index: 60;">
<div onclick="PostXML58()" id="INPUT58" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE = 0">
<div style="position: absolute; top: 520px; left: 190px; z-index: 60;">
<div onclick="PostXML58()" id="INPUT58" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<form action="javascript:PostXML59()" style="position: absolute; top: 250px; left: 74px; z-index: 61; font-size: 13px;">
<input id="INPUT59" onfocus="document.getElementById('INPUT59x').style.visibility='visible';SetInputEdited(59, event);" onblur="InputFocused[58]=0" onkeydown="SetInputEdited(59, event);" class="mono" tabindex="1" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[25]/@NAME}" value="{INPUT[25]/@VALUE}" />
<input type="submit" id="INPUT59x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<xsl:if test="INPUT[27]/@VALUE = 0">
<div style="position: absolute; top: 291px; left: 105px; z-index: 63; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT61"></div>
</xsl:if>
<xsl:if test="INPUT[27]/@VALUE != 0">
<div style="position: absolute; top: 291px; left: 105px; z-index: 63; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT61"></div>
</xsl:if>
<form action="javascript:PostXML62()" style="position: absolute; top: 490px; left: 31px; z-index: 64; font-size: 8px;">
<input id="INPUT62" onfocus="document.getElementById('INPUT62x').style.visibility='visible';SetInputEdited(62, event);" onblur="InputFocused[61]=0" onkeydown="SetInputEdited(62, event);" class="mono" tabindex="3" type="text" style="width: 29px; background-color: #FFFFFF;" name="{INPUT[28]/@NAME}" value="{INPUT[28]/@VALUE}" />
<input type="submit" id="INPUT62x" style="position: absolute; top: 0px; height: 16px; width: 16px; visibility: hidden;" value="&gt;" />
</form>
<xsl:if test="INPUT[30]/@VALUE = 0">
<div style="position: absolute; top: 463px; left: 73px; z-index: 66; background-image: url(IMAGES/HEAT1__5.PNG); line-height: 20px; height: 20px; width: 20px; visibility: hidden;" id="INPUT64"></div>
</xsl:if>
<xsl:if test="INPUT[30]/@VALUE != 0">
<div style="position: absolute; top: 463px; left: 73px; z-index: 66; background-image: url(IMAGES/HEAT1__5.PNG); line-height: 20px; height: 20px; width: 20px;" id="INPUT64"></div>
</xsl:if>
<form action="javascript:PostXML65()" style="position: absolute; top: 369px; left: 242px; z-index: 67; font-size: 13px;">
<input id="INPUT65" onfocus="document.getElementById('INPUT65x').style.visibility='visible';SetInputEdited(65, event);" onblur="InputFocused[64]=0" onkeydown="SetInputEdited(65, event);" class="mono" tabindex="5" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[31]/@NAME}" value="{INPUT[31]/@VALUE}" />
<input type="submit" id="INPUT65x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<xsl:if test="INPUT[33]/@VALUE = 0">
<div style="position: absolute; top: 307px; left: 290px; z-index: 69; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT67"></div>
</xsl:if>
<xsl:if test="INPUT[33]/@VALUE != 0">
<div style="position: absolute; top: 307px; left: 290px; z-index: 69; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT67"></div>
</xsl:if>
<xsl:if test="INPUT[27]/@VALUE = 0">
<div style="position: absolute; top: 404px; left: 96px; z-index: 70; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT68"></div>
</xsl:if>
<xsl:if test="INPUT[27]/@VALUE != 0">
<div style="position: absolute; top: 404px; left: 96px; z-index: 70; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT68"></div>
</xsl:if>
<form action="javascript:PostXML69()" style="position: absolute; top: 163px; left: 242px; z-index: 71; font-size: 13px;">
<input id="INPUT69" onfocus="document.getElementById('INPUT69x').style.visibility='visible';SetInputEdited(69, event);" onblur="InputFocused[68]=0" onkeydown="SetInputEdited(69, event);" class="mono" tabindex="8" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[34]/@NAME}" value="{INPUT[34]/@VALUE}" />
<input type="submit" id="INPUT69x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<xsl:if test="INPUT[36]/@VALUE = 0">
<div style="position: absolute; top: 108px; left: 285px; z-index: 73; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT71"></div>
</xsl:if>
<xsl:if test="INPUT[36]/@VALUE != 0">
<div style="position: absolute; top: 108px; left: 285px; z-index: 73; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT71"></div>
</xsl:if>
<form action="javascript:PostXML72()" style="position: absolute; top: 490px; left: 147px; z-index: 74; font-size: 8px;">
<input id="INPUT72" onfocus="document.getElementById('INPUT72x').style.visibility='visible';SetInputEdited(72, event);" onblur="InputFocused[71]=0" onkeydown="SetInputEdited(72, event);" class="mono" tabindex="10" type="text" style="width: 29px; background-color: #FFFFFF;" name="{INPUT[37]/@NAME}" value="{INPUT[37]/@VALUE}" />
<input type="submit" id="INPUT72x" style="position: absolute; top: 0px; height: 16px; width: 16px; visibility: hidden;" value="&gt;" />
</form>
<xsl:if test="INPUT[27]/@VALUE = 0">
<div style="position: absolute; top: 151px; left: 130px; z-index: 76; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT74"></div>
</xsl:if>
<xsl:if test="INPUT[27]/@VALUE != 0">
<div style="position: absolute; top: 151px; left: 130px; z-index: 76; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT74"></div>
</xsl:if>
<xsl:if test="INPUT[39]/@VALUE = 0">
<div style="position: absolute; top: 422px; left: 158px; z-index: 77; background-image: url(IMAGES/HEAT1__5.PNG); line-height: 20px; height: 20px; width: 20px; visibility: hidden;" id="INPUT75"></div>
</xsl:if>
<xsl:if test="INPUT[39]/@VALUE != 0">
<div style="position: absolute; top: 422px; left: 158px; z-index: 77; background-image: url(IMAGES/HEAT1__5.PNG); line-height: 20px; height: 20px; width: 20px;" id="INPUT75"></div>
</xsl:if>
<form action="javascript:PostXML76()" style="position: absolute; top: 430px; left: 632px; z-index: 78; font-size: 8px;">
<input id="INPUT76" onfocus="document.getElementById('INPUT76x').style.visibility='visible';SetInputEdited(76, event);" onblur="InputFocused[75]=0" onkeydown="SetInputEdited(76, event);" class="mono" tabindex="12" type="text" style="width: 29px; background-color: #FFFFFF;" name="{INPUT[40]/@NAME}" value="{INPUT[40]/@VALUE}" />
<input type="submit" id="INPUT76x" style="position: absolute; top: 0px; height: 16px; width: 16px; visibility: hidden;" value="&gt;" />
</form>
<xsl:if test="INPUT[42]/@VALUE = 0">
<div style="position: absolute; top: 362px; left: 665px; z-index: 80; background-image: url(IMAGES/HEAT1__5.PNG); line-height: 20px; height: 20px; width: 20px; visibility: hidden;" id="INPUT78"></div>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE != 0">
<div style="position: absolute; top: 362px; left: 665px; z-index: 80; background-image: url(IMAGES/HEAT1__5.PNG); line-height: 20px; height: 20px; width: 20px;" id="INPUT78"></div>
</xsl:if>
<form action="javascript:PostXML79()" style="position: absolute; top: 331px; left: 402px; z-index: 81; font-size: 13px;">
<input id="INPUT79" onfocus="document.getElementById('INPUT79x').style.visibility='visible';SetInputEdited(79, event);" onblur="InputFocused[78]=0" onkeydown="SetInputEdited(79, event);" class="mono" tabindex="14" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[43]/@NAME}" value="{INPUT[43]/@VALUE}" />
<input type="submit" id="INPUT79x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<xsl:if test="INPUT[45]/@VALUE = 0">
<div style="position: absolute; top: 360px; left: 465px; z-index: 83; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT81"></div>
</xsl:if>
<xsl:if test="INPUT[45]/@VALUE != 0">
<div style="position: absolute; top: 360px; left: 465px; z-index: 83; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT81"></div>
</xsl:if>
<form action="javascript:PostXML82()" style="position: absolute; top: 180px; left: 417px; z-index: 84; font-size: 13px;">
<input id="INPUT82" onfocus="document.getElementById('INPUT82x').style.visibility='visible';SetInputEdited(82, event);" onblur="InputFocused[81]=0" onkeydown="SetInputEdited(82, event);" class="mono" tabindex="16" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[46]/@NAME}" value="{INPUT[46]/@VALUE}" />
<input type="submit" id="INPUT82x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<xsl:if test="INPUT[48]/@VALUE = 0">
<div style="position: absolute; top: 146px; left: 480px; z-index: 86; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT84"></div>
</xsl:if>
<xsl:if test="INPUT[48]/@VALUE != 0">
<div style="position: absolute; top: 146px; left: 480px; z-index: 86; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT84"></div>
</xsl:if>
<form action="javascript:PostXML85()" style="position: absolute; top: 149px; left: 604px; z-index: 87; font-size: 13px;">
<input id="INPUT85" onfocus="document.getElementById('INPUT85x').style.visibility='visible';SetInputEdited(85, event);" onblur="InputFocused[84]=0" onkeydown="SetInputEdited(85, event);" class="mono" tabindex="18" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[49]/@NAME}" value="{INPUT[49]/@VALUE}" />
<input type="submit" id="INPUT85x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<xsl:if test="INPUT[51]/@VALUE = 0">
<div style="position: absolute; top: 98px; left: 590px; z-index: 89; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT87"></div>
</xsl:if>
<xsl:if test="INPUT[51]/@VALUE != 0">
<div style="position: absolute; top: 98px; left: 590px; z-index: 89; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT87"></div>
</xsl:if>
<xsl:if test="INPUT[52]/@VALUE != 0">
<div style="position: absolute; top: 525px; left: 150px; z-index: 90; background-image: url(IMAGES/DOOR1__2.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT88"></div>
</xsl:if>
<xsl:if test="INPUT[52]/@VALUE = 0">
<div style="position: absolute; top: 525px; left: 150px; z-index: 90; background-image: url(IMAGES/DOOR1__2.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT88"></div>
</xsl:if>
<xsl:if test="INPUT[52]/@VALUE = 0">
<div style="position: absolute; top: 525px; left: 150px; z-index: 91; background-image: url(IMAGES/DOOR1__1.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT89"></div>
</xsl:if>
<xsl:if test="INPUT[52]/@VALUE != 0">
<div style="position: absolute; top: 525px; left: 150px; z-index: 91; background-image: url(IMAGES/DOOR1__1.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT89"></div>
</xsl:if>
<xsl:if test="INPUT[53]/@VALUE != 0">
<div style="position: absolute; top: 470px; left: 265px; z-index: 92;">
<div onclick="PostXML90()" id="INPUT90" class="imgsub" style="background-image: url(IMAGES/DOOR1__2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[53]/@VALUE = 0">
<div style="position: absolute; top: 470px; left: 265px; z-index: 92;">
<div onclick="PostXML90()" id="INPUT90" class="imgsub" style="background-image: url(IMAGES/DOOR1__2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[53]/@VALUE = 0">
<div style="position: absolute; top: 470px; left: 265px; z-index: 93;">
<div onclick="PostXML91()" id="INPUT91" class="imgsub" style="background-image: url(IMAGES/DOOR1__1.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[53]/@VALUE != 0">
<div style="position: absolute; top: 470px; left: 265px; z-index: 93;">
<div onclick="PostXML91()" id="INPUT91" class="imgsub" style="background-image: url(IMAGES/DOOR1__1.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[54]/@VALUE != 0">
<div style="position: absolute; top: 528px; left: 106px; z-index: 94;">
<div onclick="PostXML92()" id="INPUT92" class="imgsub" style="background-image: url(IMAGES/LED_RE_1.PNG); height: 15px; width: 30px; line-height: 15px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[54]/@VALUE = 0">
<div style="position: absolute; top: 528px; left: 106px; z-index: 94;">
<div onclick="PostXML92()" id="INPUT92" class="imgsub" style="background-image: url(IMAGES/LED_RE_1.PNG); height: 15px; width: 30px; line-height: 15px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[54]/@VALUE = 0">
<div title="Kerintgeto pump bekapcsolva" style="position: absolute; top: 528px; left: 106px; z-index: 95; background-image: url(IMAGES/LED_RE_2.PNG); line-height: 15px; height: 15px; width: 30px; visibility: hidden;" id="INPUT93"></div>
</xsl:if>
<xsl:if test="INPUT[54]/@VALUE != 0">
<div title="Kerintgeto pump bekapcsolva" style="position: absolute; top: 528px; left: 106px; z-index: 95; background-image: url(IMAGES/LED_RE_2.PNG); line-height: 15px; height: 15px; width: 30px;" id="INPUT93"></div>
</xsl:if>
<xsl:if test="INPUT[55]/@VALUE = 0">
<div title="Alarm activated" style="position: absolute; top: 555px; left: 5px; z-index: 96; background-image: url(IMAGES/ALARM1_1.PNG); line-height: 32px; height: 32px; width: 32px; visibility: hidden;" id="INPUT94"></div>
</xsl:if>
<xsl:if test="INPUT[55]/@VALUE != 0">
<div title="Alarm activated" style="position: absolute; top: 555px; left: 5px; z-index: 96; background-image: url(IMAGES/ALARM1_1.PNG); line-height: 32px; height: 32px; width: 32px;" id="INPUT94"></div>
</xsl:if>
<xsl:if test="INPUT[56]/@VALUE != 0">
<div title="Zona aktiv" style="position: absolute; top: 452px; left: 61px; z-index: 97; background-image: url(IMAGES/PIR1_O_1.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT95"></div>
</xsl:if>
<xsl:if test="INPUT[56]/@VALUE = 0">
<div title="Zona aktiv" style="position: absolute; top: 452px; left: 61px; z-index: 97; background-image: url(IMAGES/PIR1_O_1.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT95"></div>
</xsl:if>
<xsl:if test="INPUT[57]/@VALUE != 0">
<div title="Zona aktiv" style="position: absolute; top: 223px; left: 303px; z-index: 98; background-image: url(IMAGES/PIR1_O_4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT96"></div>
</xsl:if>
<xsl:if test="INPUT[57]/@VALUE = 0">
<div title="Zona aktiv" style="position: absolute; top: 223px; left: 303px; z-index: 98; background-image: url(IMAGES/PIR1_O_4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT96"></div>
</xsl:if>
<xsl:if test="INPUT[58]/@VALUE != 0">
<div title="Zona aktiv" style="position: absolute; top: 412px; left: 136px; z-index: 99; background-image: url(IMAGES/PIR1_O_1.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT97"></div>
</xsl:if>
<xsl:if test="INPUT[58]/@VALUE = 0">
<div title="Zona aktiv" style="position: absolute; top: 412px; left: 136px; z-index: 99; background-image: url(IMAGES/PIR1_O_1.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT97"></div>
</xsl:if>
<xsl:if test="INPUT[59]/@VALUE != 0">
<div title="Zona aktiv" style="position: absolute; top: 273px; left: 28px; z-index: 100; background-image: url(IMAGES/PIR1_O_1.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT98"></div>
</xsl:if>
<xsl:if test="INPUT[59]/@VALUE = 0">
<div title="Zona aktiv" style="position: absolute; top: 273px; left: 28px; z-index: 100; background-image: url(IMAGES/PIR1_O_1.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT98"></div>
</xsl:if>
<xsl:if test="INPUT[60]/@VALUE != 0">
<div title="Zona aktiv" style="position: absolute; top: 248px; left: 48px; z-index: 101; background-image: url(IMAGES/PIR1_O_2.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT99"></div>
</xsl:if>
<xsl:if test="INPUT[60]/@VALUE = 0">
<div title="Zona aktiv" style="position: absolute; top: 248px; left: 48px; z-index: 101; background-image: url(IMAGES/PIR1_O_2.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT99"></div>
</xsl:if>
<xsl:if test="INPUT[61]/@VALUE != 0">
<div title="Zona aktiv" style="position: absolute; top: 186px; left: 303px; z-index: 102; background-image: url(IMAGES/PIR1_O_3.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT100"></div>
</xsl:if>
<xsl:if test="INPUT[61]/@VALUE = 0">
<div title="Zona aktiv" style="position: absolute; top: 186px; left: 303px; z-index: 102; background-image: url(IMAGES/PIR1_O_3.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT100"></div>
</xsl:if>
<xsl:if test="INPUT[62]/@VALUE != 0">
<div title="Zona aktiv" style="position: absolute; top: 152px; left: 668px; z-index: 103; background-image: url(IMAGES/PIR1_O_3.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT101"></div>
</xsl:if>
<xsl:if test="INPUT[62]/@VALUE = 0">
<div title="Zona aktiv" style="position: absolute; top: 152px; left: 668px; z-index: 103; background-image: url(IMAGES/PIR1_O_3.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT101"></div>
</xsl:if>
<xsl:if test="INPUT[63]/@VALUE != 0">
<div title="Zona aktiv" style="position: absolute; top: 248px; left: 413px; z-index: 104; background-image: url(IMAGES/PIR1_O_2.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT102"></div>
</xsl:if>
<xsl:if test="INPUT[63]/@VALUE = 0">
<div title="Zona aktiv" style="position: absolute; top: 248px; left: 413px; z-index: 104; background-image: url(IMAGES/PIR1_O_2.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT102"></div>
</xsl:if>
<xsl:if test="INPUT[64]/@VALUE != 0">
<div title="Zona aktiv" style="position: absolute; top: 432px; left: 502px; z-index: 105; background-image: url(IMAGES/PIR1_O_3.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT103"></div>
</xsl:if>
<xsl:if test="INPUT[64]/@VALUE = 0">
<div title="Zona aktiv" style="position: absolute; top: 432px; left: 502px; z-index: 105; background-image: url(IMAGES/PIR1_O_3.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT103"></div>
</xsl:if>
<xsl:if test="INPUT[65]/@VALUE != 0">
<div title="Zona aktiv" style="position: absolute; top: 278px; left: 665px; z-index: 106; background-image: url(IMAGES/PIR1_O_4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT104"></div>
</xsl:if>
<xsl:if test="INPUT[65]/@VALUE = 0">
<div title="Zona aktiv" style="position: absolute; top: 278px; left: 665px; z-index: 106; background-image: url(IMAGES/PIR1_O_4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT104"></div>
</xsl:if>
<xsl:if test="INPUT[66]/@VALUE != 0">
<div title="Zona aktiv" style="position: absolute; top: 339px; left: 665px; z-index: 107; background-image: url(IMAGES/PIR1_O_4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT105"></div>
</xsl:if>
<xsl:if test="INPUT[66]/@VALUE = 0">
<div title="Zona aktiv" style="position: absolute; top: 339px; left: 665px; z-index: 107; background-image: url(IMAGES/PIR1_O_4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT105"></div>
</xsl:if>
<xsl:if test="INPUT[67]/@VALUE != 0">
<div title="Zona aktiv" style="position: absolute; top: 189px; left: 665px; z-index: 108; background-image: url(IMAGES/PIR1_O_4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT106"></div>
</xsl:if>
<xsl:if test="INPUT[67]/@VALUE = 0">
<div title="Zona aktiv" style="position: absolute; top: 189px; left: 665px; z-index: 108; background-image: url(IMAGES/PIR1_O_4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT106"></div>
</xsl:if>
<xsl:if test="INPUT[68]/@VALUE = 0">
<div title="Hosszú ideje elmentek otthonról" style="position: absolute; top: 555px; left: 45px; z-index: 109; background-image: url(IMAGES/ALARM1_2.PNG); line-height: 32px; height: 32px; width: 32px; visibility: hidden;" id="INPUT107"></div>
</xsl:if>
<xsl:if test="INPUT[68]/@VALUE != 0">
<div title="Hosszú ideje elmentek otthonról" style="position: absolute; top: 555px; left: 45px; z-index: 109; background-image: url(IMAGES/ALARM1_2.PNG); line-height: 32px; height: 32px; width: 32px;" id="INPUT107"></div>
</xsl:if>
<xsl:if test="INPUT[69]/@VALUE = 0">
<div title="Rövid ideje elmentek otthonról" style="position: absolute; top: 555px; left: 83px; z-index: 110; background-image: url(IMAGES/ALARM1_3.PNG); line-height: 32px; height: 32px; width: 32px; visibility: hidden;" id="INPUT108"></div>
</xsl:if>
<xsl:if test="INPUT[69]/@VALUE != 0">
<div title="Rövid ideje elmentek otthonról" style="position: absolute; top: 555px; left: 83px; z-index: 110; background-image: url(IMAGES/ALARM1_3.PNG); line-height: 32px; height: 32px; width: 32px;" id="INPUT108"></div>
</xsl:if>
<xsl:if test="INPUT[70]/@VALUE != 0">
<div title="Zona aktiv" style="position: absolute; top: 378px; left: 531px; z-index: 111; background-image: url(IMAGES/PIR1_O_2.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT109"></div>
</xsl:if>
<xsl:if test="INPUT[70]/@VALUE = 0">
<div title="Zona aktiv" style="position: absolute; top: 378px; left: 531px; z-index: 111; background-image: url(IMAGES/PIR1_O_2.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT109"></div>
</xsl:if>
</div>
</td>
</tr>
<!--bottom-->
<tr style="line-height: 0px; height: 0px;">
<td id="bottom" colspan="2" style="text-align: center"></td>
</tr>
</table>
</xsl:if>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
