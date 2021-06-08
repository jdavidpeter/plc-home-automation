<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dc="http://purl.org/dc/elements/1.1/" version="1.0">
<xsl:output method="html" version="5.0" encoding="UTF-8"/>
<xsl:template match='/LOGIN'>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta name="author" content="Teco a.s." />
<meta name="robots" content="noindex, nofollow" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache, must-revalidate" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable = no" />
<link href="PLCFORM.CSS" rel="stylesheet" type="text/css" />
<script src="SHA1.JS" language="JavaScript" charset="utf-8" />
<title>Login</title>
<script type="text/javascript">//<![CDATA[
var lang = navigator.language ? navigator.language : navigator.userLanguage;
//]]></script>
</head>
<body>
<p id="pmess"><xsl:apply-templates select='ACER' /></p>
<div id="wrapper" class="border">
<div class="outwrap">
<p class="ptit"></p>
<div id="wrap">
<form action="LOGIN.XML" method="POST" onsubmit="return ProccessLogin();">
<label id="username" for="USER">User name</label>
<xsl:apply-templates select='USER' />
<label id="password" for="PASS">Password</label>
<xsl:apply-templates select='PASS' />
<input type="submit" class="theSubmit border" value="Login" />
</form>
</div>
<p class="ptit">
</p>
</div>
</div>
<script type="text/javascript">//<![CDATA[
StyleForMob();if(document.createElement("input").placeholder==undefined){var labels=document.getElementsByTagName("label");for(i=0;i<labels.length;i++){labels[i].style.display="inline"}}var objun=document.getElementById('username');var objun2=document.getElementById('USER');var objps=document.getElementById('password');var objps2=document.getElementById('PASS');var mess1=document.getElementById('message1');var mess2=document.getElementById('message2');var mess3=document.getElementById('message3');var mess4=document.getElementById('message4');var mess5=document.getElementById('message5');if(lang=="cs"||lang=="sk"||lang=="cs-CZ"||lang=="sk-SK"){objun.innerHTML="Uživatelské jméno";if(objun2.placeholder)objun2.placeholder="Uživatelské jméno";objps.innerHTML="Heslo";if(objps2.placeholder)objps2.placeholder="Heslo";if(mess1)mess1.innerHTML="Vítejte a přihlašte se, prosím.";if(mess2)mess2.innerHTML="Chybné uživatelské jméno nebo heslo. Opakujte přihlášení.";if(mess3)mess3.innerHTML="Byli jste odhlášeni. Opakujte přihlášení.";if(mess4)mess4.innerHTML="Interní chyba přihlášení.";if(mess5)mess5.innerHTML = "Platnost stránky vypršela. Opakujte přihlášení.";}
//]]></script>
</body>
</html>
</xsl:template>
<xsl:template match='USER'>
<input placeholder="User name" type="text" class="inptext noborder" id="USER" name="USER" value="{@VALUE}" />
</xsl:template>
<xsl:template match='PASS'>
<input placeholder="Password" type="password" class="inptext noborder" id="PASS" name="PASS" value="{@VALUE}" />
</xsl:template>
<xsl:template match='ACER'>
<xsl:if test="@VALUE = '0'"><span id="message1" class="cblue">Welcome and login, please.</span></xsl:if>
<xsl:if test="@VALUE = '1'"><span id="message2">Incorrect user name or password. Try it again.</span></xsl:if>
<xsl:if test="@VALUE = '2'"><span id="message3">You've been logged out. You can login again.</span></xsl:if>
<xsl:if test="@VALUE = '3'"><span id="message4">Cannot find any login files.</span></xsl:if>
<xsl:if test="@VALUE = '4'"><span id="message5">Login time has expired. Try it again.</span></xsl:if>
</xsl:template>
</xsl:stylesheet>
