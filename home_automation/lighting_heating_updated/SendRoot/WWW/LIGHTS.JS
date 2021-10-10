
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
var access = xmlhttpGET.responseXML.documentElement.getElementsByTagName('ACCESS')[0]; if(!access || access.getAttribute('UCID') != 1633887697) {document.location.reload(true); return;}
var pd = '';
var x=xmlhttpGET.responseXML.documentElement.getElementsByTagName('INPUT');
if(x[0]) {
var Input1 = document.getElementById('INPUT1');
if(x[0].getAttribute('VALUE') == '0') {
Input1.style.display = 'none';
} else {
Input1.style.display = 'block';
}
var Input2 = document.getElementById('INPUT2');
if(x[0].getAttribute('VALUE') != '0') {
Input2.style.display = 'none';
} else {
Input2.style.display = 'block';
}
var Input3 = document.getElementById('INPUT3');
if(x[1].getAttribute('VALUE') == '0') {
Input3.style.display = 'none';
} else {
Input3.style.display = 'block';
}
var Input4 = document.getElementById('INPUT4');
if(x[1].getAttribute('VALUE') != '0') {
Input4.style.display = 'none';
} else {
Input4.style.display = 'block';
}
var Input5 = document.getElementById('INPUT5');
if(x[2].getAttribute('VALUE') == '0') {
Input5.style.display = 'none';
} else {
Input5.style.display = 'block';
}
var Input6 = document.getElementById('INPUT6');
if(x[2].getAttribute('VALUE') != '0') {
Input6.style.display = 'none';
} else {
Input6.style.display = 'block';
}
var Input7 = document.getElementById('INPUT7');
if(x[3].getAttribute('VALUE') == '0') {
Input7.style.display = 'none';
} else {
Input7.style.display = 'block';
}
var Input8 = document.getElementById('INPUT8');
if(x[3].getAttribute('VALUE') != '0') {
Input8.style.display = 'none';
} else {
Input8.style.display = 'block';
}
var Input9 = document.getElementById('INPUT9');
if(x[4].getAttribute('VALUE') == '0') {
Input9.style.display = 'none';
} else {
Input9.style.display = 'block';
}
var Input10 = document.getElementById('INPUT10');
if(x[4].getAttribute('VALUE') != '0') {
Input10.style.display = 'none';
} else {
Input10.style.display = 'block';
}
var Input11 = document.getElementById('INPUT11');
if(x[5].getAttribute('VALUE') == '0') {
Input11.style.display = 'none';
} else {
Input11.style.display = 'block';
}
var Input12 = document.getElementById('INPUT12');
if(x[5].getAttribute('VALUE') != '0') {
Input12.style.display = 'none';
} else {
Input12.style.display = 'block';
}
var Input13 = document.getElementById('INPUT13');
if(x[6].getAttribute('VALUE') == '0') {
Input13.style.display = 'none';
} else {
Input13.style.display = 'block';
}
var Input14 = document.getElementById('INPUT14');
if(x[6].getAttribute('VALUE') != '0') {
Input14.style.display = 'none';
} else {
Input14.style.display = 'block';
}
var Input15 = document.getElementById('INPUT15');
if(x[7].getAttribute('VALUE') == '0') {
Input15.style.display = 'none';
} else {
Input15.style.display = 'block';
}
var Input16 = document.getElementById('INPUT16');
if(x[7].getAttribute('VALUE') != '0') {
Input16.style.display = 'none';
} else {
Input16.style.display = 'block';
}
var Input17 = document.getElementById('INPUT17');
if(x[8].getAttribute('VALUE') == '0') {
Input17.style.display = 'none';
} else {
Input17.style.display = 'block';
}
var Input18 = document.getElementById('INPUT18');
if(x[8].getAttribute('VALUE') != '0') {
Input18.style.display = 'none';
} else {
Input18.style.display = 'block';
}
var Input19 = document.getElementById('INPUT19');
if(x[9].getAttribute('VALUE') == '0') {
Input19.style.display = 'none';
} else {
Input19.style.display = 'block';
}
var Input20 = document.getElementById('INPUT20');
if(x[9].getAttribute('VALUE') != '0') {
Input20.style.display = 'none';
} else {
Input20.style.display = 'block';
}
var Input21 = document.getElementById('INPUT21');
if(x[10].getAttribute('VALUE') == '0') {
Input21.style.display = 'none';
} else {
Input21.style.display = 'block';
}
var Input22 = document.getElementById('INPUT22');
if(x[10].getAttribute('VALUE') != '0') {
Input22.style.display = 'none';
} else {
Input22.style.display = 'block';
}
var Input23 = document.getElementById('INPUT23');
if(x[2].getAttribute('VALUE') == '0') {
Input23.style.display = 'none';
} else {
Input23.style.display = 'block';
}
var Input24 = document.getElementById('INPUT24');
if(x[2].getAttribute('VALUE') != '0') {
Input24.style.display = 'none';
} else {
Input24.style.display = 'block';
}
var Input25 = document.getElementById('INPUT25');
if(x[3].getAttribute('VALUE') == '0') {
Input25.style.display = 'none';
} else {
Input25.style.display = 'block';
}
var Input26 = document.getElementById('INPUT26');
if(x[3].getAttribute('VALUE') != '0') {
Input26.style.display = 'none';
} else {
Input26.style.display = 'block';
}
var Input27 = document.getElementById('INPUT27');
if(!InputEdited[26]) {
UpdateValue(Input27, x[11], '#000000');}
var Input28 = document.getElementById('INPUT28');
if(!InputEdited[27]) {
UpdateValue(Input28, x[12], '#008000');}
var Input29 = document.getElementById('INPUT29');
if(x[13].getAttribute('VALUE') == '0') {
Input29.style.visibility = 'hidden';
} else {
Input29.style.visibility = 'visible';
}
var Input30 = document.getElementById('INPUT30');
if(!InputEdited[29]) {
UpdateValue(Input30, x[14], '#000000');}
var Input31 = document.getElementById('INPUT31');
if(!InputEdited[30]) {
UpdateValue(Input31, x[15], '#008000');}
var Input32 = document.getElementById('INPUT32');
if(x[16].getAttribute('VALUE') == '0') {
Input32.style.visibility = 'hidden';
} else {
Input32.style.visibility = 'visible';
}
var Input33 = document.getElementById('INPUT33');
if(!InputEdited[32]) {
UpdateValue(Input33, x[17], '#000000');}
var Input34 = document.getElementById('INPUT34');
if(!InputEdited[33]) {
UpdateValue(Input34, x[18], '#008000');}
var Input35 = document.getElementById('INPUT35');
if(x[19].getAttribute('VALUE') == '0') {
Input35.style.visibility = 'hidden';
} else {
Input35.style.visibility = 'visible';
}
var Input36 = document.getElementById('INPUT36');
if(x[13].getAttribute('VALUE') == '0') {
Input36.style.visibility = 'hidden';
} else {
Input36.style.visibility = 'visible';
}
var Input37 = document.getElementById('INPUT37');
if(!InputEdited[36]) {
UpdateValue(Input37, x[20], '#000000');}
var Input38 = document.getElementById('INPUT38');
if(!InputEdited[37]) {
UpdateValue(Input38, x[21], '#008000');}
var Input39 = document.getElementById('INPUT39');
if(x[22].getAttribute('VALUE') == '0') {
Input39.style.visibility = 'hidden';
} else {
Input39.style.visibility = 'visible';
}
var Input40 = document.getElementById('INPUT40');
if(!InputEdited[39]) {
UpdateValue(Input40, x[23], '#000000');}
var Input41 = document.getElementById('INPUT41');
if(!InputEdited[40]) {
UpdateValue(Input41, x[24], '#008000');}
var Input42 = document.getElementById('INPUT42');
if(x[13].getAttribute('VALUE') == '0') {
Input42.style.visibility = 'hidden';
} else {
Input42.style.visibility = 'visible';
}
var Input43 = document.getElementById('INPUT43');
if(x[25].getAttribute('VALUE') == '0') {
Input43.style.visibility = 'hidden';
} else {
Input43.style.visibility = 'visible';
}
var Input44 = document.getElementById('INPUT44');
if(x[26].getAttribute('VALUE') != '0') {
Input44.style.visibility = 'hidden';
} else {
Input44.style.visibility = 'visible';
}
var Input45 = document.getElementById('INPUT45');
if(x[26].getAttribute('VALUE') == '0') {
Input45.style.visibility = 'hidden';
} else {
Input45.style.visibility = 'visible';
}
var Input46 = document.getElementById('INPUT46');
if(x[27].getAttribute('VALUE') != '0') {
Input46.style.display = 'none';
} else {
Input46.style.display = 'block';
}
var Input47 = document.getElementById('INPUT47');
if(x[27].getAttribute('VALUE') == '0') {
Input47.style.display = 'none';
} else {
Input47.style.display = 'block';
}
var Input48 = document.getElementById('INPUT48');
if(x[28].getAttribute('VALUE') != '0') {
Input48.style.display = 'none';
} else {
Input48.style.display = 'block';
}
var Input49 = document.getElementById('INPUT49');
if(x[28].getAttribute('VALUE') == '0') {
Input49.style.visibility = 'hidden';
} else {
Input49.style.visibility = 'visible';
}
var Input50 = document.getElementById('INPUT50');
if(x[29].getAttribute('VALUE') != '0') {
Input50.style.visibility = 'hidden';
} else {
Input50.style.visibility = 'visible';
}
var Input51 = document.getElementById('INPUT51');
if(x[30].getAttribute('VALUE') != '0') {
Input51.style.visibility = 'hidden';
} else {
Input51.style.visibility = 'visible';
}
var Input52 = document.getElementById('INPUT52');
if(x[31].getAttribute('VALUE') != '0') {
Input52.style.visibility = 'hidden';
} else {
Input52.style.visibility = 'visible';
}
var Input53 = document.getElementById('INPUT53');
if(x[32].getAttribute('VALUE') != '0') {
Input53.style.visibility = 'hidden';
} else {
Input53.style.visibility = 'visible';
}
var Input54 = document.getElementById('INPUT54');
if(x[33].getAttribute('VALUE') != '0') {
Input54.style.visibility = 'hidden';
} else {
Input54.style.visibility = 'visible';
}
var Input55 = document.getElementById('INPUT55');
if(x[34].getAttribute('VALUE') != '0') {
Input55.style.visibility = 'hidden';
} else {
Input55.style.visibility = 'visible';
}
var Input56 = document.getElementById('INPUT56');
if(x[35].getAttribute('VALUE') == '0') {
Input56.style.display = 'none';
} else {
Input56.style.display = 'block';
}
var Input57 = document.getElementById('INPUT57');
if(x[35].getAttribute('VALUE') != '0') {
Input57.style.display = 'none';
} else {
Input57.style.display = 'block';
}
var Input58 = document.getElementById('INPUT58');
if(x[36].getAttribute('VALUE') == '0') {
Input58.style.display = 'none';
} else {
Input58.style.display = 'block';
}
var Input59 = document.getElementById('INPUT59');
if(x[36].getAttribute('VALUE') != '0') {
Input59.style.display = 'none';
} else {
Input59.style.display = 'block';
}
var Input60 = document.getElementById('INPUT60');
if(x[37].getAttribute('VALUE') == '0') {
Input60.style.display = 'none';
} else {
Input60.style.display = 'block';
}
var Input61 = document.getElementById('INPUT61');
if(x[37].getAttribute('VALUE') != '0') {
Input61.style.display = 'none';
} else {
Input61.style.display = 'block';
}
var Input62 = document.getElementById('INPUT62');
if(x[38].getAttribute('VALUE') == '0') {
Input62.style.display = 'none';
} else {
Input62.style.display = 'block';
}
var Input63 = document.getElementById('INPUT63');
if(x[38].getAttribute('VALUE') != '0') {
Input63.style.display = 'none';
} else {
Input63.style.display = 'block';
}
var Input64 = document.getElementById('INPUT64');
if(x[37].getAttribute('VALUE') == '0') {
Input64.style.display = 'none';
} else {
Input64.style.display = 'block';
}
var Input65 = document.getElementById('INPUT65');
if(x[37].getAttribute('VALUE') != '0') {
Input65.style.display = 'none';
} else {
Input65.style.display = 'block';
}
var Input66 = document.getElementById('INPUT66');
if(x[39].getAttribute('VALUE') == '0') {
Input66.style.display = 'none';
} else {
Input66.style.display = 'block';
}
var Input67 = document.getElementById('INPUT67');
if(x[39].getAttribute('VALUE') != '0') {
Input67.style.display = 'none';
} else {
Input67.style.display = 'block';
}
var Input68 = document.getElementById('INPUT68');
if(x[40].getAttribute('VALUE') == '0') {
Input68.style.display = 'none';
} else {
Input68.style.display = 'block';
}
var Input69 = document.getElementById('INPUT69');
if(x[40].getAttribute('VALUE') != '0') {
Input69.style.display = 'none';
} else {
Input69.style.display = 'block';
}
var Input70 = document.getElementById('INPUT70');
if(x[41].getAttribute('VALUE') == '0') {
Input70.style.display = 'none';
} else {
Input70.style.display = 'block';
}
var Input71 = document.getElementById('INPUT71');
if(x[41].getAttribute('VALUE') != '0') {
Input71.style.display = 'none';
} else {
Input71.style.display = 'block';
}
var Input72 = document.getElementById('INPUT72');
if(x[42].getAttribute('VALUE') == '0') {
Input72.style.display = 'none';
} else {
Input72.style.display = 'block';
}
var Input73 = document.getElementById('INPUT73');
if(x[42].getAttribute('VALUE') != '0') {
Input73.style.display = 'none';
} else {
Input73.style.display = 'block';
}
var Input74 = document.getElementById('INPUT74');
if(x[43].getAttribute('VALUE') == '0') {
Input74.style.display = 'none';
} else {
Input74.style.display = 'block';
}
var Input75 = document.getElementById('INPUT75');
if(x[43].getAttribute('VALUE') != '0') {
Input75.style.display = 'none';
} else {
Input75.style.display = 'block';
}
var Input76 = document.getElementById('INPUT76');
if(x[44].getAttribute('VALUE') == '0') {
Input76.style.display = 'none';
} else {
Input76.style.display = 'block';
}
var Input77 = document.getElementById('INPUT77');
if(x[44].getAttribute('VALUE') != '0') {
Input77.style.display = 'none';
} else {
Input77.style.display = 'block';
}
var Input78 = document.getElementById('INPUT78');
if(x[45].getAttribute('VALUE') == '0') {
Input78.style.display = 'none';
} else {
Input78.style.display = 'block';
}
var Input79 = document.getElementById('INPUT79');
if(x[45].getAttribute('VALUE') != '0') {
Input79.style.display = 'none';
} else {
Input79.style.display = 'block';
}
var Input80 = document.getElementById('INPUT80');
if(x[45].getAttribute('VALUE') == '0') {
Input80.style.display = 'none';
} else {
Input80.style.display = 'block';
}
var Input81 = document.getElementById('INPUT81');
if(x[45].getAttribute('VALUE') != '0') {
Input81.style.display = 'none';
} else {
Input81.style.display = 'block';
}
var Input82 = document.getElementById('INPUT82');
if(x[46].getAttribute('VALUE') == '0') {
Input82.style.display = 'none';
} else {
Input82.style.display = 'block';
}
var Input83 = document.getElementById('INPUT83');
if(x[46].getAttribute('VALUE') != '0') {
Input83.style.display = 'none';
} else {
Input83.style.display = 'block';
}
var Input84 = document.getElementById('INPUT84');
if(x[46].getAttribute('VALUE') == '0') {
Input84.style.display = 'none';
} else {
Input84.style.display = 'block';
}
var Input85 = document.getElementById('INPUT85');
if(x[46].getAttribute('VALUE') != '0') {
Input85.style.display = 'none';
} else {
Input85.style.display = 'block';
}
var Input86 = document.getElementById('INPUT86');
if(x[47].getAttribute('VALUE') == '0') {
Input86.style.display = 'none';
} else {
Input86.style.display = 'block';
}
var Input87 = document.getElementById('INPUT87');
if(x[47].getAttribute('VALUE') != '0') {
Input87.style.display = 'none';
} else {
Input87.style.display = 'block';
}
var Input88 = document.getElementById('INPUT88');
if(!InputEdited[87]) {
UpdateValue(Input88, x[48], '#000000');}
var Input89 = document.getElementById('INPUT89');
if(!InputEdited[88]) {
UpdateValue(Input89, x[49], '#008000');}
var Input90 = document.getElementById('INPUT90');
if(x[50].getAttribute('VALUE') == '0') {
Input90.style.visibility = 'hidden';
} else {
Input90.style.visibility = 'visible';
}
var Input91 = document.getElementById('INPUT91');
if(!InputEdited[90]) {
UpdateValue(Input91, x[51], '#000000');}
var Input92 = document.getElementById('INPUT92');
if(!InputEdited[91]) {
UpdateValue(Input92, x[52], '#008000');}
var Input93 = document.getElementById('INPUT93');
if(x[53].getAttribute('VALUE') == '0') {
Input93.style.visibility = 'hidden';
} else {
Input93.style.visibility = 'visible';
}
var Input94 = document.getElementById('INPUT94');
if(!InputEdited[93]) {
UpdateValue(Input94, x[54], '#000000');}
var Input95 = document.getElementById('INPUT95');
if(!InputEdited[94]) {
UpdateValue(Input95, x[55], '#008000');}
var Input96 = document.getElementById('INPUT96');
if(x[56].getAttribute('VALUE') == '0') {
Input96.style.visibility = 'hidden';
} else {
Input96.style.visibility = 'visible';
}
var Input97 = document.getElementById('INPUT97');
if(!InputEdited[96]) {
UpdateValue(Input97, x[57], '#000000');}
var Input98 = document.getElementById('INPUT98');
if(!InputEdited[97]) {
UpdateValue(Input98, x[58], '#008000');}
var Input99 = document.getElementById('INPUT99');
if(x[59].getAttribute('VALUE') == '0') {
Input99.style.visibility = 'hidden';
} else {
Input99.style.visibility = 'visible';
}
var Input100 = document.getElementById('INPUT100');
if(x[60].getAttribute('VALUE') != '0') {
Input100.style.visibility = 'hidden';
} else {
Input100.style.visibility = 'visible';
}
var Input101 = document.getElementById('INPUT101');
if(x[61].getAttribute('VALUE') != '0') {
Input101.style.visibility = 'hidden';
} else {
Input101.style.visibility = 'visible';
}
var Input102 = document.getElementById('INPUT102');
if(x[62].getAttribute('VALUE') != '0') {
Input102.style.visibility = 'hidden';
} else {
Input102.style.visibility = 'visible';
}
var Input103 = document.getElementById('INPUT103');
if(x[63].getAttribute('VALUE') != '0') {
Input103.style.visibility = 'hidden';
} else {
Input103.style.visibility = 'visible';
}
var Input104 = document.getElementById('INPUT104');
if(x[64].getAttribute('VALUE') != '0') {
Input104.style.visibility = 'hidden';
} else {
Input104.style.visibility = 'visible';
}
var Input105 = document.getElementById('INPUT105');
if(x[65].getAttribute('VALUE') != '0') {
Input105.style.visibility = 'hidden';
} else {
Input105.style.visibility = 'visible';
}
var Input106 = document.getElementById('INPUT106');
if(x[66].getAttribute('VALUE') != '0') {
Input106.style.visibility = 'hidden';
} else {
Input106.style.visibility = 'visible';
}
var Input107 = document.getElementById('INPUT107');
if(x[67].getAttribute('VALUE') == '0') {
Input107.style.visibility = 'hidden';
} else {
Input107.style.visibility = 'visible';
}
var Input108 = document.getElementById('INPUT108');
if(x[68].getAttribute('VALUE') == '0') {
Input108.style.visibility = 'hidden';
} else {
Input108.style.visibility = 'visible';
}
var Input109 = document.getElementById('INPUT109');
if(x[69].getAttribute('VALUE') == '0') {
Input109.style.visibility = 'hidden';
} else {
Input109.style.visibility = 'visible';
}
var Input110 = document.getElementById('INPUT110');
if(!InputEdited[109]) {
UpdateValue(Input110, x[70], '#008000');}
} else {document.location.reload(true); return;}
} catch(err) {console.log(err.message)}
if(pd!=''){setTimeout("GetXML('LIGHTS.XML','"+pd+"')",1);}else{setTimeout("GetXML('LIGHTS.XML')",1000);}}
function FunWatchDog() {
if(gWatchDog > 0 || g_postInProgress) {
gWatchDog = 0;
} else {
document.location.reload(true);
}
setTimeout("FunWatchDog()", 20000);
}

