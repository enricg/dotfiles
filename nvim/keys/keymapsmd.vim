"MARKDOWN
autocmd FileType markdown noremap <leader>r i---<CR>title:<Space><++><CR>author:<Space>"Enric Giner"<CR>geometry:<CR>-<Space>top=30mm<CR>-<Space>left=20mm<CR>-<Space>right=20mm<CR>-<Space>bottom=30mm<CR>header-includes:<Space>\|<CR><Tab>\usepackage{float}<CR>\let\origfigure\figure<CR>\let\endorigfigure\endfigure<CR>\renewenvironment{figure}[1][2]<Space>{<CR><Tab>\expandafter\origfigure\expandafter[H]<CR><BS>}<Space>{<CR><Tab>\endorigfigure<CR><BS>}<CR><BS>---<CR><CR><++><Esc>gg
	autocmd FileType markdown map -p :!evince <c-r>%<backspace><backspace>pdf&<CR><CR>
	autocmd Filetype markdown,rmd map <leader>w yiWi[<esc>Ea](<esc>pa)
	autocmd FileType markdown,rm nnoremap ,pl :-1read $HOME/.config/.plantillamd<CR>
	autocmd Filetype markdown,rmd inoremap ,n ---<Enter><Enter>
	autocmd Filetype markdown,rmd inoremap ,b ****<++><Esc>F*hi
	autocmd Filetype markdown,rmd inoremap ,s ~~~~<++><Esc>F~hi
	autocmd Filetype markdown,rmd inoremap ,e **<++><Esc>F*i
	autocmd Filetype markdown,rmd inoremap ,h ====<Space><++><Esc>F=hi
	autocmd Filetype markdown,rmd inoremap ,i ![](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap ,a [](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap ,1 #<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ,2 ##<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ,3 ###<Space><Enter><++><Esc>kA
	autocmd FileType markdown,rmd inoremap ,4 ####<Space><CR><CR><++><Esc>2k<S-a>
	autocmd FileType markdown,rmd inoremap ,5 #####<Space><CR><CR><++><Esc>2k<S-a>
	autocmd Filetype markdown,rmd inoremap ,l --------<Enter>
	autocmd Filetype markdown map <F7> :!pandoc <c-r>% -o <c-r>%<backspace><backspace>pdf -t beamer --pdf-engine=xelatex<CR><CR>
	autocmd Filetype rmd inoremap ,r ```{r}<CR>```<CR><CR><esc>2kO
	autocmd Filetype rmd inoremap ,p ```{python}<CR>```<CR><CR><esc>2kO
	autocmd Filetype rmd inoremap ,c ```<cr>```<cr><cr><esc>2kO

	" mostrar un listado de los titulos en archivos markdown <leader>+t
	nnoremap t :g/^#/# <cr>
