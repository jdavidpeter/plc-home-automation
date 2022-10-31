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
Finomhangolás</title>
<script src="TUNING.JS?U=1649500570" language="JavaScript" charset="utf-8" />
<style type="text/css">.mono {font-family: Verdana, Arial, FreeSans, sans-serif;}</style>
</head>
<body onload="GetXML('TUNING.XML'); FunWatchDog();">
<xsl:if test="1649500570 != ACCESS/@UCID">
<xsl:attribute name="onload">
null;
</xsl:attribute>
<div id="cachewarning" style="text-align: left;"></div>
<script src="REFCLR.JS" language="JavaScript" charset="utf-8"></script>
</xsl:if>
<xsl:if test="1649500570 = ACCESS/@UCID">
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
Finomhangolás</span>
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
<form action="javascript:PostGlobal();"></form>
<form action="javascript:PostXML1()" style="position: absolute; top: 52px; left: 200px; z-index: 1; font-size: 13px;">
<input id="INPUT1" onfocus="document.getElementById('INPUT1x').style.visibility='visible';SetInputEdited(1, event);" onblur="InputFocused[0]=0" onkeydown="SetInputEdited(1, event);" class="mono" tabindex="1" type="text" style="width: 68px; background-color: #FFFFFF;" name="{INPUT[1]/@NAME}" value="{INPUT[1]/@VALUE}" />
<input type="submit" id="INPUT1x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div style="position: absolute; top: 55px; left: 15px; z-index: 2;">IPID Ti</div>
<form action="javascript:PostXML2()" style="position: absolute; top: 82px; left: 200px; z-index: 3; font-size: 13px;">
<input id="INPUT2" onfocus="document.getElementById('INPUT2x').style.visibility='visible';SetInputEdited(2, event);" onblur="InputFocused[1]=0" onkeydown="SetInputEdited(2, event);" class="mono" tabindex="2" type="text" style="width: 68px; background-color: #FFFFFF;" name="{INPUT[2]/@NAME}" value="{INPUT[2]/@VALUE}" />
<input type="submit" id="INPUT2x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div style="position: absolute; top: 85px; left: 16px; z-index: 4;">IPID Td</div>
<form action="javascript:PostXML3()" style="position: absolute; top: 112px; left: 200px; z-index: 5; font-size: 13px;">
<input title="Living room kívánt hőmérséklet" id="INPUT3" onfocus="document.getElementById('INPUT3x').style.visibility='visible';SetInputEdited(3, event);" onblur="InputFocused[2]=0" onkeydown="SetInputEdited(3, event);" class="mono" tabindex="3" type="text" style="width: 68px; background-color: #FFFFFF;" name="{INPUT[3]/@NAME}" value="{INPUT[3]/@VALUE}" />
<input type="submit" id="INPUT3x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div style="position: absolute; top: 115px; left: 15px; z-index: 6;">IPID k</div>
<div style="position: absolute; top: 20px; left: 15px; z-index: 7; font-weight: bold;">Fűtés szabályozási állandók</div>
<div style="position: absolute; top: 38px; left: 15px; z-index: 8;height: 0px; width: 278px; border: 1px solid #000000; background-color: #000000;"></div>
<form action="javascript:PostXML4()" style="position: absolute; top: 142px; left: 200px; z-index: 9; font-size: 13px;">
<input id="INPUT4" onfocus="document.getElementById('INPUT4x').style.visibility='visible';SetInputEdited(4, event);" onblur="InputFocused[3]=0" onkeydown="SetInputEdited(4, event);" class="mono" tabindex="4" type="text" style="width: 68px; background-color: #FFFFFF;" name="{INPUT[4]/@NAME}" value="{INPUT[4]/@VALUE}" />
<input type="submit" id="INPUT4x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div style="position: absolute; top: 145px; left: 16px; z-index: 10;">Hiszterézis</div>
<form action="javascript:PostXML5()" style="position: absolute; top: 172px; left: 200px; z-index: 11; font-size: 13px;">
<input title="Living room kívánt hőmérséklet" id="INPUT5" onfocus="document.getElementById('INPUT5x').style.visibility='visible';SetInputEdited(5, event);" onblur="InputFocused[4]=0" onkeydown="SetInputEdited(5, event);" class="mono" tabindex="5" type="text" style="width: 68px; background-color: #FFFFFF;" name="{INPUT[5]/@NAME}" value="{INPUT[5]/@VALUE}" />
<input type="submit" id="INPUT5x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div style="position: absolute; top: 175px; left: 15px; z-index: 12;">Mintavételezés</div>
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
