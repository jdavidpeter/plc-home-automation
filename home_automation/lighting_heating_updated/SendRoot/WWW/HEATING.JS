
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
var access = xmlhttpGET.responseXML.documentElement.getElementsByTagName('ACCESS')[0]; if(!access || access.getAttribute('UCID') != 1667227718) {document.location.reload(true); return;}
var pd = '';
var x=xmlhttpGET.responseXML.documentElement.getElementsByTagName('INPUT');
if(x[0]) {
var Input1 = document.getElementById('INPUT1');
if(!InputEdited[0]) {
UpdateValue(Input1, x[0], '#000000');}
var Input2 = document.getElementById('INPUT2');
if(!InputEdited[1]) {
UpdateValue(Input2, x[1], '#008000');}
var Input3 = document.getElementById('INPUT3');
var Input3h = document.getElementById('INPUT3h');
if(Input3h) { vz = x[2].getAttribute('VALUE') == '0'; iz = Input3h.value == '0';
if(vz == iz) {
if(vz) {
Input3h.value = '1';
Input3.style.backgroundImage = 'url("IMAGES/HEAT1__1.PNG")';
if(Input3.getAttribute('value') != null) {Input3.value = 'Kazán kikapcsolva';} else {Input3.innerHTML = 'Kazán kikapcsolva';}
} else {
Input3h.value = '0';
Input3.style.backgroundImage = 'url("IMAGES/HEAT1__2.PNG")';
if(Input3.getAttribute('value') != null) {Input3.value = 'Kazán bekapcsolva';
} else {Input3.innerHTML = 'Kazán bekapcsolva';}
}}} else {
if(x[2].getAttribute('VALUE') == '0') {
SetBg('INPUT3', 'HEAT1__1.PNG');
Input3.innerHTML = 'Kazán kikapcsolva';
} else {
SetBg('INPUT3', 'HEAT1__2.PNG');
Input3.innerHTML = 'Kazán bekapcsolva';
}}
var Input4 = document.getElementById('INPUT4');
if(!InputEdited[3]) {
UpdateValue(Input4, x[3], '#000000');}
var Input5 = document.getElementById('INPUT5');
if(!InputEdited[4]) {
UpdateValue(Input5, x[4], '#000000');}
var Input6 = document.getElementById('INPUT6');
if(!InputEdited[5]) {
UpdateValue(Input6, x[5], '#000000');}
var Input7 = document.getElementById('INPUT7');
if(!InputEdited[6]) {
UpdateValue(Input7, x[6], '#008000');}
var Input8 = document.getElementById('INPUT8');
if(!InputEdited[7]) {
UpdateValue(Input8, x[7], '#000000');}
var Input9 = document.getElementById('INPUT9');
if(!InputEdited[8]) {
UpdateValue(Input9, x[8], '#008000');}
var Input10 = document.getElementById('INPUT10');
if(!InputEdited[9]) {
UpdateValue(Input10, x[9], '#000000');}
var Input11 = document.getElementById('INPUT11');
if(x[10].getAttribute('VALUE') == '0') {
Input11.style.display = 'none';
} else {
Input11.style.display = 'block';
}
var Input12 = document.getElementById('INPUT12');
if(x[10].getAttribute('VALUE') != '0') {
Input12.style.display = 'none';
} else {
Input12.style.display = 'block';
}
var Input13 = document.getElementById('INPUT13');
if(x[11].getAttribute('VALUE') == '0') {
Input13.style.display = 'none';
} else {
Input13.style.display = 'block';
}
var Input14 = document.getElementById('INPUT14');
if(x[11].getAttribute('VALUE') != '0') {
Input14.style.display = 'none';
} else {
Input14.style.display = 'block';
}
var Input15 = document.getElementById('INPUT15');
if(!InputEdited[14]) {
UpdateValue(Input15, x[12], '#000000');}
var Input16 = document.getElementById('INPUT16');
if(!InputEdited[15]) {
UpdateValue(Input16, x[13], '#000000');}
var Input17 = document.getElementById('INPUT17');
if(!InputEdited[16]) {
UpdateValue(Input17, x[14], '#008000');}
var Input18 = document.getElementById('INPUT18');
if(!InputEdited[17]) {
UpdateValue(Input18, x[15], '#000000');}
var Input19 = document.getElementById('INPUT19');
if(!InputEdited[18]) {
UpdateValue(Input19, x[16], '#008000');}
var Input20 = document.getElementById('INPUT20');
if(!InputEdited[19]) {
UpdateValue(Input20, x[17], '#000000');}
var Input21 = document.getElementById('INPUT21');
if(!InputEdited[20]) {
UpdateValue(Input21, x[18], '#008000');}
var Input22 = document.getElementById('INPUT22');
if(!InputEdited[21]) {
UpdateValue(Input22, x[19], '#000000');}
var Input23 = document.getElementById('INPUT23');
if(!InputEdited[22]) {
UpdateValue(Input23, x[20], '#008000');}
var Input24 = document.getElementById('INPUT24');
if(x[21].getAttribute('VALUE') == '0') {
Input24.style.visibility = 'hidden';
} else {
Input24.style.visibility = 'visible';
}
var Input25 = document.getElementById('INPUT25');
if(x[22].getAttribute('VALUE') == '0') {
Input25.style.visibility = 'hidden';
} else {
Input25.style.visibility = 'visible';
}
var Input26 = document.getElementById('INPUT26');
if(x[23].getAttribute('VALUE') == '0') {
Input26.style.visibility = 'hidden';
} else {
Input26.style.visibility = 'visible';
}
var Input27 = document.getElementById('INPUT27');
if(x[24].getAttribute('VALUE') == '0') {
Input27.style.visibility = 'hidden';
} else {
Input27.style.visibility = 'visible';
}
var Input28 = document.getElementById('INPUT28');
if(x[25].getAttribute('VALUE') == '0') {
Input28.style.visibility = 'hidden';
} else {
Input28.style.visibility = 'visible';
}
var Input29 = document.getElementById('INPUT29');
if(x[26].getAttribute('VALUE') == '0') {
Input29.style.visibility = 'hidden';
} else {
Input29.style.visibility = 'visible';
}
var Input30 = document.getElementById('INPUT30');
if(x[27].getAttribute('VALUE') == '0') {
Input30.style.visibility = 'hidden';
} else {
Input30.style.visibility = 'visible';
}
var Input31 = document.getElementById('INPUT31');
if(!InputEdited[30]) {
UpdateValue(Input31, x[28], '#000000');}
var Input32 = document.getElementById('INPUT32');
if(!InputEdited[31]) {
UpdateValue(Input32, x[29], '#000000');}
var Input33 = document.getElementById('INPUT33');
if(!InputEdited[32]) {
UpdateValue(Input33, x[30], '#000000');}
var Input34 = document.getElementById('INPUT34');
if(x[31].getAttribute('VALUE') == '0') {
Input34.style.visibility = 'hidden';
} else {
Input34.style.visibility = 'visible';
}
var Input35 = document.getElementById('INPUT35');
if(x[32].getAttribute('VALUE') == '0') {
Input35.style.visibility = 'hidden';
} else {
Input35.style.visibility = 'visible';
}
var Input36 = document.getElementById('INPUT36');
if(x[33].getAttribute('VALUE') == '0') {
Input36.style.visibility = 'hidden';
} else {
Input36.style.visibility = 'visible';
}
var Input37 = document.getElementById('INPUT37');
if(!InputEdited[36]) {
UpdateValue(Input37, x[34], '#000000');}
var Input38 = document.getElementById('INPUT38');
if(!InputEdited[37]) {
UpdateValue(Input38, x[35], '#000000');}
var Input39 = document.getElementById('INPUT39');
if(!InputEdited[38]) {
UpdateValue(Input39, x[36], '#000000');}
var Input40 = document.getElementById('INPUT40');
if(!InputEdited[39]) {
UpdateValue(Input40, x[37], '#000000');}
var Input41 = document.getElementById('INPUT41');
if(!InputEdited[40]) {
UpdateValue(Input41, x[38], '#008000');}
var Input42 = document.getElementById('INPUT42');
if(x[39].getAttribute('VALUE') == '0') {
Input42.style.visibility = 'hidden';
} else {
Input42.style.visibility = 'visible';
}
var Input43 = document.getElementById('INPUT43');
if(!InputEdited[42]) {
UpdateValue(Input43, x[40], '#000000');}
var Input44 = document.getElementById('INPUT44');
if(x[41].getAttribute('VALUE') == '0') {
Input44.style.display = 'none';
} else {
Input44.style.display = 'block';
}
var Input45 = document.getElementById('INPUT45');
if(x[41].getAttribute('VALUE') != '0') {
Input45.style.display = 'none';
} else {
Input45.style.display = 'block';
}
var Input46 = document.getElementById('INPUT46');
if(x[42].getAttribute('VALUE') == '0') {
Input46.style.display = 'none';
} else {
Input46.style.display = 'block';
}
var Input47 = document.getElementById('INPUT47');
if(x[42].getAttribute('VALUE') != '0') {
Input47.style.display = 'none';
} else {
Input47.style.display = 'block';
}
var Input48 = document.getElementById('INPUT48');
if(!InputEdited[47]) {
UpdateValue(Input48, x[43], '#000000');}
var Input49 = document.getElementById('INPUT49');
if(!InputEdited[48]) {
UpdateValue(Input49, x[44], '#008000');}
var Input50 = document.getElementById('INPUT50');
if(x[45].getAttribute('VALUE') == '0') {
Input50.style.visibility = 'hidden';
} else {
Input50.style.visibility = 'visible';
}
var Input51 = document.getElementById('INPUT51');
if(!InputEdited[50]) {
UpdateValue(Input51, x[15], '#000000');}
var Input52 = document.getElementById('INPUT52');
if(!InputEdited[51]) {
UpdateValue(Input52, x[16], '#008000');}
var Input53 = document.getElementById('INPUT53');
if(x[25].getAttribute('VALUE') == '0') {
Input53.style.visibility = 'hidden';
} else {
Input53.style.visibility = 'visible';
}
} else {document.location.reload(true); return;}
} catch(err) {console.log(err.message)}
if(pd!=''){setTimeout("GetXML('HEATING.XML','"+pd+"')",1);}else{setTimeout("GetXML('HEATING.XML')",1000);}}
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
PostXML('HEATING.XML', encodeURIComponent(Input1.name+'='+Input1.value)); InputEdited[0] = 0;
}
}
function PostXML3() {
var Input3h = document.getElementById('INPUT3h');
PostXML('HEATING.XML', encodeURIComponent(Input3h.name+'='+Input3h.value));
}
function PostXML6() {
var Input6 = document.getElementById('INPUT6');
document.getElementById('INPUT6x').style.visibility = 'hidden';if(InputEdited[5]) {
PostXML('HEATING.XML', encodeURIComponent(Input6.name+'='+Input6.value)); InputEdited[5] = 0;
}
}
function PostXML8() {
var Input8 = document.getElementById('INPUT8');
document.getElementById('INPUT8x').style.visibility = 'hidden';if(InputEdited[7]) {
PostXML('HEATING.XML', encodeURIComponent(Input8.name+'='+Input8.value)); InputEdited[7] = 0;
}
}
function PostXML11() {
PostXML('HEATING.XML', encodeURIComponent('__R15769.0_BOOL_i=0')); 
SetBg('INPUT11', '');
setTimeout("SetBg('INPUT11', 'SW747C_1.PNG');",500);
}
function PostXML12() {
PostXML('HEATING.XML', encodeURIComponent('__R15769.0_BOOL_i=1')); 
SetBg('INPUT12', '');
setTimeout("SetBg('INPUT12', 'SW7D18_1.PNG');",500);
}
function PostXML13() {
PostXML('HEATING.XML', encodeURIComponent('__R15769.1_BOOL_i=0')); 
SetBg('INPUT13', '');
setTimeout("SetBg('INPUT13', 'SW747C_1.PNG');",500);
}
function PostXML14() {
PostXML('HEATING.XML', encodeURIComponent('__R15769.1_BOOL_i=1')); 
SetBg('INPUT14', '');
setTimeout("SetBg('INPUT14', 'SW7D18_1.PNG');",500);
}
function PostXML16() {
var Input16 = document.getElementById('INPUT16');
document.getElementById('INPUT16x').style.visibility = 'hidden';if(InputEdited[15]) {
PostXML('HEATING.XML', encodeURIComponent(Input16.name+'='+Input16.value)); InputEdited[15] = 0;
}
}
function PostXML18() {
var Input18 = document.getElementById('INPUT18');
document.getElementById('INPUT18x').style.visibility = 'hidden';if(InputEdited[17]) {
PostXML('HEATING.XML', encodeURIComponent(Input18.name+'='+Input18.value)); InputEdited[17] = 0;
}
}
function PostXML20() {
var Input20 = document.getElementById('INPUT20');
document.getElementById('INPUT20x').style.visibility = 'hidden';if(InputEdited[19]) {
PostXML('HEATING.XML', encodeURIComponent(Input20.name+'='+Input20.value)); InputEdited[19] = 0;
}
}
function PostXML22() {
var Input22 = document.getElementById('INPUT22');
document.getElementById('INPUT22x').style.visibility = 'hidden';if(InputEdited[21]) {
PostXML('HEATING.XML', encodeURIComponent(Input22.name+'='+Input22.value)); InputEdited[21] = 0;
}
}
function PostXML31() {
var Input31 = document.getElementById('INPUT31');
document.getElementById('INPUT31x').style.visibility = 'hidden';if(InputEdited[30]) {
PostXML('HEATING.XML', encodeURIComponent(Input31.name+'='+Input31.value)); InputEdited[30] = 0;
}
}
function PostXML32() {
var Input32 = document.getElementById('INPUT32');
document.getElementById('INPUT32x').style.visibility = 'hidden';if(InputEdited[31]) {
PostXML('HEATING.XML', encodeURIComponent(Input32.name+'='+Input32.value)); InputEdited[31] = 0;
}
}
function PostXML33() {
var Input33 = document.getElementById('INPUT33');
document.getElementById('INPUT33x').style.visibility = 'hidden';if(InputEdited[32]) {
PostXML('HEATING.XML', encodeURIComponent(Input33.name+'='+Input33.value)); InputEdited[32] = 0;
}
}
function PostXML37() {
var Input37 = document.getElementById('INPUT37');
document.getElementById('INPUT37x').style.visibility = 'hidden';if(InputEdited[36]) {
PostXML('HEATING.XML', encodeURIComponent(Input37.name+'='+Input37.value)); InputEdited[36] = 0;
}
}
function PostXML38() {
var Input38 = document.getElementById('INPUT38');
document.getElementById('INPUT38x').style.visibility = 'hidden';if(InputEdited[37]) {
PostXML('HEATING.XML', encodeURIComponent(Input38.name+'='+Input38.value)); InputEdited[37] = 0;
}
}
function PostXML39() {
var Input39 = document.getElementById('INPUT39');
document.getElementById('INPUT39x').style.visibility = 'hidden';if(InputEdited[38]) {
PostXML('HEATING.XML', encodeURIComponent(Input39.name+'='+Input39.value)); InputEdited[38] = 0;
}
}
function PostXML40() {
var Input40 = document.getElementById('INPUT40');
document.getElementById('INPUT40x').style.visibility = 'hidden';if(InputEdited[39]) {
PostXML('HEATING.XML', encodeURIComponent(Input40.name+'='+Input40.value)); InputEdited[39] = 0;
}
}
function PostXML43() {
var Input43 = document.getElementById('INPUT43');
document.getElementById('INPUT43x').style.visibility = 'hidden';if(InputEdited[42]) {
PostXML('HEATING.XML', encodeURIComponent(Input43.name+'='+Input43.value)); InputEdited[42] = 0;
}
}
function PostXML44() {
PostXML('HEATING.XML', encodeURIComponent('__R15717.1_BOOL_i=0')); 
SetBg('INPUT44', '');
setTimeout("SetBg('INPUT44', 'SW747C_1.PNG');",500);
}
function PostXML45() {
PostXML('HEATING.XML', encodeURIComponent('__R15717.1_BOOL_i=1')); 
SetBg('INPUT45', '');
setTimeout("SetBg('INPUT45', 'SW7D18_1.PNG');",500);
}
function PostXML46() {
PostXML('HEATING.XML', encodeURIComponent('__R15717.2_BOOL_i=0')); 
SetBg('INPUT46', '');
setTimeout("SetBg('INPUT46', 'SW747C_1.PNG');",500);
}
function PostXML47() {
PostXML('HEATING.XML', encodeURIComponent('__R15717.2_BOOL_i=1')); 
SetBg('INPUT47', '');
setTimeout("SetBg('INPUT47', 'SW7D18_1.PNG');",500);
}
function PostXML48() {
var Input48 = document.getElementById('INPUT48');
document.getElementById('INPUT48x').style.visibility = 'hidden';if(InputEdited[47]) {
PostXML('HEATING.XML', encodeURIComponent(Input48.name+'='+Input48.value)); InputEdited[47] = 0;
}
}
function PostXML51() {
var Input51 = document.getElementById('INPUT51');
document.getElementById('INPUT51x').style.visibility = 'hidden';if(InputEdited[50]) {
PostXML('HEATING.XML', encodeURIComponent(Input51.name+'='+Input51.value)); InputEdited[50] = 0;
}
}

