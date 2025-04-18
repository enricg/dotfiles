
"LATEX
	inoremap ,lo <Esc>:-1read $HOME/.config/plantilles/lorem.txt<CR>
	" compta paraules:
	autocmd FileType tex map <leader>w :w !detex \| wc -w<CR>
	" FRAGMENTS DE CODI
	" Nova línia
	autocmd FileType tex inoremap ,l <SPACE>\\<Enter>
	" Variable
	autocmd FileType tex inoremap ,nc \newcommand{}{<++>}<Esc>0f}i

	" Formats
	autocmd FileType tex inoremap ,tn \textbf{}<SPACE><++><Esc>T{i
	autocmd FileType tex inoremap ,ti \textit{}<SPACE><++><Esc>T{i
	autocmd FileType tex inoremap ,te \emph{}<SPACE><++><Esc>T{i

	" Títols
	autocmd FileType tex inoremap ,part \part{}<Enter><++><Esc>kf}i
	autocmd FileType tex inoremap ,cap \chapter{}<Enter><++><Esc>kf}i
	autocmd FileType tex inoremap ,sec \section{}<Enter><++><Esc>kf}i
	autocmd FileType tex inoremap ,ssec \subsection{}<Enter><++><Esc>kf}i
	autocmd FileType tex inoremap ,sssec \subsubsection{}<Enter><++><Esc>kf}i
	autocmd FileType tex inoremap ,par \paragraph{}<Enter><++><Esc>kf}i
	autocmd FileType tex inoremap ,spar \subparagraph{}<Enter><++><Esc>kf}i

	" Justificació
	autocmd FileType tex inoremap ,jc \begin{center}<Enter><Enter>\end{center}<Enter><++><Esc>2ki
	autocmd FileType tex inoremap ,je \begin{flushleft}<Enter><Enter>\end{flushleft}<Enter><++><Esc>2ki
	autocmd FileType tex inoremap ,jd \begin{flushright}<Enter><Enter>\end{flushright}<Enter><++><Esc>2ki

	" Llistes
	autocmd FileType tex inoremap ,lnn <Enter>\begin{itemize}<Enter>\item<Space><Enter>\end{itemize}<Enter><++><Esc>2kA
	autocmd FileType tex inoremap ,ln <Enter>\begin{enumerate}<Enter>\item<Space><Enter>\end{enumerate}<Enter><++><Esc>2kA
	autocmd FileType tex inoremap ,ld <Enter>\begin{description}<Enter>\item[]<Space><++><Enter>\end{description}<Enter><++><Esc>2kf]i
	autocmd FileType tex inoremap ,li <Enter>\item<Space>
	autocmd FileType tex inoremap ,lc <Enter>\choice<Space>

	" Peus de pàgina
	autocmd FileType tex inoremap ,pp \footnotetext{}<SPACE><++><Esc>T{i

	" Exàmens
	autocmd FileType tex inoremap ,q <Enter>\question<Space>
	autocmd FileType tex inoremap ,lq \question<Space><Enter>\begin{checkboxes}<Enter>\choice<Space><++><Enter>\end{checkboxes}<Enter><++><Esc>4k2lA

	" Figures i taules
	autocmd FileType tex inoremap ,fi \begin{figure}<Enter>\centering<Enter>\includegraphics[width=1.0\columnwidth]{}<Enter>\caption{<++>}<Enter>\label{fig:<++>}<Enter>\end{figure}<Enter><++><Esc>4kf}i

	" Cites
	autocmd FileType tex inoremap ,ci \enquote{}<SPACE>\\<Enter><++><Esc>kf}i


	autocmd FileType tex inoremap ,a \href{}{<++>}<Space><++><Esc>2T{i
	autocmd FileType tex inoremap ,bt {\blindtext}
	autocmd FileType tex inoremap ,can \cand{}<Tab><++><Esc>T{i
	autocmd FileType tex inoremap ,col <Enter>\begin{columns}{}<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter><++><Enter>\end{column}<Enter>\end{columns}<Esc>5kA
	autocmd FileType tex inoremap ,con \const{}<Tab><++><Esc>T{i
	autocmd FileType tex inoremap ,cp \parencite{}<++><Esc>T{i
	autocmd FileType tex inoremap ,ct \textcite{}<++><Esc>T{i
	autocmd FileType tex inoremap ,exe \begin{exe}<Enter>\ex<Space><Enter>\end{exe}<Enter><Enter><++><Esc>3kA
	autocmd FileType tex inoremap ,fr \begin{frame}{}<Enter><++><Enter>\end{frame}<Enter><++><Esc>3k10la
	autocmd FileType tex inoremap ,glos {\gll<Space><++><Space>\\<Enter><++><Space>\\<Enter>\trans{``<++>''}}<Esc>2k2bcw
	autocmd FileType tex inoremap ,nu $\varnothing$
	autocmd FileType tex inoremap ,ot \begin{tableau}<Enter>\inp{<++>}<Tab>\const{<++>}<Tab><++><Enter><++><Enter>\end{tableau}<Enter><Enter><++><Esc>5kA{}<Esc>i
	autocmd FileType tex inoremap ,ref \ref{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ,rn (\ref{})<++><Esc>F}i
	autocmd FileType tex inoremap ,sc \textsc{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ,st <Esc>F{i*<Esc>f}i
	autocmd FileType tex inoremap ,tab \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
	autocmd FileType tex inoremap ,tb <Space>\textbullet{}<Space>
	autocmd FileType tex inoremap ,tt \texttt{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ,u \url{}<++><Esc>T{i
	autocmd FileType tex inoremap ,up <Esc>/usepackage<Enter>o\usepackage{}<Esc>i
	autocmd FileType tex inoremap ,v \vio{}<Tab><++><Esc>T{i
	autocmd FileType tex inoremap ,x \begin{xlist}<Enter>\ex<Space><Enter>\end{xlist}<Esc>kA<Space>
	autocmd FileType tex nnoremap ,up /usepackage<Enter>o\usepackage{}<Esc>i
	autocmd FileType tex vnoremap , <ESC>`<i\{<ESC>`>2la}<ESC>?\\{<Enter>a

	" Diapositives
	autocmd FileType tex inoremap ,ds \begin{block}{}<Enter><Enter>\end{block}<Enter><++><Esc>2ki
	autocmd FileType tex inoremap ,di \begin{figure}<Enter>\centering<Enter>\includegraphics[width=1.0\columnwidth]{}<Enter>\end{figure}<Enter><++><Esc>2kf}i
