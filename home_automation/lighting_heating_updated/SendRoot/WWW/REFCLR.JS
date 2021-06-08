var lang = navigator.language ? navigator.language : navigator.userLanguage;
if(lang == "cs" || lang == "sk") {
document.getElementById('cachewarning').innerHTML = 
"<form action='javascript:location.reload(true)'><p><input type='submit' value=' Obnovit '></p></form>"+
"<h2>V mezipaměti prohlížeče je starší verze požadované stránky. Obnovte prosím stránku nebo smažte mezipaměť prohlížeče.</h2>"+
"<h3>Pro obnovení stránky stiskněte F5 nebo klikněte na tlačítko obnovení na nástrojové liště.</h3>"+
"<h3>Níže jsou uvedené postupy jak vymazat mezipaměť u nejpoužívanější prohlížečů.</h3>"+
"<h3>Internet Explorer</h3><ul><li>Internet Explorer 8<ul><li>Klikněte na 'Zabezpečení' a vyberte 'Odstranit historii procházení', ujistě te se, že je zatržené 'Dočasné soubory Internetu' a klikněte na 'Odstranit'.</li>"+
"</ul></li><li>Internet Explorer 7<ul>"+
"<li>Klikněte na 'Nástroje' a vyberte 'Možnosti Internetu', zvolete záložku 'Obecné' a klikněte na 'Vymazat soubory' po sekcí 'Dočasné soubory Internetu'.</li>"+
"</ul></li><li>Starší verze<ul>"+
"<li>Klikněte na 'Nástroje' a vyberte 'Možnosti Internetu', zvolete záložku 'Obecné'. Poté klikněte na 'Odstranit soubory' v sekci 'Dočasné soubory Internetu' a podtvrďte "+
"dialog 'Ok'.</li></ul></li></ul>"+
"<h3>Rodina Mozilla (Firefox, SeaMonkey, Netscape Navigator)</h3><ul>"+
"<li>Zahrnuje Firefox, Netscape Navigator (ver. 6.x a 7.x) a SeaMonkey.<ul>"+
"<li>Z menu 'Úpravy' nebo 'Nástroje' vyberte 'Vlastnosti' nebo 'Možnosti'. Rozbalte volbu 'Rozšířené'a vyberte 'Mezipaměť' nebo 'Soukromí'. Klikněte na tlačítko 'Vymazat "+
"mezipaměť'.</li><li>V novějších verzích Mozilla Firefox, lze snadno smazat mezipaměť. Stiskněte Ctrl+Shift+Delete (nebo Del) a vyberte 'Vyrovnávací paměť'.</li></ul></li></ul></td><td></td><td>"+
"<h3>Safari</h3><ul>"+
"<li>Z menu 'Edit', vyberte 'Empty Cache...' nebo stiskněte Ctrl+Alt+E (nebo Option+Command+E na počítačích Apple)</li></ul>"+
"<h3>Google Chrome</h3><ul><li>V menu 'Nástroje' (symbol klíče nahoře vpravo) klikněte na 'Smazat údaje o prohlížení', ujistě te se, že je zatržené 'Vyprázdnit mezipaměť' a v řádku 'Smazat údaje z tohoto období' je vybráno 'Vše'.</li>"+
"</ul><h3>Opera</h3><ul><li>Z menu 'Nástroje', vyberte 'Vymazat soukromá data...'. Rozbalte 'Podrobné volby', ujistěte se, že je zaškrtnuto Vymazat z cache vše, a klikněte na tlačítko 'Smazat'.</li>"+
"</ul>";
} else {
document.getElementById('cachewarning').innerHTML =
"<form action='javascript:location.reload(true)'><p><input type='submit' value=' Refresh '></p></form>"+
"<h2>There is older version of requested web page in your browser cache. Please, refresh page or clear the cache.</h2>"+
"<h3>To refresh page press F5 or click the refresh button on the toolbar.</h3>"+
"<h3>There are guides how to clear the cache for major browser below.</h3>"+ 
"<h3>Internet Explorer</h3><ul><li>Internet Explorer 8<ul>"+
"<li>Click 'Safety' and select 'Delete Browsing History', make sure 'Temporary Internet Files', then click 'Delete'.</li></ul></li><li>Internet Explorer 7<ul>"+
"<li>Click 'Tools' and select 'Internet Options', choose the 'General' tab and click 'Delete Files' under the Temporary Internet Files section.</li></ul></li><li>Older versions<ul>"+
"<li>Click on 'Tools' and then 'Internet Options' and choose the 'General' tab. Then click 'Delete Files...' in the 'Temporary Internet files' section. Confirm dialog "+
"clicking 'OK'.</li></ul></li></ul>"+
"<h3>Mozilla family (Firefox, SeaMonkey, Netscape Navigator)</h3><ul><li>This includes Firefox, Netscape Navigator (versions 6.x and 7.x) and SeaMonkey."+ 
"<ul><li>From the 'Edit' or 'Tools' menu, choose 'Preferences' or 'Options'. Expand the 'Advanced' options and choose 'Cache' or 'Privacy'. Click the button called 'Clear "+
"Cache'.</li><li>In newer versions of Mozilla Firefox, you can easily clear the cache. Hold down the Ctrl and Shift keys, and press Delete (or Del) and choose 'Cache'.</li>"+
"</ul></li></ul><h3>Safari</h3><ul><li>Hold down the Option (Alt) and Command (Ctrl) keys and press E.</li></ul>"+
"<h3>Google Chrome</h3><ul><li>Go to the Tools menu (the wrench on the upper right of the browser) Click on 'Options' and click on 'Clear browsing data...' On the 'Clear data from this period'"+
"select 'Everything'.</li></ul><h3>Opera</h3><ul><li>From the 'Tools' menu, choose 'Delete private data'. Click 'Details', make sure that 'Delete entire cache' is selected, and click on 'Delete'.</li></ul>";
}