function PostGlobal() {
var Input2 = document.getElementById('INPUT2');
var Input4 = document.getElementById('INPUT4');
var Input5 = document.getElementById('INPUT5');
var Input7 = document.getElementById('INPUT7');
var Input9 = document.getElementById('INPUT9');
var Input10 = document.getElementById('INPUT10');
var Input15 = document.getElementById('INPUT15');
var Input17 = document.getElementById('INPUT17');
var Input19 = document.getElementById('INPUT19');
var Input21 = document.getElementById('INPUT21');
var Input23 = document.getElementById('INPUT23');
var Input41 = document.getElementById('INPUT41');
var Input49 = document.getElementById('INPUT49');
var Input52 = document.getElementById('INPUT52');
PostXML('HEATING.XML', (InputEdited[1] ? encodeURIComponent(Input2.name)+'='+encodeURIComponent(Input2.value)+'&' : '')+(InputEdited[3] ? encodeURIComponent(Input4.name)+'='+encodeURIComponent(Input4.value)+'&' : '')+(InputEdited[4] ? encodeURIComponent(Input5.name)+'='+encodeURIComponent(Input5.value)+'&' : '')+(InputEdited[6] ? encodeURIComponent(Input7.name)+'='+encodeURIComponent(Input7.value)+'&' : '')+(InputEdited[8] ? encodeURIComponent(Input9.name)+'='+encodeURIComponent(Input9.value)+'&' : '')+(InputEdited[9] ? encodeURIComponent(Input10.name)+'='+encodeURIComponent(Input10.value)+'&' : '')+(InputEdited[14] ? encodeURIComponent(Input15.name)+'='+encodeURIComponent(Input15.value)+'&' : '')+(InputEdited[16] ? encodeURIComponent(Input17.name)+'='+encodeURIComponent(Input17.value)+'&' : '')+(InputEdited[18] ? encodeURIComponent(Input19.name)+'='+encodeURIComponent(Input19.value)+'&' : '')+(InputEdited[20] ? encodeURIComponent(Input21.name)+'='+encodeURIComponent(Input21.value)+'&' : '')+(InputEdited[22] ? encodeURIComponent(Input23.name)+'='+encodeURIComponent(Input23.value)+'&' : '')+(InputEdited[40] ? encodeURIComponent(Input41.name)+'='+encodeURIComponent(Input41.value)+'&' : '')+(InputEdited[48] ? encodeURIComponent(Input49.name)+'='+encodeURIComponent(Input49.value)+'&' : '')+(InputEdited[51] ? encodeURIComponent(Input52.name)+'='+encodeURIComponent(Input52.value)+'&' : ''));
InputEdited[1]=0;
InputEdited[3]=0;
InputEdited[4]=0;
InputEdited[6]=0;
InputEdited[8]=0;
InputEdited[9]=0;
InputEdited[14]=0;
InputEdited[16]=0;
InputEdited[18]=0;
InputEdited[20]=0;
InputEdited[22]=0;
InputEdited[40]=0;
InputEdited[48]=0;
InputEdited[51]=0;
}
