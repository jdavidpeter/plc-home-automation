
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
if(x[11].getAttribute('VALUE') == '0') {
Input23.style.display = 'none';
} else {
Input23.style.display = 'block';
}
var Input24 = document.getElementById('INPUT24');
if(x[11].getAttribute('VALUE') != '0') {
Input24.style.display = 'none';
} else {
Input24.style.display = 'block';
}
var Input25 = document.getElementById('INPUT25');
if(x[12].getAttribute('VALUE') == '0') {
Input25.style.display = 'none';
} else {
Input25.style.display = 'block';
}
var Input26 = document.getElementById('INPUT26');
if(x[12].getAttribute('VALUE') != '0') {
Input26.style.display = 'none';
} else {
Input26.style.display = 'block';
}
var Input27 = document.getElementById('INPUT27');
if(x[13].getAttribute('VALUE') == '0') {
Input27.style.display = 'none';
} else {
Input27.style.display = 'block';
}
var Input28 = document.getElementById('INPUT28');
if(x[13].getAttribute('VALUE') != '0') {
Input28.style.display = 'none';
} else {
Input28.style.display = 'block';
}
var Input29 = document.getElementById('INPUT29');
if(x[14].getAttribute('VALUE') == '0') {
Input29.style.display = 'none';
} else {
Input29.style.display = 'block';
}
var Input30 = document.getElementById('INPUT30');
if(x[14].getAttribute('VALUE') != '0') {
Input30.style.display = 'none';
} else {
Input30.style.display = 'block';
}
var Input31 = document.getElementById('INPUT31');
if(x[4].getAttribute('VALUE') == '0') {
Input31.style.display = 'none';
} else {
Input31.style.display = 'block';
}
var Input32 = document.getElementById('INPUT32');
if(x[4].getAttribute('VALUE') != '0') {
Input32.style.display = 'none';
} else {
Input32.style.display = 'block';
}
var Input33 = document.getElementById('INPUT33');
if(x[6].getAttribute('VALUE') == '0') {
Input33.style.display = 'none';
} else {
Input33.style.display = 'block';
}
var Input34 = document.getElementById('INPUT34');
if(x[6].getAttribute('VALUE') != '0') {
Input34.style.display = 'none';
} else {
Input34.style.display = 'block';
}
var Input35 = document.getElementById('INPUT35');
if(x[15].getAttribute('VALUE') == '0') {
Input35.style.display = 'none';
} else {
Input35.style.display = 'block';
}
var Input36 = document.getElementById('INPUT36');
if(x[15].getAttribute('VALUE') != '0') {
Input36.style.display = 'none';
} else {
Input36.style.display = 'block';
}
var Input37 = document.getElementById('INPUT37');
if(x[16].getAttribute('VALUE') == '0') {
Input37.style.display = 'none';
} else {
Input37.style.display = 'block';
}
var Input38 = document.getElementById('INPUT38');
if(x[16].getAttribute('VALUE') != '0') {
Input38.style.display = 'none';
} else {
Input38.style.display = 'block';
}
var Input39 = document.getElementById('INPUT39');
if(x[17].getAttribute('VALUE') == '0') {
Input39.style.display = 'none';
} else {
Input39.style.display = 'block';
}
var Input40 = document.getElementById('INPUT40');
if(x[17].getAttribute('VALUE') != '0') {
Input40.style.display = 'none';
} else {
Input40.style.display = 'block';
}
var Input41 = document.getElementById('INPUT41');
if(x[18].getAttribute('VALUE') == '0') {
Input41.style.display = 'none';
} else {
Input41.style.display = 'block';
}
var Input42 = document.getElementById('INPUT42');
if(x[18].getAttribute('VALUE') != '0') {
Input42.style.display = 'none';
} else {
Input42.style.display = 'block';
}
var Input43 = document.getElementById('INPUT43');
if(x[19].getAttribute('VALUE') == '0') {
Input43.style.display = 'none';
} else {
Input43.style.display = 'block';
}
var Input44 = document.getElementById('INPUT44');
if(x[19].getAttribute('VALUE') != '0') {
Input44.style.display = 'none';
} else {
Input44.style.display = 'block';
}
var Input45 = document.getElementById('INPUT45');
if(x[20].getAttribute('VALUE') == '0') {
Input45.style.display = 'none';
} else {
Input45.style.display = 'block';
}
var Input46 = document.getElementById('INPUT46');
if(x[20].getAttribute('VALUE') != '0') {
Input46.style.display = 'none';
} else {
Input46.style.display = 'block';
}
var Input47 = document.getElementById('INPUT47');
if(x[21].getAttribute('VALUE') == '0') {
Input47.style.display = 'none';
} else {
Input47.style.display = 'block';
}
var Input48 = document.getElementById('INPUT48');
if(x[21].getAttribute('VALUE') != '0') {
Input48.style.display = 'none';
} else {
Input48.style.display = 'block';
}
var Input49 = document.getElementById('INPUT49');
if(x[21].getAttribute('VALUE') == '0') {
Input49.style.display = 'none';
} else {
Input49.style.display = 'block';
}
var Input50 = document.getElementById('INPUT50');
if(x[21].getAttribute('VALUE') != '0') {
Input50.style.display = 'none';
} else {
Input50.style.display = 'block';
}
var Input51 = document.getElementById('INPUT51');
if(x[22].getAttribute('VALUE') == '0') {
Input51.style.display = 'none';
} else {
Input51.style.display = 'block';
}
var Input52 = document.getElementById('INPUT52');
if(x[22].getAttribute('VALUE') != '0') {
Input52.style.display = 'none';
} else {
Input52.style.display = 'block';
}
var Input53 = document.getElementById('INPUT53');
if(x[22].getAttribute('VALUE') == '0') {
Input53.style.display = 'none';
} else {
Input53.style.display = 'block';
}
var Input54 = document.getElementById('INPUT54');
if(x[22].getAttribute('VALUE') != '0') {
Input54.style.display = 'none';
} else {
Input54.style.display = 'block';
}
var Input55 = document.getElementById('INPUT55');
if(x[23].getAttribute('VALUE') == '0') {
Input55.style.display = 'none';
} else {
Input55.style.display = 'block';
}
var Input56 = document.getElementById('INPUT56');
if(x[23].getAttribute('VALUE') != '0') {
Input56.style.display = 'none';
} else {
Input56.style.display = 'block';
}
var Input57 = document.getElementById('INPUT57');
if(x[5].getAttribute('VALUE') == '0') {
Input57.style.display = 'none';
} else {
Input57.style.display = 'block';
}
var Input58 = document.getElementById('INPUT58');
if(x[5].getAttribute('VALUE') != '0') {
Input58.style.display = 'none';
} else {
Input58.style.display = 'block';
}
var Input59 = document.getElementById('INPUT59');
if(!InputEdited[58]) {
UpdateValue(Input59, x[24], '#000000');}
var Input60 = document.getElementById('INPUT60');
if(!InputEdited[59]) {
UpdateValue(Input60, x[25], '#008000');}
var Input61 = document.getElementById('INPUT61');
if(x[26].getAttribute('VALUE') == '0') {
Input61.style.visibility = 'hidden';
} else {
Input61.style.visibility = 'visible';
}
var Input62 = document.getElementById('INPUT62');
if(!InputEdited[61]) {
UpdateValue(Input62, x[27], '#000000');}
var Input63 = document.getElementById('INPUT63');
if(!InputEdited[62]) {
UpdateValue(Input63, x[28], '#008000');}
var Input64 = document.getElementById('INPUT64');
if(x[29].getAttribute('VALUE') == '0') {
Input64.style.visibility = 'hidden';
} else {
Input64.style.visibility = 'visible';
}
var Input65 = document.getElementById('INPUT65');
if(!InputEdited[64]) {
UpdateValue(Input65, x[30], '#000000');}
var Input66 = document.getElementById('INPUT66');
if(!InputEdited[65]) {
UpdateValue(Input66, x[31], '#008000');}
var Input67 = document.getElementById('INPUT67');
if(x[32].getAttribute('VALUE') == '0') {
Input67.style.visibility = 'hidden';
} else {
Input67.style.visibility = 'visible';
}
var Input68 = document.getElementById('INPUT68');
if(x[26].getAttribute('VALUE') == '0') {
Input68.style.visibility = 'hidden';
} else {
Input68.style.visibility = 'visible';
}
var Input69 = document.getElementById('INPUT69');
if(!InputEdited[68]) {
UpdateValue(Input69, x[33], '#000000');}
var Input70 = document.getElementById('INPUT70');
if(!InputEdited[69]) {
UpdateValue(Input70, x[34], '#008000');}
var Input71 = document.getElementById('INPUT71');
if(x[35].getAttribute('VALUE') == '0') {
Input71.style.visibility = 'hidden';
} else {
Input71.style.visibility = 'visible';
}
var Input72 = document.getElementById('INPUT72');
if(!InputEdited[71]) {
UpdateValue(Input72, x[36], '#000000');}
var Input73 = document.getElementById('INPUT73');
if(!InputEdited[72]) {
UpdateValue(Input73, x[37], '#008000');}
var Input74 = document.getElementById('INPUT74');
if(x[26].getAttribute('VALUE') == '0') {
Input74.style.visibility = 'hidden';
} else {
Input74.style.visibility = 'visible';
}
var Input75 = document.getElementById('INPUT75');
if(x[38].getAttribute('VALUE') == '0') {
Input75.style.visibility = 'hidden';
} else {
Input75.style.visibility = 'visible';
}
var Input76 = document.getElementById('INPUT76');
if(!InputEdited[75]) {
UpdateValue(Input76, x[39], '#000000');}
var Input77 = document.getElementById('INPUT77');
if(!InputEdited[76]) {
UpdateValue(Input77, x[40], '#008000');}
var Input78 = document.getElementById('INPUT78');
if(x[41].getAttribute('VALUE') == '0') {
Input78.style.visibility = 'hidden';
} else {
Input78.style.visibility = 'visible';
}
var Input79 = document.getElementById('INPUT79');
if(!InputEdited[78]) {
UpdateValue(Input79, x[42], '#000000');}
var Input80 = document.getElementById('INPUT80');
if(!InputEdited[79]) {
UpdateValue(Input80, x[43], '#008000');}
var Input81 = document.getElementById('INPUT81');
if(x[44].getAttribute('VALUE') == '0') {
Input81.style.visibility = 'hidden';
} else {
Input81.style.visibility = 'visible';
}
var Input82 = document.getElementById('INPUT82');
if(!InputEdited[81]) {
UpdateValue(Input82, x[45], '#000000');}
var Input83 = document.getElementById('INPUT83');
if(!InputEdited[82]) {
UpdateValue(Input83, x[46], '#008000');}
var Input84 = document.getElementById('INPUT84');
if(x[47].getAttribute('VALUE') == '0') {
Input84.style.visibility = 'hidden';
} else {
Input84.style.visibility = 'visible';
}
var Input85 = document.getElementById('INPUT85');
if(!InputEdited[84]) {
UpdateValue(Input85, x[48], '#000000');}
var Input86 = document.getElementById('INPUT86');
if(!InputEdited[85]) {
UpdateValue(Input86, x[49], '#008000');}
var Input87 = document.getElementById('INPUT87');
if(x[50].getAttribute('VALUE') == '0') {
Input87.style.visibility = 'hidden';
} else {
Input87.style.visibility = 'visible';
}
var Input88 = document.getElementById('INPUT88');
if(x[51].getAttribute('VALUE') != '0') {
Input88.style.visibility = 'hidden';
} else {
Input88.style.visibility = 'visible';
}
var Input89 = document.getElementById('INPUT89');
if(x[51].getAttribute('VALUE') == '0') {
Input89.style.visibility = 'hidden';
} else {
Input89.style.visibility = 'visible';
}
var Input90 = document.getElementById('INPUT90');
if(x[52].getAttribute('VALUE') != '0') {
Input90.style.display = 'none';
} else {
Input90.style.display = 'block';
}
var Input91 = document.getElementById('INPUT91');
if(x[52].getAttribute('VALUE') == '0') {
Input91.style.display = 'none';
} else {
Input91.style.display = 'block';
}
var Input92 = document.getElementById('INPUT92');
if(x[53].getAttribute('VALUE') != '0') {
Input92.style.display = 'none';
} else {
Input92.style.display = 'block';
}
var Input93 = document.getElementById('INPUT93');
if(x[53].getAttribute('VALUE') == '0') {
Input93.style.visibility = 'hidden';
} else {
Input93.style.visibility = 'visible';
}
var Input94 = document.getElementById('INPUT94');
if(x[54].getAttribute('VALUE') == '0') {
Input94.style.visibility = 'hidden';
} else {
Input94.style.visibility = 'visible';
}
var Input95 = document.getElementById('INPUT95');
if(x[55].getAttribute('VALUE') != '0') {
Input95.style.visibility = 'hidden';
} else {
Input95.style.visibility = 'visible';
}
var Input96 = document.getElementById('INPUT96');
if(x[56].getAttribute('VALUE') != '0') {
Input96.style.visibility = 'hidden';
} else {
Input96.style.visibility = 'visible';
}
var Input97 = document.getElementById('INPUT97');
if(x[57].getAttribute('VALUE') != '0') {
Input97.style.visibility = 'hidden';
} else {
Input97.style.visibility = 'visible';
}
var Input98 = document.getElementById('INPUT98');
if(x[58].getAttribute('VALUE') != '0') {
Input98.style.visibility = 'hidden';
} else {
Input98.style.visibility = 'visible';
}
var Input99 = document.getElementById('INPUT99');
if(x[59].getAttribute('VALUE') != '0') {
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
if(x[69].getAttribute('VALUE') != '0') {
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
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.6_BOOL_i=1')); 
SetBg('INPUT3', '');
setTimeout("SetBg('INPUT3', 'LIGHT1_2.PNG');",500);
}
function PostXML4() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.6_BOOL_i=1')); 
SetBg('INPUT4', '');
setTimeout("SetBg('INPUT4', 'LIGHT1_1.PNG');",500);
}
function PostXML5() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.2_BOOL_i=1')); 
SetBg('INPUT5', '');
setTimeout("SetBg('INPUT5', 'LIGHT1_2.PNG');",500);
}
function PostXML6() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.2_BOOL_i=1')); 
SetBg('INPUT6', '');
setTimeout("SetBg('INPUT6', 'LIGHT1_1.PNG');",500);
}
function PostXML7() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.7_BOOL_i=1')); 
SetBg('INPUT7', '');
setTimeout("SetBg('INPUT7', 'LIGHT1_2.PNG');",500);
}
function PostXML8() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.7_BOOL_i=1')); 
SetBg('INPUT8', '');
setTimeout("SetBg('INPUT8', 'LIGHT1_1.PNG');",500);
}
function PostXML9() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.5_BOOL_i=1')); 
SetBg('INPUT9', '');
setTimeout("SetBg('INPUT9', 'LIGHT1_2.PNG');",500);
}
function PostXML10() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.5_BOOL_i=1')); 
SetBg('INPUT10', '');
setTimeout("SetBg('INPUT10', 'LIGHT1_1.PNG');",500);
}
function PostXML11() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.6_BOOL_i=1')); 
SetBg('INPUT11', '');
setTimeout("SetBg('INPUT11', 'LIGHT1_2.PNG');",500);
}
function PostXML12() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.6_BOOL_i=1')); 
SetBg('INPUT12', '');
setTimeout("SetBg('INPUT12', 'LIGHT1_1.PNG');",500);
}
function PostXML13() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.6_BOOL_i=1')); 
SetBg('INPUT13', '');
setTimeout("SetBg('INPUT13', 'LIGHT1_2.PNG');",500);
}
function PostXML14() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.6_BOOL_i=1')); 
SetBg('INPUT14', '');
setTimeout("SetBg('INPUT14', 'LIGHT1_1.PNG');",500);
}
function PostXML15() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.5_BOOL_i=1')); 
SetBg('INPUT15', '');
setTimeout("SetBg('INPUT15', 'LIGHT1_2.PNG');",500);
}
function PostXML16() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.5_BOOL_i=1')); 
SetBg('INPUT16', '');
setTimeout("SetBg('INPUT16', 'LIGHT1_1.PNG');",500);
}
function PostXML17() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.1_BOOL_i=1')); 
SetBg('INPUT17', '');
setTimeout("SetBg('INPUT17', 'LIGHT1_2.PNG');",500);
}
function PostXML18() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.1_BOOL_i=1')); 
SetBg('INPUT18', '');
setTimeout("SetBg('INPUT18', 'LIGHT1_1.PNG');",500);
}
function PostXML19() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.2_BOOL_i=1')); 
SetBg('INPUT19', '');
setTimeout("SetBg('INPUT19', 'LIGHT1_2.PNG');",500);
}
function PostXML20() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.2_BOOL_i=1')); 
SetBg('INPUT20', '');
setTimeout("SetBg('INPUT20', 'LIGHT1_1.PNG');",500);
}
function PostXML21() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.1_BOOL_i=1')); 
SetBg('INPUT21', '');
setTimeout("SetBg('INPUT21', 'LIGHT1_2.PNG');",500);
}
function PostXML22() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.1_BOOL_i=1')); 
SetBg('INPUT22', '');
setTimeout("SetBg('INPUT22', 'LIGHT1_1.PNG');",500);
}
function PostXML23() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.0_BOOL_i=1')); 
SetBg('INPUT23', '');
setTimeout("SetBg('INPUT23', 'LIGHT1_2.PNG');",500);
}
function PostXML24() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.0_BOOL_i=1')); 
SetBg('INPUT24', '');
setTimeout("SetBg('INPUT24', 'LIGHT1_1.PNG');",500);
}
function PostXML25() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.7_BOOL_i=1')); 
SetBg('INPUT25', '');
setTimeout("SetBg('INPUT25', 'LIGHT1_2.PNG');",500);
}
function PostXML26() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.7_BOOL_i=1')); 
SetBg('INPUT26', '');
setTimeout("SetBg('INPUT26', 'LIGHT1_1.PNG');",500);
}
function PostXML27() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.1_BOOL_i=1')); 
SetBg('INPUT27', '');
setTimeout("SetBg('INPUT27', 'LIGHT1_2.PNG');",500);
}
function PostXML28() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.1_BOOL_i=1')); 
SetBg('INPUT28', '');
setTimeout("SetBg('INPUT28', 'LIGHT1_1.PNG');",500);
}
function PostXML29() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.3_BOOL_i=1')); 
SetBg('INPUT29', '');
setTimeout("SetBg('INPUT29', 'LIGHT1_2.PNG');",500);
}
function PostXML30() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.3_BOOL_i=1')); 
SetBg('INPUT30', '');
setTimeout("SetBg('INPUT30', 'LIGHT1_1.PNG');",500);
}
function PostXML31() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.5_BOOL_i=1')); 
SetBg('INPUT31', '');
setTimeout("SetBg('INPUT31', 'LIGHT1_2.PNG');",500);
}
function PostXML32() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.5_BOOL_i=1')); 
SetBg('INPUT32', '');
setTimeout("SetBg('INPUT32', 'LIGHT1_1.PNG');",500);
}
function PostXML33() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.6_BOOL_i=1')); 
SetBg('INPUT33', '');
setTimeout("SetBg('INPUT33', 'LIGHT1_2.PNG');",500);
}
function PostXML34() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.6_BOOL_i=1')); 
SetBg('INPUT34', '');
setTimeout("SetBg('INPUT34', 'LIGHT1_1.PNG');",500);
}
function PostXML35() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.4_BOOL_i=1')); 
SetBg('INPUT35', '');
setTimeout("SetBg('INPUT35', 'LIGHT1_2.PNG');",500);
}
function PostXML36() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.4_BOOL_i=1')); 
SetBg('INPUT36', '');
setTimeout("SetBg('INPUT36', 'LIGHT1_1.PNG');",500);
}
function PostXML37() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.3_BOOL_i=1')); 
SetBg('INPUT37', '');
setTimeout("SetBg('INPUT37', 'LIGHT1_2.PNG');",500);
}
function PostXML38() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.3_BOOL_i=1')); 
SetBg('INPUT38', '');
setTimeout("SetBg('INPUT38', 'LIGHT1_1.PNG');",500);
}
function PostXML39() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.5_BOOL_i=1')); 
SetBg('INPUT39', '');
setTimeout("SetBg('INPUT39', 'LIGHT1_2.PNG');",500);
}
function PostXML40() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.5_BOOL_i=1')); 
SetBg('INPUT40', '');
setTimeout("SetBg('INPUT40', 'LIGHT1_1.PNG');",500);
}
function PostXML41() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.2_BOOL_i=1')); 
SetBg('INPUT41', '');
setTimeout("SetBg('INPUT41', 'LIGHT1_2.PNG');",500);
}
function PostXML42() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.2_BOOL_i=1')); 
SetBg('INPUT42', '');
setTimeout("SetBg('INPUT42', 'LIGHT1_1.PNG');",500);
}
function PostXML43() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.4_BOOL_i=1')); 
SetBg('INPUT43', '');
setTimeout("SetBg('INPUT43', 'LIGHT1_2.PNG');",500);
}
function PostXML44() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.4_BOOL_i=1')); 
SetBg('INPUT44', '');
setTimeout("SetBg('INPUT44', 'LIGHT1_1.PNG');",500);
}
function PostXML45() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.7_BOOL_i=1')); 
SetBg('INPUT45', '');
setTimeout("SetBg('INPUT45', 'LIGHT1_2.PNG');",500);
}
function PostXML46() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.7_BOOL_i=1')); 
SetBg('INPUT46', '');
setTimeout("SetBg('INPUT46', 'LIGHT1_1.PNG');",500);
}
function PostXML47() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.0_BOOL_i=1')); 
SetBg('INPUT47', '');
setTimeout("SetBg('INPUT47', 'LIGHT1_2.PNG');",500);
}
function PostXML48() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.0_BOOL_i=1')); 
SetBg('INPUT48', '');
setTimeout("SetBg('INPUT48', 'LIGHT1_1.PNG');",500);
}
function PostXML49() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.0_BOOL_i=1')); 
SetBg('INPUT49', '');
setTimeout("SetBg('INPUT49', 'LIGHT1_2.PNG');",500);
}
function PostXML50() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18188.0_BOOL_i=1')); 
SetBg('INPUT50', '');
setTimeout("SetBg('INPUT50', 'LIGHT1_1.PNG');",500);
}
function PostXML51() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.3_BOOL_i=1')); 
SetBg('INPUT51', '');
setTimeout("SetBg('INPUT51', 'LIGHT1_2.PNG');",500);
}
function PostXML52() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.3_BOOL_i=1')); 
SetBg('INPUT52', '');
setTimeout("SetBg('INPUT52', 'LIGHT1_1.PNG');",500);
}
function PostXML53() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.3_BOOL_i=1')); 
SetBg('INPUT53', '');
setTimeout("SetBg('INPUT53', 'LIGHT1_2.PNG');",500);
}
function PostXML54() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18187.3_BOOL_i=1')); 
SetBg('INPUT54', '');
setTimeout("SetBg('INPUT54', 'LIGHT1_1.PNG');",500);
}
function PostXML55() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18189.0_BOOL_i=1')); 
SetBg('INPUT55', '');
setTimeout("SetBg('INPUT55', 'FAN1_O_1.PNG');",500);
}
function PostXML56() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18189.0_BOOL_i=1')); 
SetBg('INPUT56', '');
setTimeout("SetBg('INPUT56', 'FAN1_O_2.PNG');",500);
}
function PostXML57() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.6_BOOL_i=1')); 
SetBg('INPUT57', '');
setTimeout("SetBg('INPUT57', 'LIGHT1_2.PNG');",500);
}
function PostXML58() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18186.6_BOOL_i=1')); 
SetBg('INPUT58', '');
setTimeout("SetBg('INPUT58', 'LIGHT1_1.PNG');",500);
}
function PostXML59() {
var Input59 = document.getElementById('INPUT59');
document.getElementById('INPUT59x').style.visibility = 'hidden';if(InputEdited[58]) {
PostXML('LIGHTS.XML', encodeURIComponent(Input59.name+'='+Input59.value)); InputEdited[58] = 0;
}
}
function PostXML62() {
var Input62 = document.getElementById('INPUT62');
document.getElementById('INPUT62x').style.visibility = 'hidden';if(InputEdited[61]) {
PostXML('LIGHTS.XML', encodeURIComponent(Input62.name+'='+Input62.value)); InputEdited[61] = 0;
}
}
function PostXML65() {
var Input65 = document.getElementById('INPUT65');
document.getElementById('INPUT65x').style.visibility = 'hidden';if(InputEdited[64]) {
PostXML('LIGHTS.XML', encodeURIComponent(Input65.name+'='+Input65.value)); InputEdited[64] = 0;
}
}
function PostXML69() {
var Input69 = document.getElementById('INPUT69');
document.getElementById('INPUT69x').style.visibility = 'hidden';if(InputEdited[68]) {
PostXML('LIGHTS.XML', encodeURIComponent(Input69.name+'='+Input69.value)); InputEdited[68] = 0;
}
}
function PostXML72() {
var Input72 = document.getElementById('INPUT72');
document.getElementById('INPUT72x').style.visibility = 'hidden';if(InputEdited[71]) {
PostXML('LIGHTS.XML', encodeURIComponent(Input72.name+'='+Input72.value)); InputEdited[71] = 0;
}
}
function PostXML76() {
var Input76 = document.getElementById('INPUT76');
document.getElementById('INPUT76x').style.visibility = 'hidden';if(InputEdited[75]) {
PostXML('LIGHTS.XML', encodeURIComponent(Input76.name+'='+Input76.value)); InputEdited[75] = 0;
}
}
function PostXML79() {
var Input79 = document.getElementById('INPUT79');
document.getElementById('INPUT79x').style.visibility = 'hidden';if(InputEdited[78]) {
PostXML('LIGHTS.XML', encodeURIComponent(Input79.name+'='+Input79.value)); InputEdited[78] = 0;
}
}
function PostXML82() {
var Input82 = document.getElementById('INPUT82');
document.getElementById('INPUT82x').style.visibility = 'hidden';if(InputEdited[81]) {
PostXML('LIGHTS.XML', encodeURIComponent(Input82.name+'='+Input82.value)); InputEdited[81] = 0;
}
}
function PostXML85() {
var Input85 = document.getElementById('INPUT85');
document.getElementById('INPUT85x').style.visibility = 'hidden';if(InputEdited[84]) {
PostXML('LIGHTS.XML', encodeURIComponent(Input85.name+'='+Input85.value)); InputEdited[84] = 0;
}
}
function PostXML90() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18189.2_BOOL_i=1')); 
SetBg('INPUT90', '');
setTimeout("SetBg('INPUT90', 'DOOR1__2.PNG');",500);
}
function PostXML91() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18189.2_BOOL_i=1')); 
SetBg('INPUT91', '');
setTimeout("SetBg('INPUT91', 'DOOR1__1.PNG');",500);
}
function PostXML92() {
PostXML('LIGHTS.XML', encodeURIComponent('__R18189.1_BOOL_i=1')); 
SetBg('INPUT92', '');
setTimeout("SetBg('INPUT92', 'LED_RE_1.PNG');",500);
}