function PostXML1() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.4_BOOL_i=1')); 
SetBg('INPUT1', '');
setTimeout("SetBg('INPUT1', 'LIGHT1_2.PNG');",500);
}
function PostXML2() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.4_BOOL_i=1')); 
SetBg('INPUT2', '');
setTimeout("SetBg('INPUT2', 'LIGHT1_1.PNG');",500);
}
function PostXML3() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.2_BOOL_i=1')); 
SetBg('INPUT3', '');
setTimeout("SetBg('INPUT3', 'LIGHT1_2.PNG');",500);
}
function PostXML4() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.2_BOOL_i=1')); 
SetBg('INPUT4', '');
setTimeout("SetBg('INPUT4', 'LIGHT1_1.PNG');",500);
}
function PostXML5() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.5_BOOL_i=1')); 
SetBg('INPUT5', '');
setTimeout("SetBg('INPUT5', 'LIGHT1_2.PNG');",500);
}
function PostXML6() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.5_BOOL_i=1')); 
SetBg('INPUT6', '');
setTimeout("SetBg('INPUT6', 'LIGHT1_1.PNG');",500);
}
function PostXML7() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.6_BOOL_i=1')); 
SetBg('INPUT7', '');
setTimeout("SetBg('INPUT7', 'LIGHT1_2.PNG');",500);
}
function PostXML8() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.6_BOOL_i=1')); 
SetBg('INPUT8', '');
setTimeout("SetBg('INPUT8', 'LIGHT1_1.PNG');",500);
}
function PostXML9() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.1_BOOL_i=1')); 
SetBg('INPUT9', '');
setTimeout("SetBg('INPUT9', 'LIGHT1_2.PNG');",500);
}
function PostXML10() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.1_BOOL_i=1')); 
SetBg('INPUT10', '');
setTimeout("SetBg('INPUT10', 'LIGHT1_1.PNG');",500);
}
function PostXML11() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.2_BOOL_i=1')); 
SetBg('INPUT11', '');
setTimeout("SetBg('INPUT11', 'LIGHT1_2.PNG');",500);
}
function PostXML12() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.2_BOOL_i=1')); 
SetBg('INPUT12', '');
setTimeout("SetBg('INPUT12', 'LIGHT1_1.PNG');",500);
}
function PostXML13() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.1_BOOL_i=1')); 
SetBg('INPUT13', '');
setTimeout("SetBg('INPUT13', 'LIGHT1_2.PNG');",500);
}
function PostXML14() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.1_BOOL_i=1')); 
SetBg('INPUT14', '');
setTimeout("SetBg('INPUT14', 'LIGHT1_1.PNG');",500);
}
function PostXML15() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.0_BOOL_i=1')); 
SetBg('INPUT15', '');
setTimeout("SetBg('INPUT15', 'LIGHT1_2.PNG');",500);
}
function PostXML16() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.0_BOOL_i=1')); 
SetBg('INPUT16', '');
setTimeout("SetBg('INPUT16', 'LIGHT1_1.PNG');",500);
}
function PostXML17() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.7_BOOL_i=1')); 
SetBg('INPUT17', '');
setTimeout("SetBg('INPUT17', 'LIGHT1_2.PNG');",500);
}
function PostXML18() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.7_BOOL_i=1')); 
SetBg('INPUT18', '');
setTimeout("SetBg('INPUT18', 'LIGHT1_1.PNG');",500);
}
function PostXML19() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.1_BOOL_i=1')); 
SetBg('INPUT19', '');
setTimeout("SetBg('INPUT19', 'LIGHT1_2.PNG');",500);
}
function PostXML20() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.1_BOOL_i=1')); 
SetBg('INPUT20', '');
setTimeout("SetBg('INPUT20', 'LIGHT1_1.PNG');",500);
}
function PostXML21() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.3_BOOL_i=1')); 
SetBg('INPUT21', '');
setTimeout("SetBg('INPUT21', 'LIGHT1_2.PNG');",500);
}
function PostXML22() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.3_BOOL_i=1')); 
SetBg('INPUT22', '');
setTimeout("SetBg('INPUT22', 'LIGHT1_1.PNG');",500);
}
function PostXML23() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.5_BOOL_i=1')); 
SetBg('INPUT23', '');
setTimeout("SetBg('INPUT23', 'LIGHT1_2.PNG');",500);
}
function PostXML24() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.5_BOOL_i=1')); 
SetBg('INPUT24', '');
setTimeout("SetBg('INPUT24', 'LIGHT1_1.PNG');",500);
}
function PostXML25() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.6_BOOL_i=1')); 
SetBg('INPUT25', '');
setTimeout("SetBg('INPUT25', 'LIGHT1_2.PNG');",500);
}
function PostXML26() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.6_BOOL_i=1')); 
SetBg('INPUT26', '');
setTimeout("SetBg('INPUT26', 'LIGHT1_1.PNG');",500);
}
function PostXML27() {
var Input27 = document.getElementById('INPUT27');
document.getElementById('INPUT27x').style.visibility = 'hidden';if(InputEdited[26]) {
PostXML('LIGHTS.XML', encodeURIComponent(Input27.name+'='+Input27.value)); InputEdited[26] = 0;
}
}
function PostXML30() {
var Input30 = document.getElementById('INPUT30');
document.getElementById('INPUT30x').style.visibility = 'hidden';if(InputEdited[29]) {
PostXML('LIGHTS.XML', encodeURIComponent(Input30.name+'='+Input30.value)); InputEdited[29] = 0;
}
}
function PostXML33() {
var Input33 = document.getElementById('INPUT33');
document.getElementById('INPUT33x').style.visibility = 'hidden';if(InputEdited[32]) {
PostXML('LIGHTS.XML', encodeURIComponent(Input33.name+'='+Input33.value)); InputEdited[32] = 0;
}
}
function PostXML37() {
var Input37 = document.getElementById('INPUT37');
document.getElementById('INPUT37x').style.visibility = 'hidden';if(InputEdited[36]) {
PostXML('LIGHTS.XML', encodeURIComponent(Input37.name+'='+Input37.value)); InputEdited[36] = 0;
}
}
function PostXML40() {
var Input40 = document.getElementById('INPUT40');
document.getElementById('INPUT40x').style.visibility = 'hidden';if(InputEdited[39]) {
PostXML('LIGHTS.XML', encodeURIComponent(Input40.name+'='+Input40.value)); InputEdited[39] = 0;
}
}
function PostXML46() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18189.2_BOOL_i=1')); 
SetBg('INPUT46', '');
setTimeout("SetBg('INPUT46', 'DOOR1__2.PNG');",500);
}
function PostXML47() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18189.2_BOOL_i=1')); 
SetBg('INPUT47', '');
setTimeout("SetBg('INPUT47', 'DOOR1__1.PNG');",500);
}
function PostXML48() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18189.1_BOOL_i=1')); 
SetBg('INPUT48', '');
setTimeout("SetBg('INPUT48', 'LED_RE_1.PNG');",500);
}
function PostXML56() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.6_BOOL_i=1')); 
SetBg('INPUT56', '');
setTimeout("SetBg('INPUT56', 'LIGHT1_2.PNG');",500);
}
function PostXML57() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.6_BOOL_i=1')); 
SetBg('INPUT57', '');
setTimeout("SetBg('INPUT57', 'LIGHT1_1.PNG');",500);
}
function PostXML58() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.7_BOOL_i=1')); 
SetBg('INPUT58', '');
setTimeout("SetBg('INPUT58', 'LIGHT1_2.PNG');",500);
}
function PostXML59() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.7_BOOL_i=1')); 
SetBg('INPUT59', '');
setTimeout("SetBg('INPUT59', 'LIGHT1_1.PNG');",500);
}
function PostXML60() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.6_BOOL_i=1')); 
SetBg('INPUT60', '');
setTimeout("SetBg('INPUT60', 'LIGHT1_2.PNG');",500);
}
function PostXML61() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.6_BOOL_i=1')); 
SetBg('INPUT61', '');
setTimeout("SetBg('INPUT61', 'LIGHT1_1.PNG');",500);
}
function PostXML62() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.5_BOOL_i=1')); 
SetBg('INPUT62', '');
setTimeout("SetBg('INPUT62', 'LIGHT1_2.PNG');",500);
}
function PostXML63() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.5_BOOL_i=1')); 
SetBg('INPUT63', '');
setTimeout("SetBg('INPUT63', 'LIGHT1_1.PNG');",500);
}
function PostXML64() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.6_BOOL_i=1')); 
SetBg('INPUT64', '');
setTimeout("SetBg('INPUT64', 'LIGHT1_2.PNG');",500);
}
function PostXML65() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.6_BOOL_i=1')); 
SetBg('INPUT65', '');
setTimeout("SetBg('INPUT65', 'LIGHT1_1.PNG');",500);
}
function PostXML66() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.4_BOOL_i=1')); 
SetBg('INPUT66', '');
setTimeout("SetBg('INPUT66', 'LIGHT1_2.PNG');",500);
}
function PostXML67() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.4_BOOL_i=1')); 
SetBg('INPUT67', '');
setTimeout("SetBg('INPUT67', 'LIGHT1_1.PNG');",500);
}
function PostXML68() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.3_BOOL_i=1')); 
SetBg('INPUT68', '');
setTimeout("SetBg('INPUT68', 'LIGHT1_2.PNG');",500);
}
function PostXML69() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.3_BOOL_i=1')); 
SetBg('INPUT69', '');
setTimeout("SetBg('INPUT69', 'LIGHT1_1.PNG');",500);
}
function PostXML70() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.5_BOOL_i=1')); 
SetBg('INPUT70', '');
setTimeout("SetBg('INPUT70', 'LIGHT1_2.PNG');",500);
}
function PostXML71() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.5_BOOL_i=1')); 
SetBg('INPUT71', '');
setTimeout("SetBg('INPUT71', 'LIGHT1_1.PNG');",500);
}
function PostXML72() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.2_BOOL_i=1')); 
SetBg('INPUT72', '');
setTimeout("SetBg('INPUT72', 'LIGHT1_2.PNG');",500);
}
function PostXML73() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.2_BOOL_i=1')); 
SetBg('INPUT73', '');
setTimeout("SetBg('INPUT73', 'LIGHT1_1.PNG');",500);
}
function PostXML74() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.4_BOOL_i=1')); 
SetBg('INPUT74', '');
setTimeout("SetBg('INPUT74', 'LIGHT1_2.PNG');",500);
}
function PostXML75() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.4_BOOL_i=1')); 
SetBg('INPUT75', '');
setTimeout("SetBg('INPUT75', 'LIGHT1_1.PNG');",500);
}
function PostXML76() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.7_BOOL_i=1')); 
SetBg('INPUT76', '');
setTimeout("SetBg('INPUT76', 'LIGHT1_2.PNG');",500);
}
function PostXML77() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.7_BOOL_i=1')); 
SetBg('INPUT77', '');
setTimeout("SetBg('INPUT77', 'LIGHT1_1.PNG');",500);
}
function PostXML78() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.0_BOOL_i=1')); 
SetBg('INPUT78', '');
setTimeout("SetBg('INPUT78', 'LIGHT1_2.PNG');",500);
}
function PostXML79() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.0_BOOL_i=1')); 
SetBg('INPUT79', '');
setTimeout("SetBg('INPUT79', 'LIGHT1_1.PNG');",500);
}
function PostXML80() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.0_BOOL_i=1')); 
SetBg('INPUT80', '');
setTimeout("SetBg('INPUT80', 'LIGHT1_2.PNG');",500);
}
function PostXML81() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.0_BOOL_i=1')); 
SetBg('INPUT81', '');
setTimeout("SetBg('INPUT81', 'LIGHT1_1.PNG');",500);
}
function PostXML82() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.3_BOOL_i=1')); 
SetBg('INPUT82', '');
setTimeout("SetBg('INPUT82', 'LIGHT1_2.PNG');",500);
}
function PostXML83() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.3_BOOL_i=1')); 
SetBg('INPUT83', '');
setTimeout("SetBg('INPUT83', 'LIGHT1_1.PNG');",500);
}
function PostXML84() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.3_BOOL_i=1')); 
SetBg('INPUT84', '');
setTimeout("SetBg('INPUT84', 'LIGHT1_2.PNG');",500);
}
function PostXML85() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.3_BOOL_i=1')); 
SetBg('INPUT85', '');
setTimeout("SetBg('INPUT85', 'LIGHT1_1.PNG');",500);
}
function PostXML86() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18189.0_BOOL_i=1')); 
SetBg('INPUT86', '');
setTimeout("SetBg('INPUT86', 'FAN1_O_1.PNG');",500);
}
function PostXML87() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18189.0_BOOL_i=1')); 
SetBg('INPUT87', '');
setTimeout("SetBg('INPUT87', 'FAN1_O_2.PNG');",500);
}
function PostXML88() {
var Input88 = document.getElementById('INPUT88');
document.getElementById('INPUT88x').style.visibility = 'hidden';if(InputEdited[87]) {
PostXML('LIGHTS.XML', encodeURIComponent(Input88.name+'='+Input88.value)); InputEdited[87] = 0;
}
}
function PostXML91() {
var Input91 = document.getElementById('INPUT91');
document.getElementById('INPUT91x').style.visibility = 'hidden';if(InputEdited[90]) {
PostXML('LIGHTS.XML', encodeURIComponent(Input91.name+'='+Input91.value)); InputEdited[90] = 0;
}
}
function PostXML94() {
var Input94 = document.getElementById('INPUT94');
document.getElementById('INPUT94x').style.visibility = 'hidden';if(InputEdited[93]) {
PostXML('LIGHTS.XML', encodeURIComponent(Input94.name+'='+Input94.value)); InputEdited[93] = 0;
}
}
function PostXML97() {
var Input97 = document.getElementById('INPUT97');
document.getElementById('INPUT97x').style.visibility = 'hidden';if(InputEdited[96]) {
PostXML('LIGHTS.XML', encodeURIComponent(Input97.name+'='+Input97.value)); InputEdited[96] = 0;
}
}

