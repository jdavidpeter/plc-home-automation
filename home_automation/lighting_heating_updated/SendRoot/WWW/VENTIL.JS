
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
var access = xmlhttpGET.responseXML.documentElement.getElementsByTagName('ACCESS')[0]; if(!access || access.getAttribute('UCID') != 1667230568) {document.location.reload(true); return;}
var pd = '';
var x=xmlhttpGET.responseXML.documentElement.getElementsByTagName('INPUT');
if(x[0]) {
var Input1 = document.getElementById('INPUT1');
if(!InputEdited[0]) {
UpdateValue(Input1, x[0], '#008000');}
var Input2 = document.getElementById('INPUT2');
if(!InputEdited[1]) {
UpdateValue(Input2, x[1], '#008000');}
var Input3 = document.getElementById('INPUT3');
if(!InputEdited[2]) {
UpdateValue(Input3, x[2], '#008000');}
var Input4 = document.getElementById('INPUT4');
if(!InputEdited[3]) {
UpdateValue(Input4, x[3], '#008000');}
var Input5 = document.getElementById('INPUT5');
if(!InputEdited[4]) {
UpdateValue(Input5, x[4], '#008000');}
var Input6 = document.getElementById('INPUT6');
if(!InputEdited[5]) {
UpdateValue(Input6, x[5], '#0080FF');}
var Input7 = document.getElementById('INPUT7');
if(x[6].getAttribute('VALUE') == '0') {
Input7.style.visibility = 'hidden';
} else {
Input7.style.visibility = 'visible';
}
var Input8 = document.getElementById('INPUT8');
if(!InputEdited[7]) {
UpdateValue(Input8, x[7], '#008000');}
var Input9 = document.getElementById('INPUT9');
if(!InputEdited[8]) {
UpdateValue(Input9, x[8], '#008000');}
var Input10 = document.getElementById('INPUT10');
if(!InputEdited[9]) {
UpdateValue(Input10, x[9], '#000000');}
var Input11 = document.getElementById('INPUT11');
var Input11h = document.getElementById('INPUT11h');
if(Input11h) { vz = x[10].getAttribute('VALUE') == '0'; iz = Input11h.value == '0';
if(vz == iz) {
if(vz) {
Input11h.value = '1';
Input11.style.backgroundImage = 'url("IMAGES/FAN1_O_2.PNG")';
if(Input11.getAttribute('value') != null) {Input11.value = '';} else {}
} else {
Input11h.value = '0';
Input11.style.backgroundImage = 'url("IMAGES/FAN1_O_1.PNG")';
if(Input11.getAttribute('value') != null) {Input11.value = '';
} else {}
}}} else {
if(x[10].getAttribute('VALUE') == '0') {
SetBg('INPUT11', 'FAN1_O_2.PNG');
} else {
SetBg('INPUT11', 'FAN1_O_1.PNG');
}}
var Input12 = document.getElementById('INPUT12');
if(!InputEdited[11]) {
UpdateValue(Input12, x[11], '#000000');}
var Input13 = document.getElementById('INPUT13');
if(!InputEdited[12]) {
UpdateValue(Input13, x[12], '#008000');}
var Input14 = document.getElementById('INPUT14');
if(x[13].getAttribute('VALUE') == '0') {
Input14.style.visibility = 'hidden';
} else {
Input14.style.visibility = 'visible';
}
var Input15 = document.getElementById('INPUT15');
if(x[14].getAttribute('VALUE') != '0') {
Input15.style.visibility = 'hidden';
} else {
Input15.style.visibility = 'visible';
}
var Input16 = document.getElementById('INPUT16');
if(x[14].getAttribute('VALUE') == '0') {
Input16.style.visibility = 'hidden';
} else {
Input16.style.visibility = 'visible';
}
var Input17 = document.getElementById('INPUT17');
var Input17h = document.getElementById('INPUT17h');
if(Input17h) { vz = x[15].getAttribute('VALUE') == '0'; iz = Input17h.value == '0';
if(vz == iz) {
if(vz) {
Input17h.value = '1';
Input17.style.backgroundImage = 'url("IMAGES/FAN1_O_2.PNG")';
if(Input17.getAttribute('value') != null) {Input17.value = '';} else {}
} else {
Input17h.value = '0';
Input17.style.backgroundImage = 'url("IMAGES/FAN1_O_1.PNG")';
if(Input17.getAttribute('value') != null) {Input17.value = '';
} else {}
}}} else {
if(x[15].getAttribute('VALUE') == '0') {
SetBg('INPUT17', 'FAN1_O_2.PNG');
} else {
SetBg('INPUT17', 'FAN1_O_1.PNG');
}}
var Input18 = document.getElementById('INPUT18');
var Input18h = document.getElementById('INPUT18h');
if(Input18h) { vz = x[16].getAttribute('VALUE') == '0'; iz = Input18h.value == '0';
if(vz == iz) {
if(vz) {
Input18h.value = '1';
Input18.style.backgroundImage = 'url("IMAGES/FAN1_O_2.PNG")';
if(Input18.getAttribute('value') != null) {Input18.value = '';} else {}
} else {
Input18h.value = '0';
Input18.style.backgroundImage = 'url("IMAGES/FAN1_O_1.PNG")';
if(Input18.getAttribute('value') != null) {Input18.value = '';
} else {}
}}} else {
if(x[16].getAttribute('VALUE') == '0') {
SetBg('INPUT18', 'FAN1_O_2.PNG');
} else {
SetBg('INPUT18', 'FAN1_O_1.PNG');
}}
var Input19 = document.getElementById('INPUT19');
if(!InputEdited[18]) {
UpdateValue(Input19, x[15], '#008000');}
var Input20 = document.getElementById('INPUT20');
if(!InputEdited[19]) {
UpdateValue(Input20, x[16], '#008000');}
var Input21 = document.getElementById('INPUT21');
if(x[17].getAttribute('VALUE') == '0') {
Input21.style.display = 'none';
} else {
Input21.style.display = 'block';
}
var Input22 = document.getElementById('INPUT22');
if(x[17].getAttribute('VALUE') != '0') {
Input22.style.display = 'none';
} else {
Input22.style.display = 'block';
}
var Input23 = document.getElementById('INPUT23');
if(x[18].getAttribute('VALUE') == '0') {
Input23.style.display = 'none';
} else {
Input23.style.display = 'block';
}
var Input24 = document.getElementById('INPUT24');
if(x[18].getAttribute('VALUE') != '0') {
Input24.style.display = 'none';
} else {
Input24.style.display = 'block';
}
} else {document.location.reload(true); return;}
} catch(err) {console.log(err.message)}
if(pd!=''){setTimeout("GetXML('VENTIL.XML','"+pd+"')",1);}else{setTimeout("GetXML('VENTIL.XML')",1000);}}
function FunWatchDog() {
if(gWatchDog > 0 || g_postInProgress) {
gWatchDog = 0;
} else {
document.location.reload(true);
}
setTimeout("FunWatchDog()", 20000);
}

