
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
var access = xmlhttpGET.responseXML.documentElement.getElementsByTagName('ACCESS')[0]; if(!access || access.getAttribute('UCID') != 1715075874) {document.location.reload(true); return;}
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
if(x[4].getAttribute('VALUE') == 0) {
Input5.style.display = 'none';
} else {
Input5.style.display = 'block';
}
var Input6 = document.getElementById('INPUT6');
if(x[4].getAttribute('VALUE') != 0) {
Input6.style.display = 'none';
} else {
Input6.style.display = 'block';
}
var Input7 = document.getElementById('INPUT7');
if(x[5].getAttribute('VALUE') == 0) {
Input7.style.display = 'none';
} else {
Input7.style.display = 'block';
}
var Input8 = document.getElementById('INPUT8');
if(x[5].getAttribute('VALUE') != 0) {
Input8.style.display = 'none';
} else {
Input8.style.display = 'block';
}
var Input9 = document.getElementById('INPUT9');
if(x[6].getAttribute('VALUE') == 0) {
Input9.style.display = 'none';
} else {
Input9.style.display = 'block';
}
var Input10 = document.getElementById('INPUT10');
if(x[6].getAttribute('VALUE') != 0) {
Input10.style.display = 'none';
} else {
Input10.style.display = 'block';
}
var Input11 = document.getElementById('INPUT11');
if(x[7].getAttribute('VALUE') == 0) {
Input11.style.display = 'none';
} else {
Input11.style.display = 'block';
}
var Input12 = document.getElementById('INPUT12');
if(x[7].getAttribute('VALUE') != 0) {
Input12.style.display = 'none';
} else {
Input12.style.display = 'block';
}
var Input13 = document.getElementById('INPUT13');
if(x[8].getAttribute('VALUE') == 0) {
Input13.style.display = 'none';
} else {
Input13.style.display = 'block';
}
var Input14 = document.getElementById('INPUT14');
if(x[8].getAttribute('VALUE') != 0) {
Input14.style.display = 'none';
} else {
Input14.style.display = 'block';
}
var Input15 = document.getElementById('INPUT15');
if(x[9].getAttribute('VALUE') != 0) {
Input15.style.visibility = 'hidden';
} else {
Input15.style.visibility = 'visible';
}
var Input16 = document.getElementById('INPUT16');
if(x[9].getAttribute('VALUE') == 0) {
Input16.style.visibility = 'hidden';
} else {
Input16.style.visibility = 'visible';
}
var Input17 = document.getElementById('INPUT17');
if(x[10].getAttribute('VALUE') == 0) {
Input17.style.display = 'none';
} else {
Input17.style.display = 'block';
}
var Input18 = document.getElementById('INPUT18');
if(x[10].getAttribute('VALUE') != 0) {
Input18.style.display = 'none';
} else {
Input18.style.display = 'block';
}
var Input19 = document.getElementById('INPUT19');
if(!InputEdited[18]) {
UpdateValue(Input19, x[11], '#000000');}
var Input20 = document.getElementById('INPUT20');
if(!InputEdited[19]) {
UpdateValue(Input20, x[12], '#000000');}
var Input21 = document.getElementById('INPUT21');
if(!InputEdited[20]) {
UpdateValue(Input21, x[13], '#000000');}
var Input22 = document.getElementById('INPUT22');
if(!InputEdited[21]) {
UpdateValue(Input22, x[14], '#000000');}
var Input23 = document.getElementById('INPUT23');
if(!InputEdited[22]) {
UpdateValue(Input23, x[15], '#000000');}
var Input24 = document.getElementById('INPUT24');
if(!InputEdited[23]) {
UpdateValue(Input24, x[16], '#000000');}
var Input25 = document.getElementById('INPUT25');
if(!InputEdited[24]) {
UpdateValue(Input25, x[17], '#000000');}
var Input26 = document.getElementById('INPUT26');
if(!InputEdited[25]) {
UpdateValue(Input26, x[18], '#000000');}
var Input27 = document.getElementById('INPUT27');
if(!InputEdited[26]) {
UpdateValue(Input27, x[19], '#000000');}
var Input28 = document.getElementById('INPUT28');
if(!InputEdited[27]) {
UpdateValue(Input28, x[20], '#000000');}
var Input29 = document.getElementById('INPUT29');
if(!InputEdited[28]) {
UpdateValue(Input29, x[21], '#000000');}
var Input30 = document.getElementById('INPUT30');
if(!InputEdited[29]) {
UpdateValue(Input30, x[22], '#000000');}
var Input31 = document.getElementById('INPUT31');
if(!InputEdited[30]) {
UpdateValue(Input31, x[23], '#000000');}
var Input32 = document.getElementById('INPUT32');
if(!InputEdited[31]) {
UpdateValue(Input32, x[24], '#000000');}
var Input33 = document.getElementById('INPUT33');
if(!InputEdited[32]) {
UpdateValue(Input33, x[25], '#000000');}
var Input34 = document.getElementById('INPUT34');
if(!InputEdited[33]) {
UpdateValue(Input34, x[26], '#000000');}
var Input35 = document.getElementById('INPUT35');
if(!InputEdited[34]) {
UpdateValue(Input35, x[27], '#000000');}
var Input36 = document.getElementById('INPUT36');
if(!InputEdited[35]) {
UpdateValue(Input36, x[28], '#000000');}
var Input37 = document.getElementById('INPUT37');
if(!InputEdited[36]) {
UpdateValue(Input37, x[29], '#000000');}
var Input38 = document.getElementById('INPUT38');
if(!InputEdited[37]) {
UpdateValue(Input38, x[30], '#000000');}
var Input39 = document.getElementById('INPUT39');
if(!InputEdited[38]) {
UpdateValue(Input39, x[31], '#000000');}
var Input40 = document.getElementById('INPUT40');
if(!InputEdited[39]) {
UpdateValue(Input40, x[32], '#000000');}
var Input41 = document.getElementById('INPUT41');
if(!InputEdited[40]) {
UpdateValue(Input41, x[33], '#000000');}
} else {document.location.reload(true); return;}
} catch(err) {console.log(err.message)}
if(pd!=''){setTimeout("GetXML('WATERING.XML','"+pd+"')",1);}else{setTimeout("GetXML('WATERING.XML')",1000);}}
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
PostXML('WATERING.XML', encodeURIComponent(Input1.name+'='+Input1.value)); InputEdited[0] = 0;
}
}
function PostXML2() {
var Input2 = document.getElementById('INPUT2');
document.getElementById('INPUT2x').style.visibility = 'hidden';if(InputEdited[1]) {
PostXML('WATERING.XML', encodeURIComponent(Input2.name+'='+Input2.value)); InputEdited[1] = 0;
}
}
function PostXML3() {
var Input3 = document.getElementById('INPUT3');
document.getElementById('INPUT3x').style.visibility = 'hidden';if(InputEdited[2]) {
PostXML('WATERING.XML', encodeURIComponent(Input3.name+'='+Input3.value)); InputEdited[2] = 0;
}
}
function PostXML4() {
var Input4 = document.getElementById('INPUT4');
document.getElementById('INPUT4x').style.visibility = 'hidden';if(InputEdited[3]) {
PostXML('WATERING.XML', encodeURIComponent(Input4.name+'='+Input4.value)); InputEdited[3] = 0;
}
}
function PostXML5() {
PostXML('WATERING.XML', encodeURIComponent('__R18584.1_BOOL_i=0')); 
SetBg('INPUT5', '');
setTimeout("SetBg('INPUT5', 'SW747C_1.PNG');",500);
}
function PostXML6() {
PostXML('WATERING.XML', encodeURIComponent('__R18584.1_BOOL_i=1')); 
SetBg('INPUT6', '');
setTimeout("SetBg('INPUT6', 'SW7D18_1.PNG');",500);
}
function PostXML7() {
PostXML('WATERING.XML', encodeURIComponent('__R18688.0_BOOL_i=0')); 
SetBg('INPUT7', '');
setTimeout("SetBg('INPUT7', 'SW747C_1.PNG');",500);
}
function PostXML8() {
PostXML('WATERING.XML', encodeURIComponent('__R18688.0_BOOL_i=1')); 
SetBg('INPUT8', '');
setTimeout("SetBg('INPUT8', 'SW7D18_1.PNG');",500);
}
function PostXML9() {
PostXML('WATERING.XML', encodeURIComponent('__R18688.1_BOOL_i=0')); 
SetBg('INPUT9', '');
setTimeout("SetBg('INPUT9', 'SW747C_1.PNG');",500);
}
function PostXML10() {
PostXML('WATERING.XML', encodeURIComponent('__R18688.1_BOOL_i=1')); 
SetBg('INPUT10', '');
setTimeout("SetBg('INPUT10', 'SW7D18_1.PNG');",500);
}
function PostXML11() {
PostXML('WATERING.XML', encodeURIComponent('__R18688.2_BOOL_i=0')); 
SetBg('INPUT11', '');
setTimeout("SetBg('INPUT11', 'SW747C_1.PNG');",500);
}
function PostXML12() {
PostXML('WATERING.XML', encodeURIComponent('__R18688.2_BOOL_i=1')); 
SetBg('INPUT12', '');
setTimeout("SetBg('INPUT12', 'SW7D18_1.PNG');",500);
}
function PostXML13() {
PostXML('WATERING.XML', encodeURIComponent('__R18584.0_BOOL_i=0')); 
SetBg('INPUT13', '');
setTimeout("SetBg('INPUT13', 'SW747C_1.PNG');",500);
}
function PostXML14() {
PostXML('WATERING.XML', encodeURIComponent('__R18584.0_BOOL_i=1')); 
SetBg('INPUT14', '');
setTimeout("SetBg('INPUT14', 'SW7D18_1.PNG');",500);
}
function PostXML17() {
PostXML('WATERING.XML', encodeURIComponent('__R18584.2_BOOL_i=0')); 
SetBg('INPUT17', '');
setTimeout("SetBg('INPUT17', 'SW747C_1.PNG');",500);
}
function PostXML18() {
PostXML('WATERING.XML', encodeURIComponent('__R18584.2_BOOL_i=1')); 
SetBg('INPUT18', '');
setTimeout("SetBg('INPUT18', 'SW7D18_1.PNG');",500);
}
function PostXML26() {
var Input26 = document.getElementById('INPUT26');
document.getElementById('INPUT26x').style.visibility = 'hidden';if(InputEdited[25]) {
PostXML('WATERING.XML', encodeURIComponent(Input26.name+'='+Input26.value)); InputEdited[25] = 0;
}
}
function PostXML27() {
var Input27 = document.getElementById('INPUT27');
document.getElementById('INPUT27x').style.visibility = 'hidden';if(InputEdited[26]) {
PostXML('WATERING.XML', encodeURIComponent(Input27.name+'='+Input27.value)); InputEdited[26] = 0;
}
}
function PostXML28() {
var Input28 = document.getElementById('INPUT28');
document.getElementById('INPUT28x').style.visibility = 'hidden';if(InputEdited[27]) {
PostXML('WATERING.XML', encodeURIComponent(Input28.name+'='+Input28.value)); InputEdited[27] = 0;
}
}
function PostXML29() {
var Input29 = document.getElementById('INPUT29');
document.getElementById('INPUT29x').style.visibility = 'hidden';if(InputEdited[28]) {
PostXML('WATERING.XML', encodeURIComponent(Input29.name+'='+Input29.value)); InputEdited[28] = 0;
}
}
function PostXML36() {
var Input36 = document.getElementById('INPUT36');
document.getElementById('INPUT36x').style.visibility = 'hidden';if(InputEdited[35]) {
PostXML('WATERING.XML', encodeURIComponent(Input36.name+'='+Input36.value)); InputEdited[35] = 0;
}
}
function PostXML37() {
var Input37 = document.getElementById('INPUT37');
document.getElementById('INPUT37x').style.visibility = 'hidden';if(InputEdited[36]) {
PostXML('WATERING.XML', encodeURIComponent(Input37.name+'='+Input37.value)); InputEdited[36] = 0;
}
}
function PostXML38() {
var Input38 = document.getElementById('INPUT38');
document.getElementById('INPUT38x').style.visibility = 'hidden';if(InputEdited[37]) {
PostXML('WATERING.XML', encodeURIComponent(Input38.name+'='+Input38.value)); InputEdited[37] = 0;
}
}
function PostXML39() {
var Input39 = document.getElementById('INPUT39');
document.getElementById('INPUT39x').style.visibility = 'hidden';if(InputEdited[38]) {
PostXML('WATERING.XML', encodeURIComponent(Input39.name+'='+Input39.value)); InputEdited[38] = 0;
}
}
function PostXML40() {
var Input40 = document.getElementById('INPUT40');
document.getElementById('INPUT40x').style.visibility = 'hidden';if(InputEdited[39]) {
PostXML('WATERING.XML', encodeURIComponent(Input40.name+'='+Input40.value)); InputEdited[39] = 0;
}
}