function PostGlobal() {
var Input28 = document.getElementById('INPUT28');
var Input31 = document.getElementById('INPUT31');
var Input34 = document.getElementById('INPUT34');
var Input38 = document.getElementById('INPUT38');
var Input41 = document.getElementById('INPUT41');
var Input89 = document.getElementById('INPUT89');
var Input92 = document.getElementById('INPUT92');
var Input95 = document.getElementById('INPUT95');
var Input98 = document.getElementById('INPUT98');
var Input110 = document.getElementById('INPUT110');
PostXML('LIGHTS.XML', (InputEdited[27] ? encodeURIComponent(Input28.name)+'='+encodeURIComponent(Input28.value)+'&' : '')+(InputEdited[30] ? encodeURIComponent(Input31.name)+'='+encodeURIComponent(Input31.value)+'&' : '')+(InputEdited[33] ? encodeURIComponent(Input34.name)+'='+encodeURIComponent(Input34.value)+'&' : '')+(InputEdited[37] ? encodeURIComponent(Input38.name)+'='+encodeURIComponent(Input38.value)+'&' : '')+(InputEdited[40] ? encodeURIComponent(Input41.name)+'='+encodeURIComponent(Input41.value)+'&' : '')+(InputEdited[88] ? encodeURIComponent(Input89.name)+'='+encodeURIComponent(Input89.value)+'&' : '')+(InputEdited[91] ? encodeURIComponent(Input92.name)+'='+encodeURIComponent(Input92.value)+'&' : '')+(InputEdited[94] ? encodeURIComponent(Input95.name)+'='+encodeURIComponent(Input95.value)+'&' : '')+(InputEdited[97] ? encodeURIComponent(Input98.name)+'='+encodeURIComponent(Input98.value)+'&' : '')+(InputEdited[109] ? encodeURIComponent(Input110.name)+'='+encodeURIComponent(Input110.value)+'&' : ''));
InputEdited[27]=0;
InputEdited[30]=0;
InputEdited[33]=0;
InputEdited[37]=0;
InputEdited[40]=0;
InputEdited[88]=0;
InputEdited[91]=0;
InputEdited[94]=0;
InputEdited[97]=0;
InputEdited[109]=0;
}