function PostXML10() {
var Input10 = document.getElementById('INPUT10');
document.getElementById('INPUT10x').style.visibility = 'hidden';if(InputEdited[9]) {
PostXML('VENTIL.XML', encodeURIComponent(Input10.name+'='+Input10.value)); InputEdited[9] = 0;
}
}
function PostXML11() {
var Input11h = document.getElementById('INPUT11h');
PostXML('VENTIL.XML', encodeURIComponent(Input11h.name+'='+Input11h.value));
}
function PostXML12() {
var Input12 = document.getElementById('INPUT12');
document.getElementById('INPUT12x').style.visibility = 'hidden';if(InputEdited[11]) {
PostXML('VENTIL.XML', encodeURIComponent(Input12.name+'='+Input12.value)); InputEdited[11] = 0;
}
}
function PostXML17() {
var Input17h = document.getElementById('INPUT17h');
PostXML('VENTIL.XML', encodeURIComponent(Input17h.name+'='+Input17h.value));
}
function PostXML18() {
var Input18h = document.getElementById('INPUT18h');
PostXML('VENTIL.XML', encodeURIComponent(Input18h.name+'='+Input18h.value));
}
function PostXML21() {
PostXML('VENTIL.XML', encodeURIComponent('__R18185.3_BOOL_i=0')); 
SetBg('INPUT21', '');
setTimeout("SetBg('INPUT21', 'SW747C_1.PNG');",500);
}
function PostXML22() {
PostXML('VENTIL.XML', encodeURIComponent('__R18185.3_BOOL_i=1')); 
SetBg('INPUT22', '');
setTimeout("SetBg('INPUT22', 'SW7D18_1.PNG');",500);
}
function PostXML23() {
PostXML('VENTIL.XML', encodeURIComponent('__R18185.4_BOOL_i=0')); 
SetBg('INPUT23', '');
setTimeout("SetBg('INPUT23', 'SW747C_1.PNG');",500);
}
function PostXML24() {
PostXML('VENTIL.XML', encodeURIComponent('__R18185.4_BOOL_i=1')); 
SetBg('INPUT24', '');
setTimeout("SetBg('INPUT24', 'SW7D18_1.PNG');",500);
}

