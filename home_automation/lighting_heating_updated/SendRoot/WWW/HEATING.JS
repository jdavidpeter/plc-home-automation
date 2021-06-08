
function RefreshCam(ipcamimg, elementid, url, t, d) {var o=document.getElementById(elementid);if(o){o.setAttribute("src",eval(ipcamimg+'.src'));if(o.parentNode.parentNode.style.visibility!='hidden')setTimeout(ipcamimg+".src = \""+url+d+Math.random()+"\"", t);}}
function SetBg(name, imag) {var obj = document.getElementById(name); obj.style.backgroundImage = imag == '' ? '' : 'url("IMAGES/'+imag+'")';}
function SetCond(obj, val) {if(obj != val) obj = val;}
function GetColor(val) {var tmp = '000000'+parseInt(parseInt(((val << 16) & 0xFF0000) | (val & 0xFF00) | ((val >> 16) & 0xFF))).toString(16); return '#'+tmp.substr(tmp.length-6,6);}
function GetDateByFormat(pstr,pf) {var isDel=new RegExp("^([-:]|\\s|\\.)");var isNotDel=new RegExp("^[YMDhmsz]");var strYY='', strMM='0', strDD='0', strhh='0', strmm='0', strss='0', strzz='0';var j = 0;for(var i = 0; i < pstr.length; i++, j++) {if(isNotDel.test(pstr.charAt(i))) {if(isDel.test(pf.charAt(j))) {j--;} else {switch(pstr.charAt(i)) {case 'Y' : strYY += pf.charAt(j); break;case 'M' : strMM += pf.charAt(j); break;case 'D' : strDD += pf.charAt(j); break;case 'h' : strhh += pf.charAt(j); break;case 'm' : strmm += pf.charAt(j); break;case 's' : strss += pf.charAt(j); break;case 'z' : strzz += pf.charAt(j); break;}}}}strzz = (strzz+'00').substr(0,4);  return new Date(strYY, strMM, strDD, strhh, strmm, strss, strzz);}
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
function BackToReferrer() {
r = document.referrer.toLowerCase();
if(r==''||r==document.location.href.toLowerCase()||r.search('login.xml')!=-1||r.search('logout.xml')!=-1) {
document.location.href='INDEX.XML';
} else {document.location.href=r;}}
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
var access = xmlhttpGET.responseXML.documentElement.getElementsByTagName('ACCESS')[0]; if(!access || access.getAttribute('UCID') != 1623080484) {document.location.reload(true); return;}
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
if(!InputEdited[23]) {
UpdateValue(Input24, x[21], '#000000');}
var Input25 = document.getElementById('INPUT25');
if(!InputEdited[24]) {
UpdateValue(Input25, x[22], '#008000');}
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
if(x[28].getAttribute('VALUE') == '0') {
Input31.style.visibility = 'hidden';
} else {
Input31.style.visibility = 'visible';
}
var Input32 = document.getElementById('INPUT32');
if(x[29].getAttribute('VALUE') == '0') {
Input32.style.visibility = 'hidden';
} else {
Input32.style.visibility = 'visible';
}
var Input33 = document.getElementById('INPUT33');
if(x[30].getAttribute('VALUE') == '0') {
Input33.style.visibility = 'hidden';
} else {
Input33.style.visibility = 'visible';
}
var Input34 = document.getElementById('INPUT34');
if(!InputEdited[33]) {
UpdateValue(Input34, x[31], '#000000');}
var Input35 = document.getElementById('INPUT35');
if(!InputEdited[34]) {
UpdateValue(Input35, x[32], '#000000');}
var Input36 = document.getElementById('INPUT36');
if(!InputEdited[35]) {
UpdateValue(Input36, x[33], '#000000');}
var Input37 = document.getElementById('INPUT37');
if(x[34].getAttribute('VALUE') == '0') {
Input37.style.visibility = 'hidden';
} else {
Input37.style.visibility = 'visible';
}
var Input38 = document.getElementById('INPUT38');
if(x[35].getAttribute('VALUE') == '0') {
Input38.style.visibility = 'hidden';
} else {
Input38.style.visibility = 'visible';
}
var Input39 = document.getElementById('INPUT39');
if(x[36].getAttribute('VALUE') == '0') {
Input39.style.visibility = 'hidden';
} else {
Input39.style.visibility = 'visible';
}
var Input40 = document.getElementById('INPUT40');
if(!InputEdited[39]) {
UpdateValue(Input40, x[37], '#000000');}
var Input41 = document.getElementById('INPUT41');
if(!InputEdited[40]) {
UpdateValue(Input41, x[38], '#000000');}
var Input42 = document.getElementById('INPUT42');
if(!InputEdited[41]) {
UpdateValue(Input42, x[39], '#000000');}
var Input43 = document.getElementById('INPUT43');
if(!InputEdited[42]) {
UpdateValue(Input43, x[40], '#000000');}
var Input44 = document.getElementById('INPUT44');
if(!InputEdited[43]) {
UpdateValue(Input44, x[41], '#008000');}
var Input45 = document.getElementById('INPUT45');
if(x[42].getAttribute('VALUE') == '0') {
Input45.style.visibility = 'hidden';
} else {
Input45.style.visibility = 'visible';
}
var Input46 = document.getElementById('INPUT46');
if(!InputEdited[45]) {
UpdateValue(Input46, x[43], '#000000');}
var Input47 = document.getElementById('INPUT47');
if(x[44].getAttribute('VALUE') == '0') {
Input47.style.display = 'none';
} else {
Input47.style.display = 'block';
}
var Input48 = document.getElementById('INPUT48');
if(x[44].getAttribute('VALUE') != '0') {
Input48.style.display = 'none';
} else {
Input48.style.display = 'block';
}
var Input49 = document.getElementById('INPUT49');
if(x[45].getAttribute('VALUE') == '0') {
Input49.style.display = 'none';
} else {
Input49.style.display = 'block';
}
var Input50 = document.getElementById('INPUT50');
if(x[45].getAttribute('VALUE') != '0') {
Input50.style.display = 'none';
} else {
Input50.style.display = 'block';
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
function PostXML24() {
var Input24 = document.getElementById('INPUT24');
document.getElementById('INPUT24x').style.visibility = 'hidden';if(InputEdited[23]) {
PostXML('HEATING.XML', encodeURIComponent(Input24.name+'='+Input24.value)); InputEdited[23] = 0;
}
}
function PostXML34() {
var Input34 = document.getElementById('INPUT34');
document.getElementById('INPUT34x').style.visibility = 'hidden';if(InputEdited[33]) {
PostXML('HEATING.XML', encodeURIComponent(Input34.name+'='+Input34.value)); InputEdited[33] = 0;
}
}
function PostXML35() {
var Input35 = document.getElementById('INPUT35');
document.getElementById('INPUT35x').style.visibility = 'hidden';if(InputEdited[34]) {
PostXML('HEATING.XML', encodeURIComponent(Input35.name+'='+Input35.value)); InputEdited[34] = 0;
}
}
function PostXML36() {
var Input36 = document.getElementById('INPUT36');
document.getElementById('INPUT36x').style.visibility = 'hidden';if(InputEdited[35]) {
PostXML('HEATING.XML', encodeURIComponent(Input36.name+'='+Input36.value)); InputEdited[35] = 0;
}
}
function PostXML40() {
var Input40 = document.getElementById('INPUT40');
document.getElementById('INPUT40x').style.visibility = 'hidden';if(InputEdited[39]) {
PostXML('HEATING.XML', encodeURIComponent(Input40.name+'='+Input40.value)); InputEdited[39] = 0;
}
}
function PostXML41() {
var Input41 = document.getElementById('INPUT41');
document.getElementById('INPUT41x').style.visibility = 'hidden';if(InputEdited[40]) {
PostXML('HEATING.XML', encodeURIComponent(Input41.name+'='+Input41.value)); InputEdited[40] = 0;
}
}
function PostXML42() {
var Input42 = document.getElementById('INPUT42');
document.getElementById('INPUT42x').style.visibility = 'hidden';if(InputEdited[41]) {
PostXML('HEATING.XML', encodeURIComponent(Input42.name+'='+Input42.value)); InputEdited[41] = 0;
}
}
function PostXML43() {
var Input43 = document.getElementById('INPUT43');
document.getElementById('INPUT43x').style.visibility = 'hidden';if(InputEdited[42]) {
PostXML('HEATING.XML', encodeURIComponent(Input43.name+'='+Input43.value)); InputEdited[42] = 0;
}
}
function PostXML46() {
var Input46 = document.getElementById('INPUT46');
document.getElementById('INPUT46x').style.visibility = 'hidden';if(InputEdited[45]) {
PostXML('HEATING.XML', encodeURIComponent(Input46.name+'='+Input46.value)); InputEdited[45] = 0;
}
}
function PostXML47() {
PostXML('HEATING.XML', encodeURIComponent('__R15769.2_BOOL_i=0')); 
SetBg('INPUT47', '');
setTimeout("SetBg('INPUT47', 'SW747C_1.PNG');",500);
}
function PostXML48() {
PostXML('HEATING.XML', encodeURIComponent('__R15769.2_BOOL_i=1')); 
SetBg('INPUT48', '');
setTimeout("SetBg('INPUT48', 'SW7D18_1.PNG');",500);
}
function PostXML49() {
PostXML('HEATING.XML', encodeURIComponent('__R15769.3_BOOL_i=0')); 
SetBg('INPUT49', '');
setTimeout("SetBg('INPUT49', 'SW747C_1.PNG');",500);
}
function PostXML50() {
PostXML('HEATING.XML', encodeURIComponent('__R15769.3_BOOL_i=1')); 
SetBg('INPUT50', '');
setTimeout("SetBg('INPUT50', 'SW7D18_1.PNG');",500);
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
var Input25 = document.getElementById('INPUT25');
var Input44 = document.getElementById('INPUT44');
PostXML('HEATING.XML', (InputEdited[1] ? encodeURIComponent(Input2.name)+'='+encodeURIComponent(Input2.value)+'&' : '')+(InputEdited[3] ? encodeURIComponent(Input4.name)+'='+encodeURIComponent(Input4.value)+'&' : '')+(InputEdited[4] ? encodeURIComponent(Input5.name)+'='+encodeURIComponent(Input5.value)+'&' : '')+(InputEdited[6] ? encodeURIComponent(Input7.name)+'='+encodeURIComponent(Input7.value)+'&' : '')+(InputEdited[8] ? encodeURIComponent(Input9.name)+'='+encodeURIComponent(Input9.value)+'&' : '')+(InputEdited[9] ? encodeURIComponent(Input10.name)+'='+encodeURIComponent(Input10.value)+'&' : '')+(InputEdited[14] ? encodeURIComponent(Input15.name)+'='+encodeURIComponent(Input15.value)+'&' : '')+(InputEdited[16] ? encodeURIComponent(Input17.name)+'='+encodeURIComponent(Input17.value)+'&' : '')+(InputEdited[18] ? encodeURIComponent(Input19.name)+'='+encodeURIComponent(Input19.value)+'&' : '')+(InputEdited[20] ? encodeURIComponent(Input21.name)+'='+encodeURIComponent(Input21.value)+'&' : '')+(InputEdited[22] ? encodeURIComponent(Input23.name)+'='+encodeURIComponent(Input23.value)+'&' : '')+(InputEdited[24] ? encodeURIComponent(Input25.name)+'='+encodeURIComponent(Input25.value)+'&' : '')+(InputEdited[43] ? encodeURIComponent(Input44.name)+'='+encodeURIComponent(Input44.value)+'&' : ''));
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
InputEdited[24]=0;
InputEdited[43]=0;
}