function PostGlobal() {
var Input19 = document.getElementById('INPUT19');
var Input20 = document.getElementById('INPUT20');
var Input21 = document.getElementById('INPUT21');
var Input22 = document.getElementById('INPUT22');
var Input23 = document.getElementById('INPUT23');
var Input24 = document.getElementById('INPUT24');
var Input25 = document.getElementById('INPUT25');
var Input30 = document.getElementById('INPUT30');
var Input31 = document.getElementById('INPUT31');
var Input32 = document.getElementById('INPUT32');
var Input33 = document.getElementById('INPUT33');
var Input34 = document.getElementById('INPUT34');
var Input35 = document.getElementById('INPUT35');
var Input41 = document.getElementById('INPUT41');
PostXML('WATERING.XML', (InputEdited[18] ? encodeURIComponent(Input19.name)+'='+encodeURIComponent(Input19.value)+'&' : '')+(InputEdited[19] ? encodeURIComponent(Input20.name)+'='+encodeURIComponent(Input20.value)+'&' : '')+(InputEdited[20] ? encodeURIComponent(Input21.name)+'='+encodeURIComponent(Input21.value)+'&' : '')+(InputEdited[21] ? encodeURIComponent(Input22.name)+'='+encodeURIComponent(Input22.value)+'&' : '')+(InputEdited[22] ? encodeURIComponent(Input23.name)+'='+encodeURIComponent(Input23.value)+'&' : '')+(InputEdited[23] ? encodeURIComponent(Input24.name)+'='+encodeURIComponent(Input24.value)+'&' : '')+(InputEdited[24] ? encodeURIComponent(Input25.name)+'='+encodeURIComponent(Input25.value)+'&' : '')+(InputEdited[29] ? encodeURIComponent(Input30.name)+'='+encodeURIComponent(Input30.value)+'&' : '')+(InputEdited[30] ? encodeURIComponent(Input31.name)+'='+encodeURIComponent(Input31.value)+'&' : '')+(InputEdited[31] ? encodeURIComponent(Input32.name)+'='+encodeURIComponent(Input32.value)+'&' : '')+(InputEdited[32] ? encodeURIComponent(Input33.name)+'='+encodeURIComponent(Input33.value)+'&' : '')+(InputEdited[33] ? encodeURIComponent(Input34.name)+'='+encodeURIComponent(Input34.value)+'&' : '')+(InputEdited[34] ? encodeURIComponent(Input35.name)+'='+encodeURIComponent(Input35.value)+'&' : '')+(InputEdited[40] ? encodeURIComponent(Input41.name)+'='+encodeURIComponent(Input41.value)+'&' : ''));
InputEdited[18]=0;
InputEdited[19]=0;
InputEdited[20]=0;
InputEdited[21]=0;
InputEdited[22]=0;
InputEdited[23]=0;
InputEdited[24]=0;
InputEdited[29]=0;
InputEdited[30]=0;
InputEdited[31]=0;
InputEdited[32]=0;
InputEdited[33]=0;
InputEdited[34]=0;
InputEdited[40]=0;
}
