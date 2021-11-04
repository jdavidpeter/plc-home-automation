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
Fűtés</title>
<script src="HEATING.JS?U=1635877985" language="JavaScript" charset="utf-8" />
<style type="text/css">.mono {font-family: Verdana, Arial, FreeSans, sans-serif;}</style>
</head>
<body onload="GetXML('HEATING.XML'); FunWatchDog();">
<xsl:if test="1635877985 != ACCESS/@UCID">
<xsl:attribute name="onload">
null;
</xsl:attribute>
<div id="cachewarning" style="text-align: left;"></div>
<script src="REFCLR.JS" language="JavaScript" charset="utf-8"></script>
</xsl:if>
<xsl:if test="1635877985 = ACCESS/@UCID">
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
Fűtés</span>
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
<div style="background-color:#FFFFFF;position: relative; width: 370px; height: 1160px;">
<form action="javascript:PostGlobal();">
<input class="mono" tabindex="2" type="text" id="INPUT2" style="position: absolute; top: 370px; left: 214px; width: 49px; z-index: 5; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[2]/@VALUE}" name="{INPUT[2]/@NAME}" onfocus="SetInputEdited(2, event);" onblur="InputFocused[1]=0" onkeydown="SetInputEdited(2, event);"></input>
<input title="Kazán moduláció" class="mono" tabindex="3" type="text" id="INPUT4" style="position: absolute; top: 70px; left: 299px; width: 36px; z-index: 7; background-color: #FFFFFF;" value="{INPUT[4]/@VALUE}" name="{INPUT[4]/@NAME}" onfocus="SetInputEdited(4, event);" onblur="InputFocused[3]=0" onkeydown="SetInputEdited(4, event);"></input>
<input title="Eredő hőmérséklet igény" class="mono" tabindex="4" type="text" id="INPUT5" style="position: absolute; top: 40px; left: 299px; width: 36px; z-index: 9; background-color: #FFFFFF;" value="{INPUT[5]/@VALUE}" name="{INPUT[5]/@NAME}" onfocus="SetInputEdited(5, event);" onblur="InputFocused[4]=0" onkeydown="SetInputEdited(5, event);"></input>
<input class="mono" tabindex="6" type="text" id="INPUT7" style="position: absolute; top: 400px; left: 214px; width: 49px; z-index: 13; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[7]/@VALUE}" name="{INPUT[7]/@NAME}" onfocus="SetInputEdited(7, event);" onblur="InputFocused[6]=0" onkeydown="SetInputEdited(7, event);"></input>
<input class="mono" tabindex="8" type="text" id="INPUT9" style="position: absolute; top: 430px; left: 214px; width: 49px; z-index: 16; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[9]/@VALUE}" name="{INPUT[9]/@NAME}" onfocus="SetInputEdited(9, event);" onblur="InputFocused[8]=0" onkeydown="SetInputEdited(9, event);"></input>
<input title="Eredő hőmérséklet igény" class="mono" tabindex="9" type="text" id="INPUT10" style="position: absolute; top: 100px; left: 299px; width: 36px; z-index: 19; background-color: #FFFFFF;" value="{INPUT[10]/@VALUE}" name="{INPUT[10]/@NAME}" onfocus="SetInputEdited(10, event);" onblur="InputFocused[9]=0" onkeydown="SetInputEdited(10, event);"></input>
<input title="Eredő hőmérséklet igény" class="mono" tabindex="10" type="text" id="INPUT15" style="position: absolute; top: 128px; left: 299px; width: 36px; z-index: 30; background-color: #FFFFFF;" value="{INPUT[13]/@VALUE}" name="{INPUT[13]/@NAME}" onfocus="SetInputEdited(15, event);" onblur="InputFocused[14]=0" onkeydown="SetInputEdited(15, event);"></input>
<input class="mono" tabindex="13" type="text" id="INPUT17" style="position: absolute; top: 460px; left: 214px; width: 49px; z-index: 33; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[15]/@VALUE}" name="{INPUT[15]/@NAME}" onfocus="SetInputEdited(17, event);" onblur="InputFocused[16]=0" onkeydown="SetInputEdited(17, event);"></input>
<input class="mono" tabindex="15" type="text" id="INPUT19" style="position: absolute; top: 520px; left: 214px; width: 49px; z-index: 36; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[17]/@VALUE}" name="{INPUT[17]/@NAME}" onfocus="SetInputEdited(19, event);" onblur="InputFocused[18]=0" onkeydown="SetInputEdited(19, event);"></input>
<input class="mono" tabindex="17" type="text" id="INPUT21" style="position: absolute; top: 550px; left: 214px; width: 49px; z-index: 39; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[19]/@VALUE}" name="{INPUT[19]/@NAME}" onfocus="SetInputEdited(21, event);" onblur="InputFocused[20]=0" onkeydown="SetInputEdited(21, event);"></input>
<input class="mono" tabindex="21" type="text" id="INPUT23" style="position: absolute; top: 610px; left: 214px; width: 49px; z-index: 42; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[21]/@VALUE}" name="{INPUT[21]/@NAME}" onfocus="SetInputEdited(23, event);" onblur="InputFocused[22]=0" onkeydown="SetInputEdited(23, event);"></input>
<input class="mono" tabindex="25" type="text" id="INPUT25" style="position: absolute; top: 580px; left: 214px; width: 49px; z-index: 45; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[23]/@VALUE}" name="{INPUT[23]/@NAME}" onfocus="SetInputEdited(25, event);" onblur="InputFocused[24]=0" onkeydown="SetInputEdited(25, event);"></input>
<input class="mono" tabindex="33" type="text" id="INPUT44" style="position: absolute; top: 490px; left: 214px; width: 49px; z-index: 70; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[42]/@VALUE}" name="{INPUT[42]/@NAME}" onfocus="SetInputEdited(44, event);" onblur="InputFocused[43]=0" onkeydown="SetInputEdited(44, event);"></input>
<input class="mono" tabindex="22" type="text" id="INPUT52" style="position: absolute; top: 640px; left: 214px; width: 49px; z-index: 86; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[19]/@VALUE}" name="{INPUT[19]/@NAME}" onfocus="SetInputEdited(52, event);" onblur="InputFocused[51]=0" onkeydown="SetInputEdited(52, event);"></input>
<input class="mono" tabindex="23" type="text" id="INPUT55" style="position: absolute; top: 670px; left: 214px; width: 49px; z-index: 90; color: #008000; background-color: #FFFFFF; font-weight: bold;" value="{INPUT[17]/@VALUE}" name="{INPUT[17]/@NAME}" onfocus="SetInputEdited(55, event);" onblur="InputFocused[54]=0" onkeydown="SetInputEdited(55, event);"></input>
</form>
<div style="position: absolute; top: 50px; left: 19px; z-index: 1;height: 68px; width: 68px; border: 1px solid #000000; background-color: #FF8000;"></div>
<div style="position: absolute; top: 169px; left: 201px; z-index: 2;height: 138px; width: 138px; border: 1px solid #000000; background-color: #FF0000;"></div>
<form action="javascript:PostXML1()" style="position: absolute; top: 370px; left: 119px; z-index: 3; font-size: 13px;">
<input id="INPUT1" onfocus="document.getElementById('INPUT1x').style.visibility='visible';SetInputEdited(1, event);" onblur="InputFocused[0]=0" onkeydown="SetInputEdited(1, event);" class="mono" tabindex="1" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[1]/@NAME}" value="{INPUT[1]/@VALUE}" />
<input type="submit" id="INPUT1x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div style="position: absolute; top: 345px; left: 20px; z-index: 4; font-weight: bold;">Kívánt és valós hőmérsékletek</div>
<form style="position: absolute; top: 175px; left: 206px; z-index: 6;">
<xsl:if test="INPUT[3]/@VALUE = 0">
<input id="INPUT3h" type="hidden" name="{INPUT[3]/@NAME}" value="1" />
<div id="INPUT3" class="imgsub" onclick="PostXML3()" style="background-image: url(IMAGES/HEAT1__1.PNG); line-height: 128px; height: 128px; width: 128px;">Kazán kikapcsolva</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<input id="INPUT3h" type="hidden" name="{INPUT[3]/@NAME}" value="0" />
<div id="INPUT3" class="imgsub" onclick="PostXML3()" style="background-image: url(IMAGES/HEAT1__2.PNG); line-height: 128px; height: 128px; width: 128px;">Kazán bekapcsolva</div>
</xsl:if>
</form>
<div style="position: absolute; top: 75px; left: 199px; z-index: 8;">Moduláció</div>
<div style="position: absolute; top: 373px; left: 20px; z-index: 10;">Nappali</div>
<div style="position: absolute; top: 363px; left: 20px; z-index: 11;height: 0px; width: 278px; border: 1px solid #000000; background-color: #000000;"></div>
<form action="javascript:PostXML6()" style="position: absolute; top: 400px; left: 119px; z-index: 12; font-size: 13px;">
<input id="INPUT6" onfocus="document.getElementById('INPUT6x').style.visibility='visible';SetInputEdited(6, event);" onblur="InputFocused[5]=0" onkeydown="SetInputEdited(6, event);" class="mono" tabindex="5" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[6]/@NAME}" value="{INPUT[6]/@VALUE}" />
<input type="submit" id="INPUT6x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div style="position: absolute; top: 403px; left: 20px; z-index: 14;">Alsó fürdő</div>
<form action="javascript:PostXML8()" style="position: absolute; top: 430px; left: 119px; z-index: 15; font-size: 13px;">
<input id="INPUT8" onfocus="document.getElementById('INPUT8x').style.visibility='visible';SetInputEdited(8, event);" onblur="InputFocused[7]=0" onkeydown="SetInputEdited(8, event);" class="mono" tabindex="7" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[8]/@NAME}" value="{INPUT[8]/@VALUE}" />
<input type="submit" id="INPUT8x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div style="position: absolute; top: 433px; left: 21px; z-index: 17;">Garázs</div>
<div style="position: absolute; top: 43px; left: 199px; z-index: 18;">Eredő hőigény</div>
<div style="position: absolute; top: 103px; left: 199px; z-index: 20;">Előremenő T</div>
<xsl:if test="INPUT[11]/@VALUE = 0">
<div style="position: absolute; top: 53px; left: 22px; z-index: 21;">
<div onclick="PostXML11()" id="INPUT11" class="imgsub" style="background-image: url(IMAGES/SW747C_1.PNG); height: 64px; width: 64px; line-height: 64px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div style="position: absolute; top: 53px; left: 22px; z-index: 21;">
<div onclick="PostXML11()" id="INPUT11" class="imgsub" style="background-image: url(IMAGES/SW747C_1.PNG); height: 64px; width: 64px; line-height: 64px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div style="position: absolute; top: 53px; left: 22px; z-index: 22;">
<div onclick="PostXML12()" id="INPUT12" class="imgsub" style="background-image: url(IMAGES/SW7D18_1.PNG); height: 64px; width: 64px; line-height: 64px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE = 0">
<div style="position: absolute; top: 53px; left: 22px; z-index: 22;">
<div onclick="PostXML12()" id="INPUT12" class="imgsub" style="background-image: url(IMAGES/SW7D18_1.PNG); height: 64px; width: 64px; line-height: 64px;"></div>
</div>
</xsl:if>
<div style="position: absolute; top: 15px; left: 19px; z-index: 23; font-weight: bold;">Kazán engedélyezés</div>
<div style="position: absolute; top: 33px; left: 19px; z-index: 24;height: 0px; width: 158px; border: 1px solid #000000; background-color: #000000;"></div>
<div style="position: absolute; top: 50px; left: 99px; z-index: 25;height: 68px; width: 68px; border: 1px solid #000000; background-color: #FF0000;"></div>
<xsl:if test="INPUT[12]/@VALUE = 0">
<div style="position: absolute; top: 53px; left: 102px; z-index: 26;">
<div onclick="PostXML13()" id="INPUT13" class="imgsub" style="background-image: url(IMAGES/SW747C_1.PNG); height: 64px; width: 64px; line-height: 64px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div style="position: absolute; top: 53px; left: 102px; z-index: 26;">
<div onclick="PostXML13()" id="INPUT13" class="imgsub" style="background-image: url(IMAGES/SW747C_1.PNG); height: 64px; width: 64px; line-height: 64px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div style="position: absolute; top: 53px; left: 102px; z-index: 27;">
<div onclick="PostXML14()" id="INPUT14" class="imgsub" style="background-image: url(IMAGES/SW7D18_1.PNG); height: 64px; width: 64px; line-height: 64px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<div style="position: absolute; top: 53px; left: 102px; z-index: 27;">
<div onclick="PostXML14()" id="INPUT14" class="imgsub" style="background-image: url(IMAGES/SW7D18_1.PNG); height: 64px; width: 64px; line-height: 64px;"></div>
</div>
</xsl:if>
<div style="position: absolute; top: 126px; left: 35px; z-index: 28; font-weight: bold;">Fűtés</div>
<div style="position: absolute; top: 126px; left: 101px; z-index: 29; font-weight: bold;">Meleg víz</div>
<div style="position: absolute; top: 131px; left: 199px; z-index: 31;">Visszatérő T</div>
<form action="javascript:PostXML16()" style="position: absolute; top: 460px; left: 119px; z-index: 32; font-size: 13px;">
<input id="INPUT16" onfocus="document.getElementById('INPUT16x').style.visibility='visible';SetInputEdited(16, event);" onblur="InputFocused[15]=0" onkeydown="SetInputEdited(16, event);" class="mono" tabindex="11" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[14]/@NAME}" value="{INPUT[14]/@VALUE}" />
<input type="submit" id="INPUT16x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div style="position: absolute; top: 463px; left: 20px; z-index: 34;">Vendégszoba</div>
<form action="javascript:PostXML18()" style="position: absolute; top: 520px; left: 119px; z-index: 35; font-size: 13px;">
<input id="INPUT18" onfocus="document.getElementById('INPUT18x').style.visibility='visible';SetInputEdited(18, event);" onblur="InputFocused[17]=0" onkeydown="SetInputEdited(18, event);" class="mono" tabindex="14" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[16]/@NAME}" value="{INPUT[16]/@VALUE}" />
<input type="submit" id="INPUT18x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div style="position: absolute; top: 523px; left: 20px; z-index: 37;">Háló</div>
<form action="javascript:PostXML20()" style="position: absolute; top: 550px; left: 119px; z-index: 38; font-size: 13px;">
<input id="INPUT20" onfocus="document.getElementById('INPUT20x').style.visibility='visible';SetInputEdited(20, event);" onblur="InputFocused[19]=0" onkeydown="SetInputEdited(20, event);" class="mono" tabindex="16" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[18]/@NAME}" value="{INPUT[18]/@VALUE}" />
<input type="submit" id="INPUT20x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div style="position: absolute; top: 553px; left: 21px; z-index: 40;">Raktárszoba</div>
<form action="javascript:PostXML22()" style="position: absolute; top: 610px; left: 119px; z-index: 41; font-size: 13px;">
<input id="INPUT22" onfocus="document.getElementById('INPUT22x').style.visibility='visible';SetInputEdited(22, event);" onblur="InputFocused[21]=0" onkeydown="SetInputEdited(22, event);" class="mono" tabindex="18" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[20]/@NAME}" value="{INPUT[20]/@VALUE}" />
<input type="submit" id="INPUT22x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div style="position: absolute; top: 613px; left: 20px; z-index: 43;">Gyerekszoba 1</div>
<form action="javascript:PostXML24()" style="position: absolute; top: 580px; left: 119px; z-index: 44; font-size: 13px;">
<input id="INPUT24" onfocus="document.getElementById('INPUT24x').style.visibility='visible';SetInputEdited(24, event);" onblur="InputFocused[23]=0" onkeydown="SetInputEdited(24, event);" class="mono" tabindex="24" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[22]/@NAME}" value="{INPUT[22]/@VALUE}" />
<input type="submit" id="INPUT24x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div style="position: absolute; top: 583px; left: 21px; z-index: 46;">Felső fürdő</div>
<xsl:if test="INPUT[24]/@VALUE = 0">
<div style="position: absolute; top: 369px; left: 282px; z-index: 47; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT26"></div>
</xsl:if>
<xsl:if test="INPUT[24]/@VALUE != 0">
<div style="position: absolute; top: 369px; left: 282px; z-index: 47; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT26"></div>
</xsl:if>
<xsl:if test="INPUT[25]/@VALUE = 0">
<div style="position: absolute; top: 399px; left: 282px; z-index: 48; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT27"></div>
</xsl:if>
<xsl:if test="INPUT[25]/@VALUE != 0">
<div style="position: absolute; top: 399px; left: 282px; z-index: 48; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT27"></div>
</xsl:if>
<xsl:if test="INPUT[26]/@VALUE = 0">
<div style="position: absolute; top: 430px; left: 282px; z-index: 49; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT28"></div>
</xsl:if>
<xsl:if test="INPUT[26]/@VALUE != 0">
<div style="position: absolute; top: 430px; left: 282px; z-index: 49; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT28"></div>
</xsl:if>
<xsl:if test="INPUT[27]/@VALUE = 0">
<div style="position: absolute; top: 460px; left: 282px; z-index: 50; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT29"></div>
</xsl:if>
<xsl:if test="INPUT[27]/@VALUE != 0">
<div style="position: absolute; top: 460px; left: 282px; z-index: 50; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT29"></div>
</xsl:if>
<xsl:if test="INPUT[28]/@VALUE = 0">
<div style="position: absolute; top: 520px; left: 282px; z-index: 51; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT30"></div>
</xsl:if>
<xsl:if test="INPUT[28]/@VALUE != 0">
<div style="position: absolute; top: 520px; left: 282px; z-index: 51; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT30"></div>
</xsl:if>
<xsl:if test="INPUT[29]/@VALUE = 0">
<div style="position: absolute; top: 551px; left: 282px; z-index: 52; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT31"></div>
</xsl:if>
<xsl:if test="INPUT[29]/@VALUE != 0">
<div style="position: absolute; top: 551px; left: 282px; z-index: 52; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT31"></div>
</xsl:if>
<xsl:if test="INPUT[30]/@VALUE = 0">
<div style="position: absolute; top: 611px; left: 282px; z-index: 53; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT32"></div>
</xsl:if>
<xsl:if test="INPUT[30]/@VALUE != 0">
<div style="position: absolute; top: 611px; left: 282px; z-index: 53; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT32"></div>
</xsl:if>
<xsl:if test="INPUT[31]/@VALUE = 0">
<div style="position: absolute; top: 579px; left: 282px; z-index: 54; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT33"></div>
</xsl:if>
<xsl:if test="INPUT[31]/@VALUE != 0">
<div style="position: absolute; top: 579px; left: 282px; z-index: 54; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT33"></div>
</xsl:if>
<form action="javascript:PostXML34()" style="position: absolute; top: 747px; left: 112px; z-index: 55; font-size: 13px;">
<input id="INPUT34" onfocus="document.getElementById('INPUT34x').style.visibility='visible';SetInputEdited(34, event);" onblur="InputFocused[33]=0" onkeydown="SetInputEdited(34, event);" class="mono" tabindex="26" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[32]/@NAME}" value="{INPUT[32]/@VALUE}" />
<input type="submit" id="INPUT34x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div style="position: absolute; top: 750px; left: 20px; z-index: 56;">WC</div>
<form action="javascript:PostXML35()" style="position: absolute; top: 777px; left: 112px; z-index: 57; font-size: 13px;">
<input id="INPUT35" onfocus="document.getElementById('INPUT35x').style.visibility='visible';SetInputEdited(35, event);" onblur="InputFocused[34]=0" onkeydown="SetInputEdited(35, event);" class="mono" tabindex="27" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[33]/@NAME}" value="{INPUT[33]/@VALUE}" />
<input type="submit" id="INPUT35x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div style="position: absolute; top: 780px; left: 21px; z-index: 58;">Folyosó</div>
<form action="javascript:PostXML36()" style="position: absolute; top: 807px; left: 112px; z-index: 59; font-size: 13px;">
<input title="Living room kívánt hőmérséklet" id="INPUT36" onfocus="document.getElementById('INPUT36x').style.visibility='visible';SetInputEdited(36, event);" onblur="InputFocused[35]=0" onkeydown="SetInputEdited(36, event);" class="mono" tabindex="28" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[34]/@NAME}" value="{INPUT[34]/@VALUE}" />
<input type="submit" id="INPUT36x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div style="position: absolute; top: 810px; left: 20px; z-index: 60;">Kazán</div>
<xsl:if test="INPUT[35]/@VALUE = 0">
<div style="position: absolute; top: 747px; left: 295px; z-index: 61; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT37"></div>
</xsl:if>
<xsl:if test="INPUT[35]/@VALUE != 0">
<div style="position: absolute; top: 747px; left: 295px; z-index: 61; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT37"></div>
</xsl:if>
<xsl:if test="INPUT[36]/@VALUE = 0">
<div style="position: absolute; top: 778px; left: 295px; z-index: 62; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT38"></div>
</xsl:if>
<xsl:if test="INPUT[36]/@VALUE != 0">
<div style="position: absolute; top: 778px; left: 295px; z-index: 62; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT38"></div>
</xsl:if>
<xsl:if test="INPUT[37]/@VALUE = 0">
<div style="position: absolute; top: 808px; left: 295px; z-index: 63; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT39"></div>
</xsl:if>
<xsl:if test="INPUT[37]/@VALUE != 0">
<div style="position: absolute; top: 808px; left: 295px; z-index: 63; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT39"></div>
</xsl:if>
<div style="position: absolute; top: 715px; left: 20px; z-index: 64; font-weight: bold;">Szimulálási hőmérsékletek</div>
<div style="position: absolute; top: 733px; left: 20px; z-index: 65;height: 0px; width: 278px; border: 1px solid #000000; background-color: #000000;"></div>
<form action="javascript:PostXML40()" style="position: absolute; top: 747px; left: 207px; z-index: 66; font-size: 13px;">
<input id="INPUT40" onfocus="document.getElementById('INPUT40x').style.visibility='visible';SetInputEdited(40, event);" onblur="InputFocused[39]=0" onkeydown="SetInputEdited(40, event);" class="mono" tabindex="29" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[38]/@NAME}" value="{INPUT[38]/@VALUE}" />
<input type="submit" id="INPUT40x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<form action="javascript:PostXML41()" style="position: absolute; top: 777px; left: 207px; z-index: 67; font-size: 13px;">
<input id="INPUT41" onfocus="document.getElementById('INPUT41x').style.visibility='visible';SetInputEdited(41, event);" onblur="InputFocused[40]=0" onkeydown="SetInputEdited(41, event);" class="mono" tabindex="30" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[39]/@NAME}" value="{INPUT[39]/@VALUE}" />
<input type="submit" id="INPUT41x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<form action="javascript:PostXML42()" style="position: absolute; top: 807px; left: 207px; z-index: 68; font-size: 13px;">
<input title="Living room kívánt hőmérséklet" id="INPUT42" onfocus="document.getElementById('INPUT42x').style.visibility='visible';SetInputEdited(42, event);" onblur="InputFocused[41]=0" onkeydown="SetInputEdited(42, event);" class="mono" tabindex="31" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[40]/@NAME}" value="{INPUT[40]/@VALUE}" />
<input type="submit" id="INPUT42x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<form action="javascript:PostXML43()" style="position: absolute; top: 490px; left: 119px; z-index: 69; font-size: 13px;">
<input id="INPUT43" onfocus="document.getElementById('INPUT43x').style.visibility='visible';SetInputEdited(43, event);" onblur="InputFocused[42]=0" onkeydown="SetInputEdited(43, event);" class="mono" tabindex="32" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[41]/@NAME}" value="{INPUT[41]/@VALUE}" />
<input type="submit" id="INPUT43x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div style="position: absolute; top: 493px; left: 21px; z-index: 71;">Előszoba</div>
<xsl:if test="INPUT[43]/@VALUE = 0">
<div style="position: absolute; top: 489px; left: 282px; z-index: 72; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT45"></div>
</xsl:if>
<xsl:if test="INPUT[43]/@VALUE != 0">
<div style="position: absolute; top: 489px; left: 282px; z-index: 72; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT45"></div>
</xsl:if>
<form action="javascript:PostXML46()" style="position: absolute; top: 148px; left: 107px; z-index: 73; font-size: 13px;">
<input id="INPUT46" onfocus="document.getElementById('INPUT46x').style.visibility='visible';SetInputEdited(46, event);" onblur="InputFocused[45]=0" onkeydown="SetInputEdited(46, event);" class="mono" tabindex="12" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[44]/@NAME}" value="{INPUT[44]/@VALUE}" />
<input type="submit" id="INPUT46x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div style="position: absolute; top: 151px; left: 15px; z-index: 74;">Meleg víz hő</div>
<div style="position: absolute; top: 214px; left: 20px; z-index: 75;height: 68px; width: 68px; border: 1px solid #000000; background-color: #0000FF;"></div>
<xsl:if test="INPUT[45]/@VALUE = 0">
<div style="position: absolute; top: 217px; left: 23px; z-index: 76;">
<div onclick="PostXML47()" id="INPUT47" class="imgsub" style="background-image: url(IMAGES/SW747C_1.PNG); height: 64px; width: 64px; line-height: 64px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[45]/@VALUE != 0">
<div style="position: absolute; top: 217px; left: 23px; z-index: 76;">
<div onclick="PostXML47()" id="INPUT47" class="imgsub" style="background-image: url(IMAGES/SW747C_1.PNG); height: 64px; width: 64px; line-height: 64px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[45]/@VALUE != 0">
<div style="position: absolute; top: 217px; left: 23px; z-index: 77;">
<div onclick="PostXML48()" id="INPUT48" class="imgsub" style="background-image: url(IMAGES/SW7D18_1.PNG); height: 64px; width: 64px; line-height: 64px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[45]/@VALUE = 0">
<div style="position: absolute; top: 217px; left: 23px; z-index: 77;">
<div onclick="PostXML48()" id="INPUT48" class="imgsub" style="background-image: url(IMAGES/SW7D18_1.PNG); height: 64px; width: 64px; line-height: 64px;"></div>
</div>
</xsl:if>
<div style="position: absolute; top: 179px; left: 20px; z-index: 78; font-weight: bold;">Jelenlét alapú vezérlés</div>
<div style="position: absolute; top: 197px; left: 20px; z-index: 79;height: 0px; width: 158px; border: 1px solid #000000; background-color: #000000;"></div>
<div style="position: absolute; top: 214px; left: 100px; z-index: 80;height: 68px; width: 68px; border: 1px solid #000000; background-color: #0000FF;"></div>
<xsl:if test="INPUT[46]/@VALUE = 0">
<div style="position: absolute; top: 217px; left: 103px; z-index: 81;">
<div onclick="PostXML49()" id="INPUT49" class="imgsub" style="background-image: url(IMAGES/SW747C_1.PNG); height: 64px; width: 64px; line-height: 64px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[46]/@VALUE != 0">
<div style="position: absolute; top: 217px; left: 103px; z-index: 81;">
<div onclick="PostXML49()" id="INPUT49" class="imgsub" style="background-image: url(IMAGES/SW747C_1.PNG); height: 64px; width: 64px; line-height: 64px;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[46]/@VALUE != 0">
<div style="position: absolute; top: 217px; left: 103px; z-index: 82;">
<div onclick="PostXML50()" id="INPUT50" class="imgsub" style="background-image: url(IMAGES/SW7D18_1.PNG); height: 64px; width: 64px; line-height: 64px; display: none;"></div>
</div>
</xsl:if>
<xsl:if test="INPUT[46]/@VALUE = 0">
<div style="position: absolute; top: 217px; left: 103px; z-index: 82;">
<div onclick="PostXML50()" id="INPUT50" class="imgsub" style="background-image: url(IMAGES/SW7D18_1.PNG); height: 64px; width: 64px; line-height: 64px;"></div>
</div>
</xsl:if>
<div style="position: absolute; top: 290px; left: 36px; z-index: 83; font-weight: bold;">Fűtés</div>
<div style="position: absolute; top: 290px; left: 102px; z-index: 84; font-weight: bold;">Meleg víz</div>
<form action="javascript:PostXML51()" style="position: absolute; top: 640px; left: 119px; z-index: 85; font-size: 13px;">
<input id="INPUT51" onfocus="document.getElementById('INPUT51x').style.visibility='visible';SetInputEdited(51, event);" onblur="InputFocused[50]=0" onkeydown="SetInputEdited(51, event);" class="mono" tabindex="19" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[18]/@NAME}" value="{INPUT[18]/@VALUE}" />
<input type="submit" id="INPUT51x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div style="position: absolute; top: 643px; left: 20px; z-index: 87;">Gyerekszoba 2</div>
<xsl:if test="INPUT[30]/@VALUE = 0">
<div style="position: absolute; top: 641px; left: 282px; z-index: 88; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT53"></div>
</xsl:if>
<xsl:if test="INPUT[30]/@VALUE != 0">
<div style="position: absolute; top: 641px; left: 282px; z-index: 88; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT53"></div>
</xsl:if>
<form action="javascript:PostXML54()" style="position: absolute; top: 670px; left: 119px; z-index: 89; font-size: 13px;">
<input id="INPUT54" onfocus="document.getElementById('INPUT54x').style.visibility='visible';SetInputEdited(54, event);" onblur="InputFocused[53]=0" onkeydown="SetInputEdited(54, event);" class="mono" tabindex="20" type="text" style="width: 44px; background-color: #FFFFFF;" name="{INPUT[16]/@NAME}" value="{INPUT[16]/@VALUE}" />
<input type="submit" id="INPUT54x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div style="position: absolute; top: 673px; left: 20px; z-index: 91;">Gyerekszoba 3</div>
<xsl:if test="INPUT[30]/@VALUE = 0">
<div style="position: absolute; top: 671px; left: 282px; z-index: 92; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px; visibility: hidden;" id="INPUT56"></div>
</xsl:if>
<xsl:if test="INPUT[30]/@VALUE != 0">
<div style="position: absolute; top: 671px; left: 282px; z-index: 92; background-image: url(IMAGES/HEAT1__4.PNG); line-height: 24px; height: 24px; width: 24px;" id="INPUT56"></div>
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