function PostGlobal() {
var Input1 = document.getElementById('INPUT1');
var Input2 = document.getElementById('INPUT2');
var Input3 = document.getElementById('INPUT3');
var Input4 = document.getElementById('INPUT4');
var Input5 = document.getElementById('INPUT5');
var Input6 = document.getElementById('INPUT6');
var Input8 = document.getElementById('INPUT8');
var Input9 = document.getElementById('INPUT9');
var Input13 = document.getElementById('INPUT13');
var Input19 = document.getElementById('INPUT19');
var Input20 = document.getElementById('INPUT20');
PostXML('VENTIL.XML', (InputEdited[0] ? encodeURIComponent(Input1.name)+'='+encodeURIComponent(Input1.value)+'&' : '')+(InputEdited[1] ? encodeURIComponent(Input2.name)+'='+encodeURIComponent(Input2.value)+'&' : '')+(InputEdited[2] ? encodeURIComponent(Input3.name)+'='+encodeURIComponent(Input3.value)+'&' : '')+(InputEdited[3] ? encodeURIComponent(Input4.name)+'='+encodeURIComponent(Input4.value)+'&' : '')+(InputEdited[4] ? encodeURIComponent(Input5.name)+'='+encodeURIComponent(Input5.value)+'&' : '')+(InputEdited[5] ? encodeURIComponent(Input6.name)+'='+encodeURIComponent(Input6.value)+'&' : '')+(InputEdited[7] ? encodeURIComponent(Input8.name)+'='+encodeURIComponent(Input8.value)+'&' : '')+(InputEdited[8] ? encodeURIComponent(Input9.name)+'='+encodeURIComponent(Input9.value)+'&' : '')+(InputEdited[12] ? encodeURIComponent(Input13.name)+'='+encodeURIComponent(Input13.value)+'&' : '')+(InputEdited[18] ? encodeURIComponent(Input19.name)+'='+encodeURIComponent(Input19.value)+'&' : '')+(InputEdited[19] ? encodeURIComponent(Input20.name)+'='+encodeURIComponent(Input20.value)+'&' : ''));
InputEdited[0]=0;
InputEdited[1]=0;
InputEdited[2]=0;
InputEdited[3]=0;
InputEdited[4]=0;
InputEdited[5]=0;
InputEdited[7]=0;
InputEdited[8]=0;
InputEdited[12]=0;
InputEdited[18]=0;
InputEdited[19]=0;
}
