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
Öntözés</title>
<script src="WATERING.JS?U=1718974848" language="JavaScript" charset="utf-8" />
<style type="text/css">.mono {font-family: Verdana, Arial, FreeSans, sans-serif;}</style>
</head>
<body onload="GetXML('WATERING.XML'); FunWatchDog();">
<xsl:if test="1718974848 != ACCESS/@UCID">
<xsl:attribute name="onload">
null;
</xsl:attribute>
<div id="cachewarning" style="text-align: left;"></div>
<script src="REFCLR.JS" language="JavaScript" charset="utf-8"></script>
</xsl:if>
<xsl:if test="1718974848 = ACCESS/@UCID">
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
Öntözés</span>
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
<a href="HEATING.XML">Fûtés</a>
<br />
<a href="VENTIL.XML">Szellõztetés</a>
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
<input title="Idõ" class="mono" tabindex="14" type="text" id="INPUT19" style="position: absolute; top: 10px; left: 10px; width: 76px; z-index: 38; background-color: #FFFFFF;" value="{INPUT[12]/@VALUE}" name="{INPUT[12]/@NAME}" onfocus="SetInputEdited(19, event);" onblur="InputFocused[18]=0" onkeydown="SetInputEdited(19, event);"></input>
<input title="Idõ" class="mono" tabindex="15" type="text" id="INPUT20" style="position: absolute; top: 201px; left: 185px; width: 76px; z-index: 39; background-color: #FFFFFF;" value="{INPUT[13]/@VALUE}" name="{INPUT[13]/@NAME}" onfocus="SetInputEdited(20, event);" onblur="InputFocused[19]=0" onkeydown="SetInputEdited(20, event);"></input>
<input title="Idõ" class="mono" tabindex="17" type="text" id="INPUT21" style="position: absolute; top: 200px; left: 270px; width: 76px; z-index: 40; background-color: #FFFFFF;" value="{INPUT[14]/@VALUE}" name="{INPUT[14]/@NAME}" onfocus="SetInputEdited(21, event);" onblur="InputFocused[20]=0" onkeydown="SetInputEdited(21, event);"></input>
<input title="Idõ" class="mono" tabindex="19" type="text" id="INPUT22" style="position: absolute; top: 201px; left: 101px; width: 76px; z-index: 41; background-color: #FFFFFF;" value="{INPUT[15]/@VALUE}" name="{INPUT[15]/@NAME}" onfocus="SetInputEdited(22, event);" onblur="InputFocused[21]=0" onkeydown="SetInputEdited(22, event);"></input>
<input title="Idõ" class="mono" tabindex="21" type="text" id="INPUT23" style="position: absolute; top: 171px; left: 185px; width: 76px; z-index: 42; background-color: #FFFFFF;" value="{INPUT[16]/@VALUE}" name="{INPUT[16]/@NAME}" onfocus="SetInputEdited(23, event);" onblur="InputFocused[22]=0" onkeydown="SetInputEdited(23, event);"></input>
<input title="Idõ" class="mono" tabindex="23" type="text" id="INPUT24" style="position: absolute; top: 170px; left: 270px; width: 76px; z-index: 43; background-color: #FFFFFF;" value="{INPUT[17]/@VALUE}" name="{INPUT[17]/@NAME}" onfocus="SetInputEdited(24, event);" onblur="InputFocused[23]=0" onkeydown="SetInputEdited(24, event);"></input>
<input title="Idõ" class="mono" tabindex="25" type="text" id="INPUT25" style="position: absolute; top: 171px; left: 101px; width: 76px; z-index: 44; background-color: #FFFFFF;" value="{INPUT[18]/@VALUE}" name="{INPUT[18]/@NAME}" onfocus="SetInputEdited(25, event);" onblur="InputFocused[24]=0" onkeydown="SetInputEdited(25, event);"></input>
<input title="Idõ" class="mono" tabindex="16" type="text" id="INPUT30" style="position: absolute; top: 301px; left: 185px; width: 76px; z-index: 54; background-color: #FFFFFF;" value="{INPUT[23]/@VALUE}" name="{INPUT[23]/@NAME}" onfocus="SetInputEdited(30, event);" onblur="InputFocused[29]=0" onkeydown="SetInputEdited(30, event);"></input>
<input title="Idõ" class="mono" tabindex="18" type="text" id="INPUT31" style="position: absolute; top: 300px; left: 270px; width: 76px; z-index: 55; background-color: #FFFFFF;" value="{INPUT[24]/@VALUE}" name="{INPUT[24]/@NAME}" onfocus="SetInputEdited(31, event);" onblur="InputFocused[30]=0" onkeydown="SetInputEdited(31, event);"></input>
<input title="Idõ" class="mono" tabindex="20" type="text" id="INPUT32" style="position: absolute; top: 301px; left: 101px; width: 76px; z-index: 56; background-color: #FFFFFF;" value="{INPUT[25]/@VALUE}" name="{INPUT[25]/@NAME}" onfocus="SetInputEdited(32, event);" onblur="InputFocused[31]=0" onkeydown="SetInputEdited(32, event);"></input>
<input title="Idõ" class="mono" tabindex="22" type="text" id="INPUT33" style="position: absolute; top: 271px; left: 185px; width: 76px; z-index: 57; background-color: #FFFFFF;" value="{INPUT[26]/@VALUE}" name="{INPUT[26]/@NAME}" onfocus="SetInputEdited(33, event);" onblur="InputFocused[32]=0" onkeydown="SetInputEdited(33, event);"></input>
<input title="Idõ" class="mono" tabindex="24" type="text" id="INPUT34" style="position: absolute; top: 270px; left: 270px; width: 76px; z-index: 58; background-color: #FFFFFF;" value="{INPUT[27]/@VALUE}" name="{INPUT[27]/@NAME}" onfocus="SetInputEdited(34, event);" onblur="InputFocused[33]=0" onkeydown="SetInputEdited(34, event);"></input>
<input title="Idõ" class="mono" tabindex="27" type="text" id="INPUT35" style="position: absolute; top: 271px; left: 101px; width: 76px; z-index: 59; background-color: #FFFFFF;" value="{INPUT[28]/@VALUE}" name="{INPUT[28]/@NAME}" onfocus="SetInputEdited(35, event);" onblur="InputFocused[34]=0" onkeydown="SetInputEdited(35, event);"></input>
<input title="Elmúlt 3 napi átlaghõmérséklet [°C]" class="mono" tabindex="26" type="text" id="INPUT41" style="position: absolute; top: 786px; left: 276px; width: 58px; z-index: 73; background-color: #FFFFFF;" value="{INPUT[34]/@VALUE}" name="{INPUT[34]/@NAME}" onfocus="SetInputEdited(41, event);" onblur="InputFocused[40]=0" onkeydown="SetInputEdited(41, event);"></input>
</form>
<form action="javascript:PostXML1()" style="position: absolute; top: 45px; left: 159px; z-index: 1; font-size: 13px;">
<input title="Öntözés kezdete" id="INPUT1" onfocus="document.getElementById('INPUT1x').style.visibility='visible';SetInputEdited(1, event);" onblur="InputFocused[0]=0" onkeydown="SetInputEdited(1, event);" class="mono" tabindex="1" type="text" style="width: 49px; background-color: #FFFFFF;" name="{INPUT[1]/@NAME}" value="{INPUT[1]/@VALUE}" />
<input type="submit" id="INPUT1x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div title="Öntözés kezdete" style="position: absolute; top: 48px; left: 10px; z-index: 2; font-weight: bold;">1. Öntözés kezdete</div>
<div title="Vetett fû" style="position: absolute; top: 110px; left: 185px; z-index: 3; font-weight: bold;">Vetett fû</div>
<div title="Gyepszõnyeg" style="position: absolute; top: 109px; left: 267px; z-index: 4; font-weight: bold;">Gyepszõnyeg</div>
<div title="Bokrok" style="position: absolute; top: 110px; left: 101px; z-index: 5; font-weight: bold;">Bokrok</div>
<form action="javascript:PostXML2()" style="position: absolute; top: 141px; left: 185px; z-index: 6; font-size: 13px;">
<input title="Vetett fû öntözési idõ" id="INPUT2" onfocus="document.getElementById('INPUT2x').style.visibility='visible';SetInputEdited(2, event);" onblur="InputFocused[1]=0" onkeydown="SetInputEdited(2, event);" class="mono" tabindex="3" type="text" style="width: 49px; background-color: #FFFFFF;" name="{INPUT[2]/@NAME}" value="{INPUT[2]/@VALUE}" />
<input type="submit" id="INPUT2x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<form action="javascript:PostXML3()" style="position: absolute; top: 141px; left: 270px; z-index: 7; font-size: 13px;">
<input title="Gyepszõnyeg öntözési idõ" id="INPUT3" onfocus="document.getElementById('INPUT3x').style.visibility='visible';SetInputEdited(3, event);" onblur="InputFocused[2]=0" onkeydown="SetInputEdited(3, event);" class="mono" tabindex="5" type="text" style="width: 49px; background-color: #FFFFFF;" name="{INPUT[3]/@NAME}" value="{INPUT[3]/@VALUE}" />
<input type="submit" id="INPUT3x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<form action="javascript:PostXML4()" style="position: absolute; top: 142px; left: 101px; z-index: 8; font-size: 13px;">
<input title="Bokor öntözési idõ" id="INPUT4" onfocus="document.getElementById('INPUT4x').style.visibility='visible';SetInputEdited(4, event);" onblur="InputFocused[3]=0" onkeydown="SetInputEdited(4, event);" class="mono" tabindex="7" type="text" style="width: 49px; background-color: #FFFFFF;" name="{INPUT[4]/@NAME}" value="{INPUT[4]/@VALUE}" />
<input type="submit" id="INPUT4x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div style="position: absolute; top: 439px; left: 22px; z-index: 9;height: 68px; width: 68px; border: 1px solid #000000; background-color: #0000FF;"></div>
<xsl:if test="INPUT[5]/@VALUE = 0">
<div style="position: absolute; top: 442px; left: 25px; z-index: 10;">
<div onclick="PostXML5()" title="Hõmérséklet alapú öntözési idõ" id="INPUT5" class="imgsub" style="background-image: url(IMAGES/SW747C_1.PNG); height: 64px; width: 64px; line-height: 64px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<div style="position: absolute; top: 442px; left: 25px; z-index: 10;">
<div onclick="PostXML5()" title="Hõmérséklet alapú öntözési idõ" id="INPUT5" class="imgsub" style="background-image: url(IMAGES/SW747C_1.PNG); height: 64px; width: 64px; line-height: 64px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<div style="position: absolute; top: 442px; left: 25px; z-index: 11;">
<div onclick="PostXML6()" title="Hõmérséklet alapú öntözési idõ" id="INPUT6" class="imgsub" style="background-image: url(IMAGES/SW7D18_1.PNG); height: 64px; width: 64px; line-height: 64px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE = 0">
<div style="position: absolute; top: 442px; left: 25px; z-index: 11;">
<div onclick="PostXML6()" title="Hõmérséklet alapú öntözési idõ" id="INPUT6" class="imgsub" style="background-image: url(IMAGES/SW7D18_1.PNG); height: 64px; width: 64px; line-height: 64px;"></div>
</div>
</xsl:if>
<div title="Hõmérséklet alapú" style="position: absolute; top: 515px; left: 13px; z-index: 12; font-weight: bold;">Hõmérséklet</div>
<div title="Hõmérséklet alapú" style="position: absolute; top: 532px; left: 37px; z-index: 13; font-weight: bold;">Alapú</div>
<div style="position: absolute; top: 334px; left: 187px; z-index: 14;height: 68px; width: 68px; border: 1px solid #000000; background-color: #0000FF;"></div>
<xsl:if test="INPUT[6]/@VALUE = 0">
<div style="position: absolute; top: 337px; left: 190px; z-index: 15;">
<div onclick="PostXML7()" id="INPUT7" class="imgsub" style="background-image: url(IMAGES/SW747C_1.PNG); height: 64px; width: 64px; line-height: 64px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div style="position: absolute; top: 337px; left: 190px; z-index: 15;">
<div onclick="PostXML7()" id="INPUT7" class="imgsub" style="background-image: url(IMAGES/SW747C_1.PNG); height: 64px; width: 64px; line-height: 64px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div style="position: absolute; top: 337px; left: 190px; z-index: 16;">
<div onclick="PostXML8()" id="INPUT8" class="imgsub" style="background-image: url(IMAGES/SW7D18_1.PNG); height: 64px; width: 64px; line-height: 64px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE = 0">
<div style="position: absolute; top: 337px; left: 190px; z-index: 16;">
<div onclick="PostXML8()" id="INPUT8" class="imgsub" style="background-image: url(IMAGES/SW7D18_1.PNG); height: 64px; width: 64px; line-height: 64px;"></div>
</div>
</xsl:if>
<div style="position: absolute; top: 334px; left: 272px; z-index: 17;height: 68px; width: 68px; border: 1px solid #000000; background-color: #0000FF;"></div>
<xsl:if test="INPUT[7]/@VALUE = 0">
<div style="position: absolute; top: 337px; left: 275px; z-index: 18;">
<div onclick="PostXML9()" id="INPUT9" class="imgsub" style="background-image: url(IMAGES/SW747C_1.PNG); height: 64px; width: 64px; line-height: 64px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div style="position: absolute; top: 337px; left: 275px; z-index: 18;">
<div onclick="PostXML9()" id="INPUT9" class="imgsub" style="background-image: url(IMAGES/SW747C_1.PNG); height: 64px; width: 64px; line-height: 64px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div style="position: absolute; top: 337px; left: 275px; z-index: 19;">
<div onclick="PostXML10()" id="INPUT10" class="imgsub" style="background-image: url(IMAGES/SW7D18_1.PNG); height: 64px; width: 64px; line-height: 64px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE = 0">
<div style="position: absolute; top: 337px; left: 275px; z-index: 19;">
<div onclick="PostXML10()" id="INPUT10" class="imgsub" style="background-image: url(IMAGES/SW7D18_1.PNG); height: 64px; width: 64px; line-height: 64px;"></div>
</div>
</xsl:if>
<div style="position: absolute; top: 335px; left: 103px; z-index: 20;height: 68px; width: 68px; border: 1px solid #000000; background-color: #0000FF;"></div>
<xsl:if test="INPUT[8]/@VALUE = 0">
<div style="position: absolute; top: 338px; left: 106px; z-index: 21;">
<div onclick="PostXML11()" id="INPUT11" class="imgsub" style="background-image: url(IMAGES/SW747C_1.PNG); height: 64px; width: 64px; line-height: 64px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<div style="position: absolute; top: 338px; left: 106px; z-index: 21;">
<div onclick="PostXML11()" id="INPUT11" class="imgsub" style="background-image: url(IMAGES/SW747C_1.PNG); height: 64px; width: 64px; line-height: 64px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<div style="position: absolute; top: 338px; left: 106px; z-index: 22;">
<div onclick="PostXML12()" id="INPUT12" class="imgsub" style="background-image: url(IMAGES/SW7D18_1.PNG); height: 64px; width: 64px; line-height: 64px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE = 0">
<div style="position: absolute; top: 338px; left: 106px; z-index: 22;">
<div onclick="PostXML12()" id="INPUT12" class="imgsub" style="background-image: url(IMAGES/SW7D18_1.PNG); height: 64px; width: 64px; line-height: 64px;"></div>
</div>
</xsl:if>
<div title="Ömtözési idõ" style="position: absolute; top: 135px; left: 1px; z-index: 23; font-weight: bold;">1. Öntözési</div>
<div title="Ömtözési idõ" style="position: absolute; top: 153px; left: 32px; z-index: 24; font-weight: bold;">idõ</div>
<div title="Állapot" style="position: absolute; top: 361px; left: 19px; z-index: 25; font-weight: bold;">Állapot</div>
<div style="position: absolute; top: 10px; left: 284px; z-index: 26;height: 68px; width: 68px; border: 1px solid #000000; background-color: #FF0000;"></div>
<xsl:if test="INPUT[9]/@VALUE = 0">
<div style="position: absolute; top: 13px; left: 287px; z-index: 27;">
<div onclick="PostXML13()" id="INPUT13" class="imgsub" style="background-image: url(IMAGES/SW747C_1.PNG); height: 64px; width: 64px; line-height: 64px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div style="position: absolute; top: 13px; left: 287px; z-index: 27;">
<div onclick="PostXML13()" id="INPUT13" class="imgsub" style="background-image: url(IMAGES/SW747C_1.PNG); height: 64px; width: 64px; line-height: 64px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div style="position: absolute; top: 13px; left: 287px; z-index: 28;">
<div onclick="PostXML14()" id="INPUT14" class="imgsub" style="background-image: url(IMAGES/SW7D18_1.PNG); height: 64px; width: 64px; line-height: 64px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE = 0">
<div style="position: absolute; top: 13px; left: 287px; z-index: 28;">
<div onclick="PostXML14()" id="INPUT14" class="imgsub" style="background-image: url(IMAGES/SW7D18_1.PNG); height: 64px; width: 64px; line-height: 64px;"></div>
</div>
</xsl:if>
<div style="position: absolute; top: 439px; left: 270px; z-index: 29;height: 68px; width: 68px; border: 1px solid #000000; background-color: #22B14C;"></div>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div title="Esõ" style="position: absolute; top: 442px; left: 273px; z-index: 30; background-image: url(IMAGES/SW7D18_1.PNG); line-height: 64px; height: 64px; width: 64px; visibility: hidden;" id="INPUT15"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div title="Esõ" style="position: absolute; top: 442px; left: 273px; z-index: 30; background-image: url(IMAGES/SW7D18_1.PNG); line-height: 64px; height: 64px; width: 64px;" id="INPUT15"></div>
</xsl:if>
<div style="position: absolute; top: 515px; left: 259px; z-index: 31; font-weight: bold;">Esõ szenzor</div>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div title="Esõ" style="position: absolute; top: 442px; left: 273px; z-index: 32; background-image: url(IMAGES/SW747C_1.PNG); line-height: 64px; height: 64px; width: 64px; visibility: hidden;" id="INPUT16"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div title="Esõ" style="position: absolute; top: 442px; left: 273px; z-index: 32; background-image: url(IMAGES/SW747C_1.PNG); line-height: 64px; height: 64px; width: 64px;" id="INPUT16"></div>
</xsl:if>
<div style="position: absolute; top: 439px; left: 142px; z-index: 33;height: 68px; width: 68px; border: 1px solid #000000; background-color: #0000FF;"></div>
<xsl:if test="INPUT[11]/@VALUE = 0">
<div style="position: absolute; top: 442px; left: 145px; z-index: 34;">
<div onclick="PostXML17()" title="Esõ alapú öntözésvezérlés" id="INPUT17" class="imgsub" style="background-image: url(IMAGES/SW747C_1.PNG); height: 64px; width: 64px; line-height: 64px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div style="position: absolute; top: 442px; left: 145px; z-index: 34;">
<div onclick="PostXML17()" title="Esõ alapú öntözésvezérlés" id="INPUT17" class="imgsub" style="background-image: url(IMAGES/SW747C_1.PNG); height: 64px; width: 64px; line-height: 64px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div style="position: absolute; top: 442px; left: 145px; z-index: 35;">
<div onclick="PostXML18()" title="Esõ alapú öntözésvezérlés" id="INPUT18" class="imgsub" style="background-image: url(IMAGES/SW7D18_1.PNG); height: 64px; width: 64px; line-height: 64px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE = 0">
<div style="position: absolute; top: 442px; left: 145px; z-index: 35;">
<div onclick="PostXML18()" title="Esõ alapú öntözésvezérlés" id="INPUT18" class="imgsub" style="background-image: url(IMAGES/SW7D18_1.PNG); height: 64px; width: 64px; line-height: 64px;"></div>
</div>
</xsl:if>
<div title="Esõ alapú vezérlés" style="position: absolute; top: 515px; left: 165px; z-index: 36; font-weight: bold;">Esõ</div>
<div title="Esõ alapú vezérlés" style="position: absolute; top: 532px; left: 157px; z-index: 37; font-weight: bold;">Alapú</div>
<div title="Ömtözési idõ kezdete" style="position: absolute; top: 175px; left: 1px; z-index: 45; font-weight: bold;">1. Kezdet</div>
<div title="Ömtözési idõ befejezése" style="position: absolute; top: 205px; left: 1px; z-index: 46; font-weight: bold;">1. Befejezés</div>
<form action="javascript:PostXML26()" style="position: absolute; top: 75px; left: 159px; z-index: 47; font-size: 13px;">
<input title="Öntözés kezdete" id="INPUT26" onfocus="document.getElementById('INPUT26x').style.visibility='visible';SetInputEdited(26, event);" onblur="InputFocused[25]=0" onkeydown="SetInputEdited(26, event);" class="mono" tabindex="2" type="text" style="width: 49px; background-color: #FFFFFF;" name="{INPUT[19]/@NAME}" value="{INPUT[19]/@VALUE}" />
<input type="submit" id="INPUT26x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div title="Öntözés kezdete" style="position: absolute; top: 78px; left: 10px; z-index: 48; font-weight: bold;">2. Öntözés kezdete</div>
<form action="javascript:PostXML27()" style="position: absolute; top: 241px; left: 185px; z-index: 49; font-size: 13px;">
<input title="Vetett fû öntözési idõ" id="INPUT27" onfocus="document.getElementById('INPUT27x').style.visibility='visible';SetInputEdited(27, event);" onblur="InputFocused[26]=0" onkeydown="SetInputEdited(27, event);" class="mono" tabindex="4" type="text" style="width: 49px; background-color: #FFFFFF;" name="{INPUT[20]/@NAME}" value="{INPUT[20]/@VALUE}" />
<input type="submit" id="INPUT27x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<form action="javascript:PostXML28()" style="position: absolute; top: 241px; left: 270px; z-index: 50; font-size: 13px;">
<input title="Gyepszõnyeg öntözési idõ" id="INPUT28" onfocus="document.getElementById('INPUT28x').style.visibility='visible';SetInputEdited(28, event);" onblur="InputFocused[27]=0" onkeydown="SetInputEdited(28, event);" class="mono" tabindex="6" type="text" style="width: 49px; background-color: #FFFFFF;" name="{INPUT[21]/@NAME}" value="{INPUT[21]/@VALUE}" />
<input type="submit" id="INPUT28x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<form action="javascript:PostXML29()" style="position: absolute; top: 242px; left: 101px; z-index: 51; font-size: 13px;">
<input title="Bokor öntözési idõ" id="INPUT29" onfocus="document.getElementById('INPUT29x').style.visibility='visible';SetInputEdited(29, event);" onblur="InputFocused[28]=0" onkeydown="SetInputEdited(29, event);" class="mono" tabindex="8" type="text" style="width: 49px; background-color: #FFFFFF;" name="{INPUT[22]/@NAME}" value="{INPUT[22]/@VALUE}" />
<input type="submit" id="INPUT29x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div title="Ömtözési idõ" style="position: absolute; top: 235px; left: 1px; z-index: 52; font-weight: bold;">2. Öntözési</div>
<div title="Ömtözési idõ" style="position: absolute; top: 253px; left: 32px; z-index: 53; font-weight: bold;">idõ</div>
<div title="Ömtözési idõ kezdete" style="position: absolute; top: 275px; left: 1px; z-index: 60; font-weight: bold;">2. Kezdet</div>
<div title="Ömtözési idõ befejezése" style="position: absolute; top: 305px; left: 1px; z-index: 61; font-weight: bold;">2. Befejezés</div>
<form action="javascript:PostXML36()" style="position: absolute; top: 587px; left: 278px; z-index: 62; font-size: 13px;">
<input title="Minumum öntözési hõmérséklet" id="INPUT36" onfocus="document.getElementById('INPUT36x').style.visibility='visible';SetInputEdited(36, event);" onblur="InputFocused[35]=0" onkeydown="SetInputEdited(36, event);" class="mono" tabindex="9" type="text" style="width: 49px; background-color: #FFFFFF;" name="{INPUT[29]/@NAME}" value="{INPUT[29]/@VALUE}" />
<input type="submit" id="INPUT36x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<form action="javascript:PostXML37()" style="position: absolute; top: 617px; left: 278px; z-index: 63; font-size: 13px;">
<input title="Vetett fû offset [s]" id="INPUT37" onfocus="document.getElementById('INPUT37x').style.visibility='visible';SetInputEdited(37, event);" onblur="InputFocused[36]=0" onkeydown="SetInputEdited(37, event);" class="mono" tabindex="10" type="text" style="width: 49px; background-color: #FFFFFF;" name="{INPUT[30]/@NAME}" value="{INPUT[30]/@VALUE}" />
<input type="submit" id="INPUT37x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<form action="javascript:PostXML38()" style="position: absolute; top: 647px; left: 278px; z-index: 64; font-size: 13px;">
<input title="Vetett fû hõmérséklet faktor [s/°C]" id="INPUT38" onfocus="document.getElementById('INPUT38x').style.visibility='visible';SetInputEdited(38, event);" onblur="InputFocused[37]=0" onkeydown="SetInputEdited(38, event);" class="mono" tabindex="11" type="text" style="width: 49px; background-color: #FFFFFF;" name="{INPUT[31]/@NAME}" value="{INPUT[31]/@VALUE}" />
<input type="submit" id="INPUT38x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div title="Minumum öntözési hõmérséklet" style="position: absolute; top: 590px; left: 6px; z-index: 65; font-weight: bold;">Minumum öntözési hõmérséklet [°C]</div>
<div title="Vetett fû offset [s]" style="position: absolute; top: 620px; left: 6px; z-index: 66; font-weight: bold;">Vetett fû offset [s]</div>
<div title="Vetett fû hõmérséklet faktor [s/°C]" style="position: absolute; top: 650px; left: 6px; z-index: 67; font-weight: bold;">Vetett fû hõmérséklet faktor [s/°C]</div>
<div title="Gyepszõnyeg offset [s]" style="position: absolute; top: 680px; left: 6px; z-index: 68; font-weight: bold;">Gyepszõnyeg offset [s]</div>
<div title="Gyepszõnyeg hõmérséklet faktor [s/°C]" style="position: absolute; top: 710px; left: 6px; z-index: 69; font-weight: bold;">Gyepszõnyeg</div>
<form action="javascript:PostXML39()" style="position: absolute; top: 677px; left: 278px; z-index: 70; font-size: 13px;">
<input title="Gyepszõnyeg offset [s]" id="INPUT39" onfocus="document.getElementById('INPUT39x').style.visibility='visible';SetInputEdited(39, event);" onblur="InputFocused[38]=0" onkeydown="SetInputEdited(39, event);" class="mono" tabindex="12" type="text" style="width: 49px; background-color: #FFFFFF;" name="{INPUT[32]/@NAME}" value="{INPUT[32]/@VALUE}" />
<input type="submit" id="INPUT39x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<form action="javascript:PostXML40()" style="position: absolute; top: 717px; left: 278px; z-index: 71; font-size: 13px;">
<input title="Gyepszõnyeg hõmérséklet faktor [s/°C]" id="INPUT40" onfocus="document.getElementById('INPUT40x').style.visibility='visible';SetInputEdited(40, event);" onblur="InputFocused[39]=0" onkeydown="SetInputEdited(40, event);" class="mono" tabindex="13" type="text" style="width: 49px; background-color: #FFFFFF;" name="{INPUT[33]/@NAME}" value="{INPUT[33]/@VALUE}" />
<input type="submit" id="INPUT40x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div title="Gyepszõnyeg hõmérséklet faktor [s/°C]" style="position: absolute; top: 730px; left: 6px; z-index: 72; font-weight: bold;">hõmérséklet faktor [s/°C]</div>
<div title="Elmúlt 3 napi átlaghõmérséklet [°C]" style="position: absolute; top: 790px; left: 5px; z-index: 74; font-weight: bold;">Elmúlt 3 napi átlaghõmérséklet [°C]</div>
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
