<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dc="http://purl.org/dc/elements/1.1/" version="1.0">
<xsl:output doctype-public="-//W3C//DTD HTML 4.01 STRICT//EN" encoding="UTF-8" />
<xsl:template match="/PAGE">
<html>
<head>
<meta name="viewport" content="width=546" />
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
<script src="LIGHTS.JS?U=1714410853" language="JavaScript" charset="utf-8" />
<style type="text/css">.mono {font-family: Verdana, Arial, FreeSans, sans-serif;}</style>
</head>
<body onload="GetXML('LIGHTS.XML'); FunWatchDog();">
<xsl:if test="1714410853 != ACCESS/@UCID">
<xsl:attribute name="onload">
null;
</xsl:attribute>
<div id="cachewarning" style="text-align: left;"></div>
<script src="REFCLR.JS" language="JavaScript" charset="utf-8"></script>
</xsl:if>
<xsl:if test="1714410853 = ACCESS/@UCID">
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
<a href="VENTIL.XML">Szellőztetés</a>
<br />
<a href="WATERING.XML">Öntözés</a>
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
<div style="background-color:#FFFFFF;position: relative; width: 370px; height: 1160px;">
<form action="javascript:PostGlobal();">
<input class="mono" tabindex="2" type="text" id="INPUT28" style="position: absolute; top: 265px; left: 74px; width: 49px; z-index: 29; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[13]/@VALUE}" name="{INPUT[13]/@NAME}" onfocus="SetInputEdited(28, event);" onblur="InputFocused[27]=0" onkeydown="SetInputEdited(28, event);"></input>
<input class="mono" tabindex="4" type="text" id="INPUT31" style="position: absolute; top: 530px; left: 87px; width: 34px; z-index: 32; font-size: 8px; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[16]/@VALUE}" name="{INPUT[16]/@NAME}" onfocus="SetInputEdited(31, event);" onblur="InputFocused[30]=0" onkeydown="SetInputEdited(31, event);"></input>
<input class="mono" tabindex="6" type="text" id="INPUT34" style="position: absolute; top: 384px; left: 242px; width: 49px; z-index: 35; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[19]/@VALUE}" name="{INPUT[19]/@NAME}" onfocus="SetInputEdited(34, event);" onblur="InputFocused[33]=0" onkeydown="SetInputEdited(34, event);"></input>
<input class="mono" tabindex="11" type="text" id="INPUT38" style="position: absolute; top: 178px; left: 242px; width: 49px; z-index: 39; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[22]/@VALUE}" name="{INPUT[22]/@NAME}" onfocus="SetInputEdited(38, event);" onblur="InputFocused[37]=0" onkeydown="SetInputEdited(38, event);"></input>
<input class="mono" tabindex="13" type="text" id="INPUT41" style="position: absolute; top: 510px; left: 147px; width: 34px; z-index: 42; font-size: 8px; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[25]/@VALUE}" name="{INPUT[25]/@NAME}" onfocus="SetInputEdited(41, event);" onblur="InputFocused[40]=0" onkeydown="SetInputEdited(41, event);"></input>
<input class="mono" tabindex="16" type="text" id="INPUT89" style="position: absolute; top: 975px; left: 267px; width: 34px; z-index: 91; font-size: 8px; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[50]/@VALUE}" name="{INPUT[50]/@NAME}" onfocus="SetInputEdited(89, event);" onblur="InputFocused[88]=0" onkeydown="SetInputEdited(89, event);"></input>
<input class="mono" tabindex="19" type="text" id="INPUT92" style="position: absolute; top: 890px; left: 37px; width: 49px; z-index: 94; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[53]/@VALUE}" name="{INPUT[53]/@NAME}" onfocus="SetInputEdited(92, event);" onblur="InputFocused[91]=0" onkeydown="SetInputEdited(92, event);"></input>
<input class="mono" tabindex="21" type="text" id="INPUT95" style="position: absolute; top: 700px; left: 52px; width: 49px; z-index: 97; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[56]/@VALUE}" name="{INPUT[56]/@NAME}" onfocus="SetInputEdited(95, event);" onblur="InputFocused[94]=0" onkeydown="SetInputEdited(95, event);"></input>
<input class="mono" tabindex="23" type="text" id="INPUT98" style="position: absolute; top: 709px; left: 239px; width: 49px; z-index: 100; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[59]/@VALUE}" name="{INPUT[59]/@NAME}" onfocus="SetInputEdited(98, event);" onblur="InputFocused[97]=0" onkeydown="SetInputEdited(98, event);"></input>
<input title="External temperature" class="mono" tabindex="7" type="text" id="INPUT110" style="position: absolute; top: 19px; left: 130px; width: 49px; z-index: 115; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[71]/@VALUE}" name="{INPUT[71]/@NAME}" onfocus="SetInputEdited(110, event);" onblur="InputFocused[109]=0" onkeydown="SetInputEdited(110, event);"></input>
<input title="Szellőztetési szint" class="mono" tabindex="8" type="text" id="INPUT113" style="position: absolute; top: 19px; left: 312px; width: 31px; z-index: 118; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[74]/@VALUE}" name="{INPUT[74]/@NAME}" onfocus="SetInputEdited(113, event);" onblur="InputFocused[112]=0" onkeydown="SetInputEdited(113, event);"></input>
<input class="mono" tabindex="17" type="text" id="INPUT116" style="position: absolute; top: 904px; left: 292px; width: 24px; z-index: 121; font-size: 6px; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[77]/@VALUE}" name="{INPUT[77]/@NAME}" onfocus="SetInputEdited(116, event);" onblur="InputFocused[115]=0" onkeydown="SetInputEdited(116, event);"></input>
</form>
<div style="position: absolute; top: 55px; left: 10px; z-index: 1; background-image: url(IMAGES/BR_44__4.PNG); line-height: 513px; height: 513px; width: 334px;"></div>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 190px; left: 100px; z-index: 2;">
<div onclick="PostXML1()" id="INPUT1" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 190px; left: 100px; z-index: 2;">
<div onclick="PostXML1()" id="INPUT1" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 190px; left: 100px; z-index: 3;">
<div onclick="PostXML2()" id="INPUT2" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 190px; left: 100px; z-index: 3;">
<div onclick="PostXML2()" id="INPUT2" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE = 0">
<div style="position: absolute; top: 443px; left: 71px; z-index: 4;">
<div onclick="PostXML3()" id="INPUT3" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div style="position: absolute; top: 443px; left: 71px; z-index: 4;">
<div onclick="PostXML3()" id="INPUT3" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div style="position: absolute; top: 443px; left: 71px; z-index: 5;">
<div onclick="PostXML4()" id="INPUT4" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE = 0">
<div style="position: absolute; top: 443px; left: 71px; z-index: 5;">
<div onclick="PostXML4()" id="INPUT4" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 75px; left: 70px; z-index: 6;">
<div onclick="PostXML5()" id="INPUT5" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 75px; left: 70px; z-index: 6;">
<div onclick="PostXML5()" id="INPUT5" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 75px; left: 70px; z-index: 7;">
<div onclick="PostXML6()" id="INPUT6" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 75px; left: 70px; z-index: 7;">
<div onclick="PostXML6()" id="INPUT6" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 525px; left: 215px; z-index: 8;">
<div onclick="PostXML7()" id="INPUT7" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 525px; left: 215px; z-index: 8;">
<div onclick="PostXML7()" id="INPUT7" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 525px; left: 215px; z-index: 9;">
<div onclick="PostXML8()" id="INPUT8" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 525px; left: 215px; z-index: 9;">
<div onclick="PostXML8()" id="INPUT8" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE = 0">
<div style="position: absolute; top: 371px; left: 174px; z-index: 10;">
<div onclick="PostXML9()" id="INPUT9" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<div style="position: absolute; top: 371px; left: 174px; z-index: 10;">
<div onclick="PostXML9()" id="INPUT9" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<div style="position: absolute; top: 371px; left: 174px; z-index: 11;">
<div onclick="PostXML10()" id="INPUT10" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE = 0">
<div style="position: absolute; top: 371px; left: 174px; z-index: 11;">
<div onclick="PostXML10()" id="INPUT10" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE = 0">
<div style="position: absolute; top: 500px; left: 40px; z-index: 12;">
<div onclick="PostXML11()" id="INPUT11" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div style="position: absolute; top: 500px; left: 40px; z-index: 12;">
<div onclick="PostXML11()" id="INPUT11" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div style="position: absolute; top: 500px; left: 40px; z-index: 13;">
<div onclick="PostXML12()" id="INPUT12" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE = 0">
<div style="position: absolute; top: 500px; left: 40px; z-index: 13;">
<div onclick="PostXML12()" id="INPUT12" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE = 0">
<div style="position: absolute; top: 148px; left: 255px; z-index: 14;">
<div onclick="PostXML13()" id="INPUT13" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div style="position: absolute; top: 148px; left: 255px; z-index: 14;">
<div onclick="PostXML13()" id="INPUT13" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div style="position: absolute; top: 147px; left: 255px; z-index: 15;">
<div onclick="PostXML14()" id="INPUT14" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE = 0">
<div style="position: absolute; top: 147px; left: 255px; z-index: 15;">
<div onclick="PostXML14()" id="INPUT14" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE = 0">
<div style="position: absolute; top: 345px; left: 260px; z-index: 16;">
<div onclick="PostXML15()" id="INPUT15" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<div style="position: absolute; top: 345px; left: 260px; z-index: 16;">
<div onclick="PostXML15()" id="INPUT15" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<div style="position: absolute; top: 345px; left: 260px; z-index: 17;">
<div onclick="PostXML16()" id="INPUT16" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE = 0">
<div style="position: absolute; top: 345px; left: 260px; z-index: 17;">
<div onclick="PostXML16()" id="INPUT16" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE = 0">
<div style="position: absolute; top: 483px; left: 157px; z-index: 18;">
<div onclick="PostXML17()" id="INPUT17" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div style="position: absolute; top: 483px; left: 157px; z-index: 18;">
<div onclick="PostXML17()" id="INPUT17" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div style="position: absolute; top: 483px; left: 157px; z-index: 19;">
<div onclick="PostXML18()" id="INPUT18" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE = 0">
<div style="position: absolute; top: 483px; left: 157px; z-index: 19;">
<div onclick="PostXML18()" id="INPUT18" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 500px; left: 90px; z-index: 20;">
<div onclick="PostXML19()" id="INPUT19" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 500px; left: 90px; z-index: 20;">
<div onclick="PostXML19()" id="INPUT19" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 500px; left: 90px; z-index: 21;">
<div onclick="PostXML20()" id="INPUT20" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 500px; left: 90px; z-index: 21;">
<div onclick="PostXML20()" id="INPUT20" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE = 0">
<div style="position: absolute; top: 330px; left: 80px; z-index: 22;">
<div onclick="PostXML21()" id="INPUT21" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div style="position: absolute; top: 330px; left: 80px; z-index: 22;">
<div onclick="PostXML21()" id="INPUT21" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div style="position: absolute; top: 330px; left: 80px; z-index: 23;">
<div onclick="PostXML22()" id="INPUT22" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE = 0">
<div style="position: absolute; top: 330px; left: 80px; z-index: 23;">
<div onclick="PostXML22()" id="INPUT22" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 75px; left: 140px; z-index: 24;">
<div onclick="PostXML23()" id="INPUT23" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 75px; left: 140px; z-index: 24;">
<div onclick="PostXML23()" id="INPUT23" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 75px; left: 140px; z-index: 25;">
<div onclick="PostXML24()" id="INPUT24" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 75px; left: 140px; z-index: 25;">
<div onclick="PostXML24()" id="INPUT24" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 560px; left: 190px; z-index: 26;">
<div onclick="PostXML25()" id="INPUT25" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 560px; left: 190px; z-index: 26;">
<div onclick="PostXML25()" id="INPUT25" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 560px; left: 190px; z-index: 27;">
<div onclick="PostXML26()" id="INPUT26" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 560px; left: 190px; z-index: 27;">
<div onclick="PostXML26()" id="INPUT26" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<form action="javascript:PostXML27()" style="position: absolute; top: 290px; left: 74px; z-index: 28; font-size: 13px;">
<input id="INPUT27" onfocus="document.getElementById('INPUT27x').style.visibility='visible';SetInputEdited(27, event);" onblur="InputFocused[26]=0" onkeydown="SetInputEdited(27, event);" class="mono" tabindex="1" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[12]/@NAME}" value="{INPUT[12]/@VALUE}" />
<input type="submit" id="INPUT27x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div style="position: absolute; top: 331px; left: 105px; z-index: 30; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT29"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div style="position: absolute; top: 331px; left: 105px; z-index: 30; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT29"></div>
</xsl:if>
<form action="javascript:PostXML30()" style="position: absolute; top: 530px; left: 31px; z-index: 31; font-size: 8px;">
<input id="INPUT30" onfocus="document.getElementById('INPUT30x').style.visibility='visible';SetInputEdited(30, event);" onblur="InputFocused[29]=0" onkeydown="SetInputEdited(30, event);" class="mono" tabindex="3" type="text" style="width: 29px; background-color: #FFFFFF;" name="{INPUT[15]/@NAME}" value="{INPUT[15]/@VALUE}" />
<input type="submit" id="INPUT30x" style="position: absolute; top: 0px; height: 16px; width: 16px; visibility: hidden;" value="&gt;" />
</form>
<xsl:if test="INPUT[17]/@VALUE = 0">
<div style="position: absolute; top: 503px; left: 73px; z-index: 33; background-image: url(IMAGES/HEAT1__5.PNG); line-height: 20px; height: 20px; width: 20px; visibility: hidden;" id="INPUT32"></div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<div style="position: absolute; top: 503px; left: 73px; z-index: 33; background-image: url(IMAGES/HEAT1__5.PNG); line-height: 20px; height: 20px; width: 20px;" id="INPUT32"></div>
</xsl:if>
<form action="javascript:PostXML33()" style="position: absolute; top: 409px; left: 242px; z-index: 34; font-size: 13px;">
<input id="INPUT33" onfocus="document.getElementById('INPUT33x').style.visibility='visible';SetInputEdited(33, event);" onblur="InputFocused[32]=0" onkeydown="SetInputEdited(33, event);" class="mono" tabindex="5" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[18]/@NAME}" value="{INPUT[18]/@VALUE}" />
<input type="submit" id="INPUT33x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<xsl:if test="INPUT[20]/@VALUE = 0">
<div style="position: absolute; top: 347px; left: 290px; z-index: 36; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT35"></div>
</xsl:if>
<xsl:if test="INPUT[20]/@VALUE != 0">
<div style="position: absolute; top: 347px; left: 290px; z-index: 36; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT35"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div style="position: absolute; top: 444px; left: 96px; z-index: 37; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT36"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div style="position: absolute; top: 444px; left: 96px; z-index: 37; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT36"></div>
</xsl:if>
<form action="javascript:PostXML37()" style="position: absolute; top: 203px; left: 242px; z-index: 38; font-size: 13px;">
<input id="INPUT37" onfocus="document.getElementById('INPUT37x').style.visibility='visible';SetInputEdited(37, event);" onblur="InputFocused[36]=0" onkeydown="SetInputEdited(37, event);" class="mono" tabindex="9" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[21]/@NAME}" value="{INPUT[21]/@VALUE}" />
<input type="submit" id="INPUT37x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<xsl:if test="INPUT[23]/@VALUE = 0">
<div style="position: absolute; top: 148px; left: 285px; z-index: 40; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT39"></div>
</xsl:if>
<xsl:if test="INPUT[23]/@VALUE != 0">
<div style="position: absolute; top: 148px; left: 285px; z-index: 40; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT39"></div>
</xsl:if>
<form action="javascript:PostXML40()" style="position: absolute; top: 530px; left: 147px; z-index: 41; font-size: 8px;">
<input id="INPUT40" onfocus="document.getElementById('INPUT40x').style.visibility='visible';SetInputEdited(40, event);" onblur="InputFocused[39]=0" onkeydown="SetInputEdited(40, event);" class="mono" tabindex="12" type="text" style="width: 29px; background-color: #FFFFFF;" name="{INPUT[24]/@NAME}" value="{INPUT[24]/@VALUE}" />
<input type="submit" id="INPUT40x" style="position: absolute; top: 0px; height: 16px; width: 16px; visibility: hidden;" value="&gt;" />
</form>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div style="position: absolute; top: 191px; left: 130px; z-index: 43; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT42"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div style="position: absolute; top: 191px; left: 130px; z-index: 43; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT42"></div>
</xsl:if>
<xsl:if test="INPUT[26]/@VALUE = 0">
<div style="position: absolute; top: 462px; left: 158px; z-index: 44; background-image: url(IMAGES/HEAT1__5.PNG); line-height: 20px; height: 20px; width: 20px; visibility: hidden;" id="INPUT43"></div>
</xsl:if>
<xsl:if test="INPUT[26]/@VALUE != 0">
<div style="position: absolute; top: 462px; left: 158px; z-index: 44; background-image: url(IMAGES/HEAT1__5.PNG); line-height: 20px; height: 20px; width: 20px;" id="INPUT43"></div>
</xsl:if>
<xsl:if test="INPUT[27]/@VALUE != 0">
<div style="position: absolute; top: 565px; left: 150px; z-index: 45; background-image: url(IMAGES/DOOR1__2.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT44"></div>
</xsl:if>
<xsl:if test="INPUT[27]/@VALUE = 0">
<div style="position: absolute; top: 565px; left: 150px; z-index: 45; background-image: url(IMAGES/DOOR1__2.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT44"></div>
</xsl:if>
<xsl:if test="INPUT[27]/@VALUE = 0">
<div style="position: absolute; top: 565px; left: 150px; z-index: 46; background-image: url(IMAGES/DOOR1__1.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT45"></div>
</xsl:if>
<xsl:if test="INPUT[27]/@VALUE != 0">
<div style="position: absolute; top: 565px; left: 150px; z-index: 46; background-image: url(IMAGES/DOOR1__1.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT45"></div>
</xsl:if>
<xsl:if test="INPUT[28]/@VALUE != 0">
<div style="position: absolute; top: 510px; left: 265px; z-index: 47;">
<div onclick="PostXML46()" id="INPUT46" class="imgsub" style="background-image: url(IMAGES/DOOR1__2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[28]/@VALUE = 0">
<div style="position: absolute; top: 510px; left: 265px; z-index: 47;">
<div onclick="PostXML46()" id="INPUT46" class="imgsub" style="background-image: url(IMAGES/DOOR1__2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[28]/@VALUE = 0">
<div style="position: absolute; top: 510px; left: 265px; z-index: 48;">
<div onclick="PostXML47()" id="INPUT47" class="imgsub" style="background-image: url(IMAGES/DOOR1__1.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[28]/@VALUE != 0">
<div style="position: absolute; top: 510px; left: 265px; z-index: 48;">
<div onclick="PostXML47()" id="INPUT47" class="imgsub" style="background-image: url(IMAGES/DOOR1__1.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[29]/@VALUE != 0">
<div style="position: absolute; top: 568px; left: 106px; z-index: 49;">
<div onclick="PostXML48()" id="INPUT48" class="imgsub" style="background-image: url(IMAGES/LED_RE_1.PNG); height: 15px; width: 30px; line-height: 15px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[29]/@VALUE = 0">
<div style="position: absolute; top: 568px; left: 106px; z-index: 49;">
<div onclick="PostXML48()" id="INPUT48" class="imgsub" style="background-image: url(IMAGES/LED_RE_1.PNG); height: 15px; width: 30px; line-height: 15px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[29]/@VALUE = 0">
<div title="Keringető pumpa kapcsolása" style="position: absolute; top: 568px; left: 106px; z-index: 50; background-image: url(IMAGES/LED_RE_2.PNG); line-height: 15px; height: 15px; width: 30px; visibility: hidden;" id="INPUT49"></div>
</xsl:if>
<xsl:if test="INPUT[29]/@VALUE != 0">
<div title="Keringető pumpa kapcsolása" style="position: absolute; top: 568px; left: 106px; z-index: 50; background-image: url(IMAGES/LED_RE_2.PNG); line-height: 15px; height: 15px; width: 30px;" id="INPUT49"></div>
</xsl:if>
<xsl:if test="INPUT[30]/@VALUE != 0">
<div title="Zona aktiv" style="position: absolute; top: 492px; left: 61px; z-index: 51; background-image: url(IMAGES/PIR1_O_1.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT50"></div>
</xsl:if>
<xsl:if test="INPUT[30]/@VALUE = 0">
<div title="Zona aktiv" style="position: absolute; top: 492px; left: 61px; z-index: 51; background-image: url(IMAGES/PIR1_O_1.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT50"></div>
</xsl:if>
<xsl:if test="INPUT[31]/@VALUE != 0">
<div title="Zona aktiv" style="position: absolute; top: 263px; left: 303px; z-index: 52; background-image: url(IMAGES/PIR1_O_4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT51"></div>
</xsl:if>
<xsl:if test="INPUT[31]/@VALUE = 0">
<div title="Zona aktiv" style="position: absolute; top: 263px; left: 303px; z-index: 52; background-image: url(IMAGES/PIR1_O_4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT51"></div>
</xsl:if>
<xsl:if test="INPUT[32]/@VALUE != 0">
<div title="Zona aktiv" style="position: absolute; top: 452px; left: 136px; z-index: 53; background-image: url(IMAGES/PIR1_O_1.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT52"></div>
</xsl:if>
<xsl:if test="INPUT[32]/@VALUE = 0">
<div title="Zona aktiv" style="position: absolute; top: 452px; left: 136px; z-index: 53; background-image: url(IMAGES/PIR1_O_1.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT52"></div>
</xsl:if>
<xsl:if test="INPUT[33]/@VALUE != 0">
<div title="Zona aktiv" style="position: absolute; top: 313px; left: 28px; z-index: 54; background-image: url(IMAGES/PIR1_O_1.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT53"></div>
</xsl:if>
<xsl:if test="INPUT[33]/@VALUE = 0">
<div title="Zona aktiv" style="position: absolute; top: 313px; left: 28px; z-index: 54; background-image: url(IMAGES/PIR1_O_1.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT53"></div>
</xsl:if>
<xsl:if test="INPUT[34]/@VALUE != 0">
<div title="Zona aktiv" style="position: absolute; top: 288px; left: 48px; z-index: 55; background-image: url(IMAGES/PIR1_O_2.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT54"></div>
</xsl:if>
<xsl:if test="INPUT[34]/@VALUE = 0">
<div title="Zona aktiv" style="position: absolute; top: 288px; left: 48px; z-index: 55; background-image: url(IMAGES/PIR1_O_2.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT54"></div>
</xsl:if>
<xsl:if test="INPUT[35]/@VALUE != 0">
<div title="Zona aktiv" style="position: absolute; top: 226px; left: 303px; z-index: 56; background-image: url(IMAGES/PIR1_O_3.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT55"></div>
</xsl:if>
<xsl:if test="INPUT[35]/@VALUE = 0">
<div title="Zona aktiv" style="position: absolute; top: 226px; left: 303px; z-index: 56; background-image: url(IMAGES/PIR1_O_3.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT55"></div>
</xsl:if>
<div style="position: absolute; top: 600px; left: 5px; z-index: 57; background-image: url(IMAGES/BR_44__3.PNG); line-height: 519px; height: 519px; width: 340px;"></div>
<xsl:if test="INPUT[36]/@VALUE = 0">
<div style="position: absolute; top: 795px; left: 90px; z-index: 58;">
<div onclick="PostXML56()" id="INPUT56" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[36]/@VALUE != 0">
<div style="position: absolute; top: 795px; left: 90px; z-index: 58;">
<div onclick="PostXML56()" id="INPUT56" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[36]/@VALUE != 0">
<div style="position: absolute; top: 795px; left: 90px; z-index: 59;">
<div onclick="PostXML57()" id="INPUT57" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[36]/@VALUE = 0">
<div style="position: absolute; top: 795px; left: 90px; z-index: 59;">
<div onclick="PostXML57()" id="INPUT57" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[37]/@VALUE = 0">
<div style="position: absolute; top: 800px; left: 270px; z-index: 60;">
<div onclick="PostXML58()" id="INPUT58" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[37]/@VALUE != 0">
<div style="position: absolute; top: 800px; left: 270px; z-index: 60;">
<div onclick="PostXML58()" id="INPUT58" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[37]/@VALUE != 0">
<div style="position: absolute; top: 800px; left: 270px; z-index: 61;">
<div onclick="PostXML59()" id="INPUT59" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[37]/@VALUE = 0">
<div style="position: absolute; top: 800px; left: 270px; z-index: 61;">
<div onclick="PostXML59()" id="INPUT59" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[38]/@VALUE = 0">
<div style="position: absolute; top: 920px; left: 170px; z-index: 62;">
<div onclick="PostXML60()" id="INPUT60" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[38]/@VALUE != 0">
<div style="position: absolute; top: 920px; left: 170px; z-index: 62;">
<div onclick="PostXML60()" id="INPUT60" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[38]/@VALUE != 0">
<div style="position: absolute; top: 920px; left: 170px; z-index: 63;">
<div onclick="PostXML61()" id="INPUT61" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[38]/@VALUE = 0">
<div style="position: absolute; top: 920px; left: 170px; z-index: 63;">
<div onclick="PostXML61()" id="INPUT61" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[39]/@VALUE = 0">
<div style="position: absolute; top: 729px; left: 89px; z-index: 64;">
<div onclick="PostXML62()" id="INPUT62" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[39]/@VALUE != 0">
<div style="position: absolute; top: 729px; left: 89px; z-index: 64;">
<div onclick="PostXML62()" id="INPUT62" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[39]/@VALUE != 0">
<div style="position: absolute; top: 729px; left: 89px; z-index: 65;">
<div onclick="PostXML63()" id="INPUT63" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[39]/@VALUE = 0">
<div style="position: absolute; top: 729px; left: 89px; z-index: 65;">
<div onclick="PostXML63()" id="INPUT63" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[38]/@VALUE = 0">
<div style="position: absolute; top: 815px; left: 170px; z-index: 66;">
<div onclick="PostXML64()" id="INPUT64" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[38]/@VALUE != 0">
<div style="position: absolute; top: 815px; left: 170px; z-index: 66;">
<div onclick="PostXML64()" id="INPUT64" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[38]/@VALUE != 0">
<div style="position: absolute; top: 815px; left: 170px; z-index: 67;">
<div onclick="PostXML65()" id="INPUT65" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[38]/@VALUE = 0">
<div style="position: absolute; top: 815px; left: 170px; z-index: 67;">
<div onclick="PostXML65()" id="INPUT65" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE = 0">
<div style="position: absolute; top: 879px; left: 274px; z-index: 68;">
<div onclick="PostXML66()" id="INPUT66" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE != 0">
<div style="position: absolute; top: 879px; left: 274px; z-index: 68;">
<div onclick="PostXML66()" id="INPUT66" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE != 0">
<div style="position: absolute; top: 879px; left: 274px; z-index: 69;">
<div onclick="PostXML67()" id="INPUT67" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE = 0">
<div style="position: absolute; top: 879px; left: 274px; z-index: 69;">
<div onclick="PostXML67()" id="INPUT67" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[41]/@VALUE = 0">
<div style="position: absolute; top: 944px; left: 274px; z-index: 70;">
<div onclick="PostXML68()" id="INPUT68" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[41]/@VALUE != 0">
<div style="position: absolute; top: 944px; left: 274px; z-index: 70;">
<div onclick="PostXML68()" id="INPUT68" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[41]/@VALUE != 0">
<div style="position: absolute; top: 944px; left: 274px; z-index: 71;">
<div onclick="PostXML69()" id="INPUT69" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[41]/@VALUE = 0">
<div style="position: absolute; top: 944px; left: 274px; z-index: 71;">
<div onclick="PostXML69()" id="INPUT69" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE = 0">
<div style="position: absolute; top: 1004px; left: 224px; z-index: 72;">
<div onclick="PostXML70()" id="INPUT70" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE != 0">
<div style="position: absolute; top: 1004px; left: 224px; z-index: 72;">
<div onclick="PostXML70()" id="INPUT70" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE != 0">
<div style="position: absolute; top: 1004px; left: 224px; z-index: 73;">
<div onclick="PostXML71()" id="INPUT71" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE = 0">
<div style="position: absolute; top: 1004px; left: 224px; z-index: 73;">
<div onclick="PostXML71()" id="INPUT71" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[43]/@VALUE = 0">
<div style="position: absolute; top: 1004px; left: 179px; z-index: 74;">
<div onclick="PostXML72()" id="INPUT72" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[43]/@VALUE != 0">
<div style="position: absolute; top: 1004px; left: 179px; z-index: 74;">
<div onclick="PostXML72()" id="INPUT72" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[43]/@VALUE != 0">
<div style="position: absolute; top: 1004px; left: 179px; z-index: 75;">
<div onclick="PostXML73()" id="INPUT73" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[43]/@VALUE = 0">
<div style="position: absolute; top: 1004px; left: 179px; z-index: 75;">
<div onclick="PostXML73()" id="INPUT73" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[44]/@VALUE = 0">
<div style="position: absolute; top: 944px; left: 74px; z-index: 76;">
<div onclick="PostXML74()" id="INPUT74" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[44]/@VALUE != 0">
<div style="position: absolute; top: 944px; left: 74px; z-index: 76;">
<div onclick="PostXML74()" id="INPUT74" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[44]/@VALUE != 0">
<div style="position: absolute; top: 944px; left: 74px; z-index: 77;">
<div onclick="PostXML75()" id="INPUT75" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[44]/@VALUE = 0">
<div style="position: absolute; top: 944px; left: 74px; z-index: 77;">
<div onclick="PostXML75()" id="INPUT75" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[45]/@VALUE = 0">
<div style="position: absolute; top: 682px; left: 249px; z-index: 78;">
<div onclick="PostXML76()" id="INPUT76" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[45]/@VALUE != 0">
<div style="position: absolute; top: 682px; left: 249px; z-index: 78;">
<div onclick="PostXML76()" id="INPUT76" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[45]/@VALUE != 0">
<div style="position: absolute; top: 682px; left: 249px; z-index: 79;">
<div onclick="PostXML77()" id="INPUT77" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[45]/@VALUE = 0">
<div style="position: absolute; top: 682px; left: 249px; z-index: 79;">
<div onclick="PostXML77()" id="INPUT77" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[46]/@VALUE = 0">
<div style="position: absolute; top: 1074px; left: 104px; z-index: 80;">
<div onclick="PostXML78()" id="INPUT78" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[46]/@VALUE != 0">
<div style="position: absolute; top: 1074px; left: 104px; z-index: 80;">
<div onclick="PostXML78()" id="INPUT78" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[46]/@VALUE != 0">
<div style="position: absolute; top: 1074px; left: 104px; z-index: 81;">
<div onclick="PostXML79()" id="INPUT79" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[46]/@VALUE = 0">
<div style="position: absolute; top: 1074px; left: 104px; z-index: 81;">
<div onclick="PostXML79()" id="INPUT79" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[46]/@VALUE = 0">
<div style="position: absolute; top: 1074px; left: 44px; z-index: 82;">
<div onclick="PostXML80()" id="INPUT80" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[46]/@VALUE != 0">
<div style="position: absolute; top: 1074px; left: 44px; z-index: 82;">
<div onclick="PostXML80()" id="INPUT80" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[46]/@VALUE != 0">
<div style="position: absolute; top: 1074px; left: 44px; z-index: 83;">
<div onclick="PostXML81()" id="INPUT81" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[46]/@VALUE = 0">
<div style="position: absolute; top: 1074px; left: 44px; z-index: 83;">
<div onclick="PostXML81()" id="INPUT81" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[47]/@VALUE = 0">
<div style="position: absolute; top: 629px; left: 139px; z-index: 84;">
<div onclick="PostXML82()" id="INPUT82" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[47]/@VALUE != 0">
<div style="position: absolute; top: 629px; left: 139px; z-index: 84;">
<div onclick="PostXML82()" id="INPUT82" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[47]/@VALUE != 0">
<div style="position: absolute; top: 629px; left: 139px; z-index: 85;">
<div onclick="PostXML83()" id="INPUT83" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[47]/@VALUE = 0">
<div style="position: absolute; top: 629px; left: 139px; z-index: 85;">
<div onclick="PostXML83()" id="INPUT83" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[47]/@VALUE = 0">
<div style="position: absolute; top: 629px; left: 79px; z-index: 86;">
<div onclick="PostXML84()" id="INPUT84" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[47]/@VALUE != 0">
<div style="position: absolute; top: 629px; left: 79px; z-index: 86;">
<div onclick="PostXML84()" id="INPUT84" class="imgsub" style="background-image: url(IMAGES/LIGHT1_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[47]/@VALUE != 0">
<div style="position: absolute; top: 629px; left: 79px; z-index: 87;">
<div onclick="PostXML85()" id="INPUT85" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[47]/@VALUE = 0">
<div style="position: absolute; top: 629px; left: 79px; z-index: 87;">
<div onclick="PostXML85()" id="INPUT85" class="imgsub" style="background-image: url(IMAGES/LIGHT1_1.PNG); height: 24px; width: 24px; line-height: 24px; font-style: italic;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[48]/@VALUE = 0">
<div style="position: absolute; top: 970px; left: 340px; z-index: 88;">
<div onclick="PostXML86()" id="INPUT86" class="imgsub" style="background-image: url(IMAGES/FAN1_O_1.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[48]/@VALUE != 0">
<div style="position: absolute; top: 970px; left: 340px; z-index: 88;">
<div onclick="PostXML86()" id="INPUT86" class="imgsub" style="background-image: url(IMAGES/FAN1_O_1.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[48]/@VALUE != 0">
<div style="position: absolute; top: 970px; left: 340px; z-index: 89;">
<div onclick="PostXML87()" id="INPUT87" class="imgsub" style="background-image: url(IMAGES/FAN1_O_2.PNG); height: 24px; width: 24px; line-height: 24px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[48]/@VALUE = 0">
<div style="position: absolute; top: 970px; left: 340px; z-index: 89;">
<div onclick="PostXML87()" id="INPUT87" class="imgsub" style="background-image: url(IMAGES/FAN1_O_2.PNG); height: 24px; width: 24px; line-height: 24px;"></div>
</div>
</xsl:if>
<form action="javascript:PostXML88()" style="position: absolute; top: 1015px; left: 267px; z-index: 90; font-size: 8px;">
<input id="INPUT88" onfocus="document.getElementById('INPUT88x').style.visibility='visible';SetInputEdited(88, event);" onblur="InputFocused[87]=0" onkeydown="SetInputEdited(88, event);" class="mono" tabindex="14" type="text" style="width: 29px; background-color: #FFFFFF;" name="{INPUT[49]/@NAME}" value="{INPUT[49]/@VALUE}" />
<input type="submit" id="INPUT88x" style="position: absolute; top: 0px; height: 16px; width: 16px; visibility: hidden;" value="&gt;" />
</form>
<xsl:if test="INPUT[51]/@VALUE = 0">
<div style="position: absolute; top: 947px; left: 300px; z-index: 92; background-image: url(IMAGES/HEAT1__5.PNG); line-height: 20px; height: 20px; width: 20px; visibility: hidden;" id="INPUT90"></div>
</xsl:if>
<xsl:if test="INPUT[51]/@VALUE != 0">
<div style="position: absolute; top: 947px; left: 300px; z-index: 92; background-image: url(IMAGES/HEAT1__5.PNG); line-height: 20px; height: 20px; width: 20px;" id="INPUT90"></div>
</xsl:if>
<form action="javascript:PostXML91()" style="position: absolute; top: 916px; left: 37px; z-index: 93; font-size: 13px;">
<input id="INPUT91" onfocus="document.getElementById('INPUT91x').style.visibility='visible';SetInputEdited(91, event);" onblur="InputFocused[90]=0" onkeydown="SetInputEdited(91, event);" class="mono" tabindex="18" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[52]/@NAME}" value="{INPUT[52]/@VALUE}" />
<input type="submit" id="INPUT91x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<xsl:if test="INPUT[54]/@VALUE = 0">
<div style="position: absolute; top: 945px; left: 100px; z-index: 95; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT93"></div>
</xsl:if>
<xsl:if test="INPUT[54]/@VALUE != 0">
<div style="position: absolute; top: 945px; left: 100px; z-index: 95; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT93"></div>
</xsl:if>
<form action="javascript:PostXML94()" style="position: absolute; top: 765px; left: 52px; z-index: 96; font-size: 13px;">
<input id="INPUT94" onfocus="document.getElementById('INPUT94x').style.visibility='visible';SetInputEdited(94, event);" onblur="InputFocused[93]=0" onkeydown="SetInputEdited(94, event);" class="mono" tabindex="20" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[55]/@NAME}" value="{INPUT[55]/@VALUE}" />
<input type="submit" id="INPUT94x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<xsl:if test="INPUT[57]/@VALUE = 0">
<div style="position: absolute; top: 731px; left: 115px; z-index: 98; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT96"></div>
</xsl:if>
<xsl:if test="INPUT[57]/@VALUE != 0">
<div style="position: absolute; top: 731px; left: 115px; z-index: 98; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT96"></div>
</xsl:if>
<form action="javascript:PostXML97()" style="position: absolute; top: 734px; left: 239px; z-index: 99; font-size: 13px;">
<input id="INPUT97" onfocus="document.getElementById('INPUT97x').style.visibility='visible';SetInputEdited(97, event);" onblur="InputFocused[96]=0" onkeydown="SetInputEdited(97, event);" class="mono" tabindex="22" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[58]/@NAME}" value="{INPUT[58]/@VALUE}" />
<input type="submit" id="INPUT97x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<xsl:if test="INPUT[60]/@VALUE = 0">
<div style="position: absolute; top: 683px; left: 225px; z-index: 101; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT99"></div>
</xsl:if>
<xsl:if test="INPUT[60]/@VALUE != 0">
<div style="position: absolute; top: 683px; left: 225px; z-index: 101; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT99"></div>
</xsl:if>
<xsl:if test="INPUT[61]/@VALUE != 0">
<div title="Zona aktiv" style="position: absolute; top: 737px; left: 303px; z-index: 102; background-image: url(IMAGES/PIR1_O_3.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT100"></div>
</xsl:if>
<xsl:if test="INPUT[61]/@VALUE = 0">
<div title="Zona aktiv" style="position: absolute; top: 737px; left: 303px; z-index: 102; background-image: url(IMAGES/PIR1_O_3.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT100"></div>
</xsl:if>
<xsl:if test="INPUT[62]/@VALUE != 0">
<div title="Zona aktiv" style="position: absolute; top: 833px; left: 48px; z-index: 103; background-image: url(IMAGES/PIR1_O_2.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT101"></div>
</xsl:if>
<xsl:if test="INPUT[62]/@VALUE = 0">
<div title="Zona aktiv" style="position: absolute; top: 833px; left: 48px; z-index: 103; background-image: url(IMAGES/PIR1_O_2.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT101"></div>
</xsl:if>
<xsl:if test="INPUT[63]/@VALUE != 0">
<div title="Zona aktiv" style="position: absolute; top: 1017px; left: 137px; z-index: 104; background-image: url(IMAGES/PIR1_O_3.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT102"></div>
</xsl:if>
<xsl:if test="INPUT[63]/@VALUE = 0">
<div title="Zona aktiv" style="position: absolute; top: 1017px; left: 137px; z-index: 104; background-image: url(IMAGES/PIR1_O_3.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT102"></div>
</xsl:if>
<xsl:if test="INPUT[64]/@VALUE != 0">
<div title="Zona aktiv" style="position: absolute; top: 863px; left: 300px; z-index: 105; background-image: url(IMAGES/PIR1_O_4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT103"></div>
</xsl:if>
<xsl:if test="INPUT[64]/@VALUE = 0">
<div title="Zona aktiv" style="position: absolute; top: 863px; left: 300px; z-index: 105; background-image: url(IMAGES/PIR1_O_4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT103"></div>
</xsl:if>
<xsl:if test="INPUT[65]/@VALUE != 0">
<div title="Zona aktiv" style="position: absolute; top: 924px; left: 300px; z-index: 106; background-image: url(IMAGES/PIR1_O_4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT104"></div>
</xsl:if>
<xsl:if test="INPUT[65]/@VALUE = 0">
<div title="Zona aktiv" style="position: absolute; top: 924px; left: 300px; z-index: 106; background-image: url(IMAGES/PIR1_O_4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT104"></div>
</xsl:if>
<xsl:if test="INPUT[66]/@VALUE != 0">
<div title="Zona aktiv" style="position: absolute; top: 774px; left: 300px; z-index: 107; background-image: url(IMAGES/PIR1_O_4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT105"></div>
</xsl:if>
<xsl:if test="INPUT[66]/@VALUE = 0">
<div title="Zona aktiv" style="position: absolute; top: 774px; left: 300px; z-index: 107; background-image: url(IMAGES/PIR1_O_4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT105"></div>
</xsl:if>
<xsl:if test="INPUT[67]/@VALUE != 0">
<div title="Zona aktiv" style="position: absolute; top: 963px; left: 166px; z-index: 108; background-image: url(IMAGES/PIR1_O_2.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT106"></div>
</xsl:if>
<xsl:if test="INPUT[67]/@VALUE = 0">
<div title="Zona aktiv" style="position: absolute; top: 963px; left: 166px; z-index: 108; background-image: url(IMAGES/PIR1_O_2.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT106"></div>
</xsl:if>
<div style="position: absolute; top: 630px; left: 310px; z-index: 109; font-weight: bold;">3</div>
<div style="position: absolute; top: 685px; left: 160px; z-index: 110; font-weight: bold;">1</div>
<div style="position: absolute; top: 890px; left: 140px; z-index: 111; font-weight: bold;">2</div>
<xsl:if test="INPUT[68]/@VALUE = 0">
<div title="Riasztó éles" style="position: absolute; top: 10px; left: 10px; z-index: 112; background-image: url(IMAGES/ALARM1_1.PNG); line-height: 32px; height: 32px; width: 32px; visibility: hidden;" id="INPUT107"></div>
</xsl:if>
<xsl:if test="INPUT[68]/@VALUE != 0">
<div title="Riasztó éles" style="position: absolute; top: 10px; left: 10px; z-index: 112; background-image: url(IMAGES/ALARM1_1.PNG); line-height: 32px; height: 32px; width: 32px;" id="INPUT107"></div>
</xsl:if>
<xsl:if test="INPUT[69]/@VALUE = 0">
<div title="Hosszú ideje elmentek otthonról" style="position: absolute; top: 10px; left: 50px; z-index: 113; background-image: url(IMAGES/ALARM1_2.PNG); line-height: 32px; height: 32px; width: 32px; visibility: hidden;" id="INPUT108"></div>
</xsl:if>
<xsl:if test="INPUT[69]/@VALUE != 0">
<div title="Hosszú ideje elmentek otthonról" style="position: absolute; top: 10px; left: 50px; z-index: 113; background-image: url(IMAGES/ALARM1_2.PNG); line-height: 32px; height: 32px; width: 32px;" id="INPUT108"></div>
</xsl:if>
<xsl:if test="INPUT[70]/@VALUE = 0">
<div title="Rövid ideje elmentek otthonról" style="position: absolute; top: 10px; left: 88px; z-index: 114; background-image: url(IMAGES/ALARM1_3.PNG); line-height: 32px; height: 32px; width: 32px; visibility: hidden;" id="INPUT109"></div>
</xsl:if>
<xsl:if test="INPUT[70]/@VALUE != 0">
<div title="Rövid ideje elmentek otthonról" style="position: absolute; top: 10px; left: 88px; z-index: 114; background-image: url(IMAGES/ALARM1_3.PNG); line-height: 32px; height: 32px; width: 32px;" id="INPUT109"></div>
</xsl:if>
<form style="position: absolute; top: 15px; left: 230px; z-index: 116;">
<xsl:if test="INPUT[72]/@VALUE = 0">
<input id="INPUT111h" type="hidden" name="{INPUT[72]/@NAME}" value="1" />
<div title="Szellőztető" id="INPUT111" class="imgsub" onclick="PostXML111()" style="background-image: url(IMAGES/FAN1_O_2.PNG); line-height: 24px; height: 24px; width: 24px;"></div>
</xsl:if>
<xsl:if test="INPUT[72]/@VALUE != 0">
<input id="INPUT111h" type="hidden" name="{INPUT[72]/@NAME}" value="0" />
<div title="Szellőztető" id="INPUT111" class="imgsub" onclick="PostXML111()" style="background-image: url(IMAGES/FAN1_O_1.PNG); line-height: 24px; height: 24px; width: 24px;"></div>
</xsl:if>
</form>
<form action="javascript:PostXML112()" style="position: absolute; top: 18px; left: 262px; z-index: 117; font-size: 13px;">
<input title="Kívánt szellőztetési szint" id="INPUT112" onfocus="document.getElementById('INPUT112x').style.visibility='visible';SetInputEdited(112, event);" onblur="InputFocused[111]=0" onkeydown="SetInputEdited(112, event);" class="mono" tabindex="10" type="text" style="width: 20px; background-color: #FFFFFF;" name="{INPUT[73]/@NAME}" value="{INPUT[73]/@VALUE}" />
<input type="submit" id="INPUT112x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<xsl:if test="INPUT[75]/@VALUE = 0">
<div title="Szellőztető hiba" style="position: absolute; top: 11px; left: 195px; z-index: 119; background-image: url(IMAGES/ALARM1_1.PNG); line-height: 32px; height: 32px; width: 32px; visibility: hidden;" id="INPUT114"></div>
</xsl:if>
<xsl:if test="INPUT[75]/@VALUE != 0">
<div title="Szellőztető hiba" style="position: absolute; top: 11px; left: 195px; z-index: 119; background-image: url(IMAGES/ALARM1_1.PNG); line-height: 32px; height: 32px; width: 32px;" id="INPUT114"></div>
</xsl:if>
<form action="javascript:PostXML115()" style="position: absolute; top: 904px; left: 245px; z-index: 120; font-size: 6px;">
<input id="INPUT115" onfocus="document.getElementById('INPUT115x').style.visibility='visible';SetInputEdited(115, event);" onblur="InputFocused[114]=0" onkeydown="SetInputEdited(115, event);" class="mono" tabindex="15" type="text" style="width: 24px; background-color: #FFFFFF;" name="{INPUT[76]/@NAME}" value="{INPUT[76]/@VALUE}" />
<input type="submit" id="INPUT115x" style="position: absolute; top: 0px; height: 13px; width: 13px; visibility: hidden;" value="&gt;" />
</form>
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
