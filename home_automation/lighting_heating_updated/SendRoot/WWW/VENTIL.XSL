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
<script src="VENTIL.JS?U=1649619556" language="JavaScript" charset="utf-8" />
<style type="text/css">.mono {font-family: Verdana, Arial, FreeSans, sans-serif;}</style>
</head>
<body onload="GetXML('VENTIL.XML'); FunWatchDog();">
<xsl:if test="1649619556 != ACCESS/@UCID">
<xsl:attribute name="onload">
null;
</xsl:attribute>
<div id="cachewarning" style="text-align: left;"></div>
<script src="REFCLR.JS" language="JavaScript" charset="utf-8"></script>
</xsl:if>
<xsl:if test="1649619556 = ACCESS/@UCID">
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
<input title="Beszívott levegő hőmérséklet" class="mono" tabindex="1" type="text" id="INPUT1" style="position: absolute; top: 98px; left: 15px; width: 49px; z-index: 7; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[1]/@VALUE}" name="{INPUT[1]/@NAME}" onfocus="SetInputEdited(1, event);" onblur="InputFocused[0]=0" onkeydown="SetInputEdited(1, event);"></input>
<input title="Kidobott levegő hőmérséklet" class="mono" tabindex="8" type="text" id="INPUT2" style="position: absolute; top: 138px; left: 15px; width: 49px; z-index: 9; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[2]/@VALUE}" name="{INPUT[2]/@NAME}" onfocus="SetInputEdited(2, event);" onblur="InputFocused[1]=0" onkeydown="SetInputEdited(2, event);"></input>
<input title="Controller board temperature" class="mono" tabindex="7" type="text" id="INPUT3" style="position: absolute; top: 433px; left: 230px; width: 49px; z-index: 10; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[3]/@VALUE}" name="{INPUT[3]/@NAME}" onfocus="SetInputEdited(3, event);" onblur="InputFocused[2]=0" onkeydown="SetInputEdited(3, event);"></input>
<input title="Szobába fújt levegő hőmérséklet" class="mono" tabindex="2" type="text" id="INPUT4" style="position: absolute; top: 98px; left: 182px; width: 49px; z-index: 13; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[4]/@VALUE}" name="{INPUT[4]/@NAME}" onfocus="SetInputEdited(4, event);" onblur="InputFocused[3]=0" onkeydown="SetInputEdited(4, event);"></input>
<input title="Szobából elszívott levegő hőmérséklet" class="mono" tabindex="11" type="text" id="INPUT5" style="position: absolute; top: 138px; left: 182px; width: 49px; z-index: 15; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[5]/@VALUE}" name="{INPUT[5]/@NAME}" onfocus="SetInputEdited(5, event);" onblur="InputFocused[4]=0" onkeydown="SetInputEdited(5, event);"></input>
<input title="Szobába fújt levegő hőmérséklet" class="mono" tabindex="4" type="text" id="INPUT6" style="position: absolute; top: 188px; left: 112px; width: 22px; z-index: 17; color: #0080FF; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[6]/@VALUE}" name="{INPUT[6]/@NAME}" onfocus="SetInputEdited(6, event);" onblur="InputFocused[5]=0" onkeydown="SetInputEdited(6, event);"></input>
<input title="Szobába fújt levegő hőmérséklet" class="mono" tabindex="3" type="text" id="INPUT8" style="position: absolute; top: 15px; left: 295px; width: 22px; z-index: 20; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[8]/@VALUE}" name="{INPUT[8]/@NAME}" onfocus="SetInputEdited(8, event);" onblur="InputFocused[7]=0" onkeydown="SetInputEdited(8, event);"></input>
<input title="Szobába fújt levegő hőmérséklet" class="mono" tabindex="6" type="text" id="INPUT9" style="position: absolute; top: 218px; left: 112px; width: 22px; z-index: 24; color: #FF0000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[9]/@VALUE}" name="{INPUT[9]/@NAME}" onfocus="SetInputEdited(9, event);" onblur="InputFocused[8]=0" onkeydown="SetInputEdited(9, event);"></input>
<input title="Szabályozott leveő hőmérséklet" class="mono" tabindex="5" type="text" id="INPUT10" style="position: absolute; top: 51px; left: 102px; width: 40px; z-index: 25; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[10]/@VALUE}" name="{INPUT[10]/@NAME}" onfocus="SetInputEdited(10, event);" onblur="InputFocused[9]=0" onkeydown="SetInputEdited(10, event);"></input>
<input title="Szellőztetési szint" class="mono" tabindex="9" type="text" id="INPUT14" style="position: absolute; top: 15px; left: 131px; width: 22px; z-index: 30; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[12]/@VALUE}" name="{INPUT[12]/@NAME}" onfocus="SetInputEdited(14, event);" onblur="InputFocused[13]=0" onkeydown="SetInputEdited(14, event);"></input>
</form>
<div style="position: absolute; top: 133px; left: 75px; z-index: 1;height: 30px; width: 30px; border: 1px solid #FFFFFF; background-color: #3EA73A;"></div>
<div style="position: absolute; top: 94px; left: 75px; z-index: 2;height: 30px; width: 30px; border: 1px solid #FFFFFF; background-color: #3EA73A;"></div>
<div style="position: absolute; top: 133px; left: 144px; z-index: 3;height: 30px; width: 30px; border: 1px solid #FFFFFF; background-color: #0080FF;"></div>
<div style="position: absolute; top: 93px; left: 144px; z-index: 4;height: 30px; width: 30px; border: 1px solid #FFFFFF; background-color: #0080FF;"></div>
<div title="Ház" style="position: absolute; top: 80px; left: 113px; z-index: 5;height: 98px; width: 23px; border: 1px solid #FFC20E; background-color: #FF8000;"></div>
<div title="Beáramlő levegő" style="position: absolute; top: 94px; left: 75px; z-index: 6; background-image: url(IMAGES/ARROW1_3.PNG); line-height: 32px; height: 32px; width: 32px;"></div>
<div title="Kiáramló levegő" style="position: absolute; top: 133px; left: 75px; z-index: 8; background-image: url(IMAGES/ARROW1_2.PNG); line-height: 32px; height: 32px; width: 32px;"></div>
<div title="Szellőztető alaplap hőmérséklet" style="position: absolute; top: 435px; left: 10px; z-index: 11;">Szellőztető alaplap hőmérséklet</div>
<div title="Beáramlő levegő" style="position: absolute; top: 93px; left: 144px; z-index: 12; background-image: url(IMAGES/ARROW1_3.PNG); line-height: 32px; height: 32px; width: 32px;"></div>
<div title="Kiáramló levegő" style="position: absolute; top: 133px; left: 144px; z-index: 14; background-image: url(IMAGES/ARROW1_2.PNG); line-height: 32px; height: 32px; width: 32px;"></div>
<div title="%" style="position: absolute; top: 190px; left: 145px; z-index: 16;">%</div>
<xsl:if test="INPUT[7]/@VALUE = 0">
<div title="Légszűrő csere szükséges" style="position: absolute; top: 7px; left: 331px; z-index: 18; background-image: url(IMAGES/ALARM1_2.PNG); line-height: 32px; height: 32px; width: 32px; visibility: hidden;" id="INPUT7"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div title="Légszűrő csere szükséges" style="position: absolute; top: 7px; left: 331px; z-index: 18; background-image: url(IMAGES/ALARM1_2.PNG); line-height: 32px; height: 32px; width: 32px;" id="INPUT7"></div>
</xsl:if>
<div title="Szűrő csere" style="position: absolute; top: 18px; left: 165px; z-index: 19;">Utolsó szűrő csere</div>
<div title="Páratartalom" style="position: absolute; top: 190px; left: 13px; z-index: 21;">Páratartalom</div>
<div title="Hatásfok" style="position: absolute; top: 220px; left: 13px; z-index: 22;">Hatásfok</div>
<div title="%" style="position: absolute; top: 220px; left: 145px; z-index: 23;">%</div>
<div title="Páratartalom" style="position: absolute; top: 260px; left: 13px; z-index: 26;">Kívánt hőmérséklet</div>
<form action="javascript:PostXML11()" style="position: absolute; top: 255px; left: 150px; z-index: 27; font-size: 13px;">
<input title="Kívánt szellőztetési hőmérséklet" id="INPUT11" onfocus="document.getElementById('INPUT11x').style.visibility='visible';SetInputEdited(11, event);" onblur="InputFocused[10]=0" onkeydown="SetInputEdited(11, event);" class="mono" tabindex="10" type="text" style="width: 20px; background-color: #FFFFFF;" name="{INPUT[11]/@NAME}" value="{INPUT[11]/@VALUE}" />
<input type="submit" id="INPUT11x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<form style="position: absolute; top: 11px; left: 49px; z-index: 28;">
<xsl:if test="INPUT[12]/@VALUE = 0">
<input id="INPUT12h" type="hidden" name="{INPUT[12]/@NAME}" value="1" />
<div title="Szellőztető" id="INPUT12" class="imgsub" onclick="PostXML12()" style="background-image: url(IMAGES/FAN1_O_2.PNG); line-height: 24px; height: 24px; width: 24px;"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<input id="INPUT12h" type="hidden" name="{INPUT[12]/@NAME}" value="0" />
<div title="Szellőztető" id="INPUT12" class="imgsub" onclick="PostXML12()" style="background-image: url(IMAGES/FAN1_O_1.PNG); line-height: 24px; height: 24px; width: 24px;"></div>
</xsl:if>
</form>
<form action="javascript:PostXML13()" style="position: absolute; top: 14px; left: 81px; z-index: 29; font-size: 13px;">
<input title="Kívánt szellőztetési szint" id="INPUT13" onfocus="document.getElementById('INPUT13x').style.visibility='visible';SetInputEdited(13, event);" onblur="InputFocused[12]=0" onkeydown="SetInputEdited(13, event);" class="mono" tabindex="12" type="text" style="width: 20px; background-color: #FFFFFF;" name="{INPUT[13]/@NAME}" value="{INPUT[13]/@VALUE}" />
<input type="submit" id="INPUT13x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div title="Szellőztető hiba" style="position: absolute; top: 7px; left: 14px; z-index: 31; background-image: url(IMAGES/ALARM1_1.PNG); line-height: 32px; height: 32px; width: 32px; visibility: hidden;" id="INPUT15"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div title="Szellőztető hiba" style="position: absolute; top: 7px; left: 14px; z-index: 31; background-image: url(IMAGES/ALARM1_1.PNG); line-height: 32px; height: 32px; width: 32px;" id="INPUT15"></div>
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