function PostGlobal() {
var Input60 = document.getElementById('INPUT60');
var Input63 = document.getElementById('INPUT63');
var Input66 = document.getElementById('INPUT66');
var Input70 = document.getElementById('INPUT70');
var Input73 = document.getElementById('INPUT73');
var Input77 = document.getElementById('INPUT77');
var Input80 = document.getElementById('INPUT80');
var Input83 = document.getElementById('INPUT83');
var Input86 = document.getElementById('INPUT86');
var Input110 = document.getElementById('INPUT110');
PostXML('LIGHTS.XML', (InputEdited[59] ? encodeURIComponent(Input60.name)+'='+encodeURIComponent(Input60.value)+'&' : '')+(InputEdited[62] ? encodeURIComponent(Input63.name)+'='+encodeURIComponent(Input63.value)+'&' : '')+(InputEdited[65] ? encodeURIComponent(Input66.name)+'='+encodeURIComponent(Input66.value)+'&' : '')+(InputEdited[69] ? encodeURIComponent(Input70.name)+'='+encodeURIComponent(Input70.value)+'&' : '')+(InputEdited[72] ? encodeURIComponent(Input73.name)+'='+encodeURIComponent(Input73.value)+'&' : '')+(InputEdited[76] ? encodeURIComponent(Input77.name)+'='+encodeURIComponent(Input77.value)+'&' : '')+(InputEdited[79] ? encodeURIComponent(Input80.name)+'='+encodeURIComponent(Input80.value)+'&' : '')+(InputEdited[82] ? encodeURIComponent(Input83.name)+'='+encodeURIComponent(Input83.value)+'&' : '')+(InputEdited[85] ? encodeURIComponent(Input86.name)+'='+encodeURIComponent(Input86.value)+'&' : '')+(InputEdited[109] ? encodeURIComponent(Input110.name)+'='+encodeURIComponent(Input110.value)+'&' : ''));
InputEdited[59]=0;
InputEdited[62]=0;
InputEdited[65]=0;
InputEdited[69]=0;
InputEdited[72]=0;
InputEdited[76]=0;
InputEdited[79]=0;
InputEdited[82]=0;
InputEdited[85]=0;
InputEdited[109]=0;
}
