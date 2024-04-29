
function RefreshCam(ipcamimg, elementid, url, t, d) {var o=document.getElementById(elementid);if(o){o.setAttribute("src",eval(ipcamimg+'.src'));if(o.parentNode.parentNode.style.visibility!='hidden')setTimeout(ipcamimg+".src = \""+url+d+Math.random()+"\"", t);}}
function SetBg(name, imag) {var obj = document.getElementById(name); obj.style.backgroundImage = imag == '' ? '' : 'url("IMAGES/'+imag+'")';}
function SetCond(obj, val) {if(obj != val) obj = val;}
function GetColor(val) {var tmp = '000000'+parseInt(parseInt(((val << 16) & 0xFF0000) | (val & 0xFF00) | ((val >> 16) & 0xFF))).toString(16); return '#'+tmp.substr(tmp.length-6,6);}
function GetDateByFormat(e,a){for(var s=e.split(/([YMDhms]+)/),t=a.split(/([0-9]+)/),r="",n="0",c="0",p="0",h="0",I="0",b="0",i=1;i<Math.min(s.length,t.length);i+=2)switch(s[i].charAt(0)){case"Y":r=parseInt(t[i]);break;case"M":n=parseInt(t[i]);break;case"D":c=parseInt(t[i]);break;case"h":p=parseInt(t[i]);break;case"m":h=parseInt(t[i]);break;case"s":I=parseInt(t[i]);break;case"z":b=t[i]}return b=parseInt((b+"00").slice(0,4)),"-"==t[0]&&(p*=-1,h*=-1,I*=-1,b*=-1),new Date(r,n,c,p,h,I,b)}
function CheckValueLimits(value,type,format,mmin,mmax) {switch(type) {case 0:value = parseFloat(value);mnin  = parseFloat(mmin);mmax  = parseFloat(mmax);break;case 1:value = parseInt(value, 16);mnin  = parseInt(mmin, 16);mmax  = parseInt(mmax, 16);break;case 2:value = GetDateByFormat(format, value);mmin  = GetDateByFormat(format, mmin);mmax  = GetDateByFormat(format, mmax);break;}return value >= mmin && value <= mmax;}
var xmlhttpGET  = null;
var xmlhttpPOST = null;
var gNewLoc='';function GetXML(e,t){if(window.XMLHttpRequest){xmlhttpGET=new XMLHttpRequest}else if(window.ActiveXObject){xmlhttpGET=new ActiveXObject("Microsoft.XMLHTTP")}if(xmlhttpGET!=null){xmlhttpGET.onreadystatechange=onResponse;if(t){xmlhttpGET.open("POST",e,true);xmlhttpGET.setRequestHeader("Content-type","application/x-www-form-urlencoded")}else{xmlhttpGET.open("GET",e,true)}xmlhttpGET.setRequestHeader("x-tecomat","data");xmlhttpGET.send(t)}else{alert("Your browser does not support XMLHTTP.")}}
function PostXML(e,t,l){if(window.XMLHttpRequest){xmlhttpPOST=new XMLHttpRequest}else if(window.ActiveXObject){xmlhttpPOST=new ActiveXObject("Microsoft.XMLHTTP")}if(xmlhttpPOST!=null){gNewLoc=l;xmlhttpPOST.onreadystatechange=onPostResponse;xmlhttpPOST.open("POST",e,true);xmlhttpPOST.setRequestHeader("Content-type","application/x-www-form-urlencoded");xmlhttpPOST.send(t)}else{alert("Your browser does not support XMLHTTP.")}}

