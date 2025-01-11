" Sintaxis para HTML
:set omnifunc=htmlcomplete#CompleteTags

"HTML
autocmd FileType html inoremap ,ti <!DOCTYPE html><Enter><html><Enter><head><Enter><title></title><Enter></head><Enter><body><Enter><++><Enter></body><Enter></html><Esc>5kf>a
autocmd FileType html inoremap &<space> &amp;<space>
autocmd FileType html inoremap ,1 <h1></h1><Enter><++><Esc>kli
autocmd FileType html inoremap ,2 <h2></h2><Enter><++><Esc>kli
autocmd FileType html inoremap ,3 <h3></h3><Enter><++><Esc>kli
autocmd FileType html inoremap ,4 <h4></h4><Enter><++><Esc>kli
autocmd FileType html inoremap ,a <a<Space>href=""><++></a><Space><++><Esc>14hi
autocmd FileType html inoremap ,ar <article><Enter><++><Enter></article><Enter><++><Esc>3kf>i
autocmd FileType html inoremap ,b <b></b><Space><++><Esc>FbT>i
autocmd FileType html inoremap ,cl class=""<++><Esc>4hi
autocmd FileType html inoremap ,co <!--<Space> --><Enter><++><Esc>1k2li
autocmd FileType html inoremap ,di <div></div><Enter><++><Esc>kf<i
autocmd FileType html inoremap ,dl <dl><Enter><Enter></dl><enter><++><esc>2kcc
autocmd FileType html inoremap ,dt <dt></dt><Enter><dd><++></dd><Enter><++><esc>2kcit
autocmd FileType html inoremap ,e <a<Space>target="_blank"<Space>href=""><++></a><Space><++><Esc>14hi
autocmd FileType html inoremap ,fi <figure><Enter><++><Enter></figure><Enter><++><Esc>3kf>i
autocmd FileType html inoremap ,fo <form action=""<++>><Enter><++><Enter></form><Enter><++><Esc>3kf"a
"autocmd FileType html inoremap ,gr <font color="green"></font><Esc>F>a
autocmd FileType html inoremap ,im <img src="" alt="<++>"<++>><Enter><++><esc>kf"a
autocmd FileType html inoremap ,it <em></em><Space><++><Esc>FeT>i
autocmd FileType html inoremap ,l <link<Space>rel="stylesheet"<Space>href=""><Space><Esc>bf"a
autocmd FileType html inoremap ,la <label></label><Enter><++><Esc>kf<i
autocmd FileType html inoremap ,li <li></li><Enter><++><Esc>ka
autocmd FileType html inoremap ,na <nav><Enter><++><Enter></nav><Enter><++><Esc>3kf>i
autocmd FileType html inoremap ,ol <ol><Enter><li></li><Enter><++><Enter></ol><Enter><++><Esc>3kf>a
autocmd FileType html inoremap ,p <p></p><Enter><++><Esc>02kf>a
"autocmd FileType html inoremap ,rd <font color="red"></font><Esc>F>a
autocmd FileType html inoremap ,se <section></section><Enter><++><Esc>kf<i
autocmd FileType html inoremap ,sp <span></span><Enter><++><Esc>kf<i
autocmd FileType html inoremap ,st <strong></strong><++><Esc>3ba
autocmd FileType html inoremap ,tab <table><Enter><++><Enter></table><Enter><++><Esc>4kf>i
autocmd FileType html inoremap ,td <td></td><Enter><++><Esc>ka
autocmd FileType html inoremap ,th <th></th><Enter><++><Esc>ka
autocmd FileType html inoremap ,tr <tr><Enter><Enter></tr><Enter><++><Esc>2kcc
autocmd FileType html inoremap ,ul <ul><Enter><li></li><Enter><++><Enter></ul><Enter><++><Esc>3kf>a
"autocmd FileType html inoremap ,yl <font color="yellow"></font><Esc>F>a
"autocmd FileType html inoremap á &aacute;
"autocmd FileType html inoremap é &eacute;
"autocmd FileType html inoremap í &iacute;
"autocmd FileType html inoremap ó &oacute;
"autocmd FileType html inoremap ú &uacute;
"autocmd FileType html inoremap ä &auml;
"autocmd FileType html inoremap ë &euml;
"autocmd FileType html inoremap ï &iuml;
"autocmd FileType html inoremap ö &ouml;
"autocmd FileType html inoremap ü &uuml;
"autocmd FileType html inoremap ã &atilde;
"autocmd FileType html inoremap ẽ &etilde;
"autocmd FileType html inoremap ĩ &itilde;
"autocmd FileType html inoremap õ &otilde;
"autocmd FileType html inoremap ũ &utilde;
"autocmd FileType html inoremap ñ &ntilde;
"autocmd FileType html inoremap à &agrave;
"autocmd FileType html inoremap è &egrave;
"autocmd FileType html inoremap ì &igrave;
"autocmd FileType html inoremap ò &ograve;
"autocmd FileType html inoremap ù &ugrave;
