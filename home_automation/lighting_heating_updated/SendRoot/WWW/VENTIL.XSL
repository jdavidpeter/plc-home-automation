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
Szellőztetés</title>
<script src="VENTIL.JS?U=1667205603" language="JavaScript" charset="utf-8" />
<style type="text/css">.mono {font-family: Verdana, Arial, FreeSans, sans-serif;}</style>
</head>
<body onload="GetXML('VENTIL.XML'); FunWatchDog();">
<xsl:if test="1667205603 != ACCESS/@UCID">
<xsl:attribute name="onload">
null;
</xsl:attribute>
<div id="cachewarning" style="text-align: left;"></div>
<script src="REFCLR.JS" language="JavaScript" charset="utf-8"></script>
</xsl:if>
<xsl:if test="1667205603 = ACCESS/@UCID">
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
Szellőztetés</span>
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
<input title="Beszívott levegő hőmérséklet" class="mono" tabindex="1" type="text" id="INPUT1" style="position: absolute; top: 98px; left: 15px; width: 49px; z-index: 8; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[1]/@VALUE}" name="{INPUT[1]/@NAME}" onfocus="SetInputEdited(1, event);" onblur="InputFocused[0]=0" onkeydown="SetInputEdited(1, event);"></input>
<input title="Kidobott levegő hőmérséklet" class="mono" tabindex="7" type="text" id="INPUT2" style="position: absolute; top: 138px; left: 15px; width: 49px; z-index: 10; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[2]/@VALUE}" name="{INPUT[2]/@NAME}" onfocus="SetInputEdited(2, event);" onblur="InputFocused[1]=0" onkeydown="SetInputEdited(2, event);"></input>
<input title="Controller board temperature" class="mono" tabindex="6" type="text" id="INPUT3" style="position: absolute; top: 433px; left: 230px; width: 49px; z-index: 11; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[3]/@VALUE}" name="{INPUT[3]/@NAME}" onfocus="SetInputEdited(3, event);" onblur="InputFocused[2]=0" onkeydown="SetInputEdited(3, event);"></input>
<input title="Szobába fújt levegő hőmérséklet" class="mono" tabindex="2" type="text" id="INPUT4" style="position: absolute; top: 98px; left: 182px; width: 49px; z-index: 14; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[4]/@VALUE}" name="{INPUT[4]/@NAME}" onfocus="SetInputEdited(4, event);" onblur="InputFocused[3]=0" onkeydown="SetInputEdited(4, event);"></input>
<input title="Szobából elszívott levegő hőmérséklet" class="mono" tabindex="12" type="text" id="INPUT5" style="position: absolute; top: 138px; left: 182px; width: 49px; z-index: 16; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[5]/@VALUE}" name="{INPUT[5]/@NAME}" onfocus="SetInputEdited(5, event);" onblur="InputFocused[4]=0" onkeydown="SetInputEdited(5, event);"></input>
<input title="Szobába fújt levegő hőmérséklet" class="mono" tabindex="4" type="text" id="INPUT6" style="position: absolute; top: 218px; left: 112px; width: 22px; z-index: 18; color: #0080FF; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[6]/@VALUE}" name="{INPUT[6]/@NAME}" onfocus="SetInputEdited(6, event);" onblur="InputFocused[5]=0" onkeydown="SetInputEdited(6, event);"></input>
<input title="Eltelt napok szűrőcsere óta" class="mono" tabindex="3" type="text" id="INPUT8" style="position: absolute; top: 15px; left: 295px; width: 22px; z-index: 21; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[8]/@VALUE}" name="{INPUT[8]/@NAME}" onfocus="SetInputEdited(8, event);" onblur="InputFocused[7]=0" onkeydown="SetInputEdited(8, event);"></input>
<input title="Szabályozott leveő hőmérséklet" class="mono" tabindex="5" type="text" id="INPUT9" style="position: absolute; top: 51px; left: 102px; width: 40px; z-index: 23; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[9]/@VALUE}" name="{INPUT[9]/@NAME}" onfocus="SetInputEdited(9, event);" onblur="InputFocused[8]=0" onkeydown="SetInputEdited(9, event);"></input>
<input title="Szellőztetési szint" class="mono" tabindex="8" type="text" id="INPUT13" style="position: absolute; top: 15px; left: 131px; width: 31px; z-index: 28; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[13]/@VALUE}" name="{INPUT[13]/@NAME}" onfocus="SetInputEdited(13, event);" onblur="InputFocused[12]=0" onkeydown="SetInputEdited(13, event);"></input>
<input title="Beszívó ventillátor fokozat" class="mono" tabindex="9" type="text" id="INPUT19" style="position: absolute; top: 57px; left: 51px; width: 22px; z-index: 35; color: #008000; background-color: #FFFFFF; font-weight: bold; text-align: center;" value="{INPUT[16]/@VALUE}" name="{INPUT[16]/@NAME}" onfocus="SetInputEdited(19, event);" onblur="InputFocused[18]=0" onkeydown="SetInputEdited(19, event);"></input>
<input title="Kifújó vetillátor fokozat" class="mono" tabindex="10" type="text" id="INPUT20" style="position: absolute; top: 172px; left: 51px; width: 22px; z-index: 36; color: #008000; background-color: #FFFFFF; font-weight: bold; text-align: center;" value="{INPUT[17]/@VALUE}" name="{INPUT[17]/@NAME}" onfocus="SetInputEdited(20, event);" onblur="InputFocused[19]=0" onkeydown="SetInputEdited(20, event);"></input>
</form>
<div style="position: absolute; top: 94px; left: 270px; z-index: 1;height: 68px; width: 68px; border: 1px solid #000000; background-color: #0000FF;"></div>
<div style="position: absolute; top: 133px; left: 75px; z-index: 2;height: 30px; width: 30px; border: 1px solid #FFFFFF; background-color: #3EA73A;"></div>
<div style="position: absolute; top: 94px; left: 75px; z-index: 3;height: 30px; width: 30px; border: 1px solid #FFFFFF; background-color: #3EA73A;"></div>
<div style="position: absolute; top: 133px; left: 144px; z-index: 4;height: 30px; width: 30px; border: 1px solid #FFFFFF; background-color: #0080FF;"></div>
<div style="position: absolute; top: 93px; left: 144px; z-index: 5;height: 30px; width: 30px; border: 1px solid #FFFFFF; background-color: #0080FF;"></div>
<div title="Ház" style="position: absolute; top: 80px; left: 113px; z-index: 6;height: 98px; width: 23px; border: 1px solid #FFC20E; background-color: #FF8000;"></div>
<div title="Beáramlő levegő" style="position: absolute; top: 94px; left: 75px; z-index: 7; background-image: url(IMAGES/ARROW1_3.PNG); line-height: 32px; height: 32px; width: 32px;"></div>
<div title="Kiáramló levegő" style="position: absolute; top: 133px; left: 75px; z-index: 9; background-image: url(IMAGES/ARROW1_2.PNG); line-height: 32px; height: 32px; width: 32px;"></div>
<div title="Szellőztető alaplap hőmérséklet" style="position: absolute; top: 435px; left: 10px; z-index: 12;">Szellőztető alaplap hőmérséklet</div>
<div title="Beáramlő levegő" style="position: absolute; top: 93px; left: 144px; z-index: 13; background-image: url(IMAGES/ARROW1_3.PNG); line-height: 32px; height: 32px; width: 32px;"></div>
<div title="Kiáramló levegő" style="position: absolute; top: 133px; left: 144px; z-index: 15; background-image: url(IMAGES/ARROW1_2.PNG); line-height: 32px; height: 32px; width: 32px;"></div>
<div title="%" style="position: absolute; top: 220px; left: 145px; z-index: 17;">%</div>
<xsl:if test="INPUT[7]/@VALUE = 0">
<div title="Légszűrő csere szükséges" style="position: absolute; top: 7px; left: 331px; z-index: 19; background-image: url(IMAGES/ALARM1_2.PNG); line-height: 32px; height: 32px; width: 32px; visibility: hidden;" id="INPUT7"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div title="Légszűrő csere szükséges" style="position: absolute; top: 7px; left: 331px; z-index: 19; background-image: url(IMAGES/ALARM1_2.PNG); line-height: 32px; height: 32px; width: 32px;" id="INPUT7"></div>
</xsl:if>
<div title="Szűrő csere" style="position: absolute; top: 18px; left: 171px; z-index: 20;">Utolsó szűrő csere</div>
<div title="Páratartalom" style="position: absolute; top: 220px; left: 13px; z-index: 22;">Páratartalom</div>
<div title="Páratartalom" style="position: absolute; top: 260px; left: 13px; z-index: 24;">Kívánt hőmérséklet</div>
<form action="javascript:PostXML10()" style="position: absolute; top: 255px; left: 150px; z-index: 25; font-size: 13px;">
<input title="Kívánt szellőztetési hőmérséklet" id="INPUT10" onfocus="document.getElementById('INPUT10x').style.visibility='visible';SetInputEdited(10, event);" onblur="InputFocused[9]=0" onkeydown="SetInputEdited(10, event);" class="mono" tabindex="11" type="text" style="width: 22px; background-color: #FFFFFF;" name="{INPUT[10]/@NAME}" value="{INPUT[10]/@VALUE}" />
<input type="submit" id="INPUT10x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<form style="position: absolute; top: 11px; left: 49px; z-index: 26;">
<xsl:if test="INPUT[11]/@VALUE = 0">
<input id="INPUT11h" type="hidden" name="{INPUT[11]/@NAME}" value="1" />
<div title="Szellőztető" id="INPUT11" class="imgsub" onclick="PostXML11()" style="background-image: url(IMAGES/FAN1_O_2.PNG); line-height: 24px; height: 24px; width: 24px;"></div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<input id="INPUT11h" type="hidden" name="{INPUT[11]/@NAME}" value="0" />
<div title="Szellőztető" id="INPUT11" class="imgsub" onclick="PostXML11()" style="background-image: url(IMAGES/FAN1_O_1.PNG); line-height: 24px; height: 24px; width: 24px;"></div>
</xsl:if>
</form>
<form action="javascript:PostXML12()" style="position: absolute; top: 14px; left: 81px; z-index: 27; font-size: 13px;">
<input title="Kívánt szellőztetési szint" id="INPUT12" onfocus="document.getElementById('INPUT12x').style.visibility='visible';SetInputEdited(12, event);" onblur="InputFocused[11]=0" onkeydown="SetInputEdited(12, event);" class="mono" tabindex="13" type="text" style="width: 22px; background-color: #FFFFFF;" name="{INPUT[12]/@NAME}" value="{INPUT[12]/@VALUE}" />
<input type="submit" id="INPUT12x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div title="Szellőztető hiba" style="position: absolute; top: 7px; left: 14px; z-index: 29; background-image: url(IMAGES/ALARM1_1.PNG); line-height: 32px; height: 32px; width: 32px; visibility: hidden;" id="INPUT14"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div title="Szellőztető hiba" style="position: absolute; top: 7px; left: 14px; z-index: 29; background-image: url(IMAGES/ALARM1_1.PNG); line-height: 32px; height: 32px; width: 32px;" id="INPUT14"></div>
</xsl:if>
<xsl:if test="INPUT[15]/@VALUE != 0">
<div title="Bypass kikapcsolva" style="position: absolute; top: 97px; left: 273px; z-index: 30; background-image: url(IMAGES/SW7D18_1.PNG); line-height: 64px; height: 64px; width: 64px; visibility: hidden;" id="INPUT15"></div>
</xsl:if>
<xsl:if test="INPUT[15]/@VALUE = 0">
<div title="Bypass kikapcsolva" style="position: absolute; top: 97px; left: 273px; z-index: 30; background-image: url(IMAGES/SW7D18_1.PNG); line-height: 64px; height: 64px; width: 64px;" id="INPUT15"></div>
</xsl:if>
<div style="position: absolute; top: 170px; left: 279px; z-index: 31; font-weight: bold;">Bypass</div>
<xsl:if test="INPUT[15]/@VALUE = 0">
<div title="Bypass bekapcsolva" style="position: absolute; top: 97px; left: 273px; z-index: 32; background-image: url(IMAGES/SW747C_1.PNG); line-height: 64px; height: 64px; width: 64px; visibility: hidden;" id="INPUT16"></div>
</xsl:if>
<xsl:if test="INPUT[15]/@VALUE != 0">
<div title="Bypass bekapcsolva" style="position: absolute; top: 97px; left: 273px; z-index: 32; background-image: url(IMAGES/SW747C_1.PNG); line-height: 64px; height: 64px; width: 64px;" id="INPUT16"></div>
</xsl:if>
<form style="position: absolute; top: 56px; left: 19px; z-index: 33;">
<xsl:if test="INPUT[16]/@VALUE = 0">
<input id="INPUT17h" type="hidden" name="{INPUT[16]/@NAME}" value="1" />
<div title="Beszívó ventillátor" id="INPUT17" class="imgsub" onclick="PostXML17()" style="background-image: url(IMAGES/FAN1_O_2.PNG); line-height: 24px; height: 24px; width: 24px;"></div>
</xsl:if>
<xsl:if test="INPUT[16]/@VALUE != 0">
<input id="INPUT17h" type="hidden" name="{INPUT[16]/@NAME}" value="0" />
<div title="Beszívó ventillátor" id="INPUT17" class="imgsub" onclick="PostXML17()" style="background-image: url(IMAGES/FAN1_O_1.PNG); line-height: 24px; height: 24px; width: 24px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 169px; left: 19px; z-index: 34;">
<xsl:if test="INPUT[17]/@VALUE = 0">
<input id="INPUT18h" type="hidden" name="{INPUT[17]/@NAME}" value="1" />
<div title="Kifújó ventillátor" id="INPUT18" class="imgsub" onclick="PostXML18()" style="background-image: url(IMAGES/FAN1_O_2.PNG); line-height: 24px; height: 24px; width: 24px;"></div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<input id="INPUT18h" type="hidden" name="{INPUT[17]/@NAME}" value="0" />
<div title="Kifújó ventillátor" id="INPUT18" class="imgsub" onclick="PostXML18()" style="background-image: url(IMAGES/FAN1_O_1.PNG); line-height: 24px; height: 24px; width: 24px;"></div>
</xsl:if>
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