var g_postInProgress=false;
var UpdateFileSubmit;
function TUpdateFileSubmit(div, name, size) {this.mDiv = div; this.mName = name; this.mSize = size; this.mNum = 0;this.refresh = function() {var sp = ['|','/','-','\\'];this.mDiv.innerHTML=this.mName+' '+sp[this.mNum%4]+' '+ this.mSize;this.mNum++;setTimeout("UpdateFileSubmit.refresh()", 500);};this.refresh();}
function postFileSubmit(sourceForm, colour, warning) {if(sourceForm[0].value) {if(!warning || confirm(warning)) {g_postInProgress = true;for( var x = 0; sourceForm.childNodes[x]; x++ ){if(sourceForm.childNodes[x].style) {if(sourceForm.childNodes[x].style.display == 'none') {sourceForm.childNodes[x].style.display = 'block';if(sourceForm[0].files) {UpdateFileSubmit = new TUpdateFileSubmit(sourceForm.childNodes[x],sourceForm[0].files[0].name,sourceForm[0].files[0].size+'B',0);}else{UpdateFileSubmit = new TUpdateFileSubmit(sourceForm.childNodes[x],sourceForm[0].value.replace(/.*(\/|\\)/, ''),'');}} else sourceForm.childNodes[x].style.display = 'none';}}sourceForm.submit();}else{sourceForm[0].value=''}}}
function SetInputEdited(i, e){var keynum;if(window.event){keynum=e.keyCode;}else if(e.which){keynum=e.which;}InputFocused[i-1]=1;if(keynum!=9&&keynum!=11&&keynum!=16&&keynum !=17){if(keynum==27){InputEdited[i-1]=0; }else{InputEdited[i-1]=1;document.getElementById('INPUT'+i).style.color='#FF0000';}}}
var InputEdited=[];var InputFocused=[];var gCI=[];var gLCI=[]; var gIC=[];var gWatchDog = 0; var gTemp;
function UpdateValue(input, x, color) {
if(input.value != x.getAttribute('VALUE')) input.value = x.getAttribute('VALUE');
if(input.style.color != color) input.style.color = color;
}
function onPostResponse() {
if(!xmlhttpPOST) return;
if(xmlhttpPOST.readyState != 4) return;
if(!xmlhttpPOST.status) return;
if(xmlhttpPOST.status != 200){
alert('Problem posting XML data ' + xmlhttpPOST.statusText + '(' + xmlhttpPOST.status + ')');
}else{if(gNewLoc)document.location.href=gNewLoc;}
}
function msetref(){if(typeof(Storage)!=='undefined'){if(sessionStorage.getItem('__crpg')!=document.location.href)sessionStorage.setItem('__prpg',sessionStorage.getItem('__crpg'));sessionStorage.setItem('__crpg',document.location.href);}}
window.addEventListener('load', msetref);
function BackToReferrer(){
if(typeof(Storage)!=='undefined'){var r = sessionStorage.getItem('__prpg').toLowerCase();if(r=='null'||r==document.location.href.toLowerCase()||r.search('login.xml')!=-1||r.search('logout.xml')!=-1) {
document.location.href='INDEX.XML';
}else{document.location.href=sessionStorage.getItem('__prpg');}}else{document.location.href='INDEX.XML';
}}
function onResponse() {
try {
gWatchDog++;
if(!xmlhttpGET) return;
if(xmlhttpGET.readyState != 4) return;
if(!xmlhttpGET.status) return;
if(xmlhttpGET.status != 200){
alert('Problem retrieving XML data ' + xmlhttpGET.statusText + '(' + xmlhttpGET.status + ')');
document.location.reload(true)
return;}
var access = xmlhttpGET.responseXML.documentElement.getElementsByTagName('ACCESS')[0]; if(!access || access.getAttribute('UCID') != 1714382798) {document.location.reload(true); return;}
var pd = '';
var x=xmlhttpGET.responseXML.documentElement.getElementsByTagName('INPUT');
if(x[0]) {
var Input1 = document.getElementById('INPUT1');
if(!InputEdited[0]) {
UpdateValue(Input1, x[0], '#000000');}
var Input2 = document.getElementById('INPUT2');
if(!InputEdited[1]) {
UpdateValue(Input2, x[1], '#000000');}
var Input3 = document.getElementById('INPUT3');
if(!InputEdited[2]) {
UpdateValue(Input3, x[2], '#000000');}
var Input4 = document.getElementById('INPUT4');
if(!InputEdited[3]) {
UpdateValue(Input4, x[3], '#000000');}
var Input5 = document.getElementById('INPUT5');
if(!InputEdited[4]) {
UpdateValue(Input5, x[4], '#000000');}
} else {document.location.reload(true); return;}
} catch(err) {console.log(err.message)}
if(pd!=''){setTimeout("GetXML('TUNING.XML','"+pd+"')",1);}else{setTimeout("GetXML('TUNING.XML')",1000);}}
function FunWatchDog() {
if(gWatchDog > 0 || g_postInProgress) {
gWatchDog = 0;
} else {
document.location.reload(true);
}
setTimeout("FunWatchDog()", 20000);
}

function PostXML1() {
var Input1 = document.getElementById('INPUT1');
document.getElementById('INPUT1x').style.visibility = 'hidden';if(InputEdited[0]) {
PostXML('TUNING.XML', encodeURIComponent(Input1.name+'='+Input1.value)); InputEdited[0] = 0;
}
}
function PostXML2() {
var Input2 = document.getElementById('INPUT2');
document.getElementById('INPUT2x').style.visibility = 'hidden';if(InputEdited[1]) {
PostXML('TUNING.XML', encodeURIComponent(Input2.name+'='+Input2.value)); InputEdited[1] = 0;
}
}
function PostXML3() {
var Input3 = document.getElementById('INPUT3');
document.getElementById('INPUT3x').style.visibility = 'hidden';if(InputEdited[2]) {
PostXML('TUNING.XML', encodeURIComponent(Input3.name+'='+Input3.value)); InputEdited[2] = 0;
}
}
function PostXML4() {
var Input4 = document.getElementById('INPUT4');
document.getElementById('INPUT4x').style.visibility = 'hidden';if(InputEdited[3]) {
PostXML('TUNING.XML', encodeURIComponent(Input4.name+'='+Input4.value)); InputEdited[3] = 0;
}
}
function PostXML5() {
var Input5 = document.getElementById('INPUT5');
document.getElementById('INPUT5x').style.visibility = 'hidden';if(InputEdited[4]) {
PostXML('TUNING.XML', encodeURIComponent(Input5.name+'='+Input5.value)); InputEdited[4] = 0;
}
}

function PostGlobal() {
}
