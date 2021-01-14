"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins Sections:
" -> 0: vubdle                      [插件管理]
" -> 1: nerdtree                    [目录树]
" -> 2: undotree                    [回退工具]
" -> 3: vim-autoformat              [代码格式化]
" -> 4: nerdcommenter               [注释工具]
" -> 5: vim-interestingwords        [高亮选中]
" -> 6: vim-choosewin               [窗口切换]
" -> 7: delimitMate                 [成对符号补全]
" -> 8: vim-airline                 [状态栏]
" -> 9: Leaderf                     [模糊搜索]
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => 0: vubdle {{{
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/preservim/nerdtree.git'
Plugin 'https://github.com/mbbill/undotree.git'
Plugin 'https://github.com/vim-airline/vim-airline.git'
Plugin 'https://github.com/Raimondi/delimitMate.git'
Plugin 'https://github.com/lfv89/vim-interestingwords.git'
Plugin 'https://github.com/Chiel92/vim-autoformat.git'
Plugin 'https://github.com/t9md/vim-choosewin.git'
Plugin 'https://github.com/preservim/nerdcommenter.git'
Plugin 'https://github.com/Yggdroot/LeaderF.git'
call vundle#end()            " required
" }}}

" => 1: [F5] nerdtree {{{
nnoremap <F5> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" }}}

" => 2: [F6] undotree {{{
nnoremap <F6> :UndotreeToggle<CR>
" }}}

" => 3: [F7] vim-autoformat {{{
nnoremap <F7> :Autoformat<CR>
let g:autoformat_autoindent = 1
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 1
let g:formatdef_clangformat_google = '"clang-format -style google -"'
let g:formatters_c = ['clangformat_google']
" }}}

" => 4: [,cc/,cu] nerdcommenter {{{
" cc or cs: commenter
" cu: cancel commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" }}}

" => 5: [k && K] vim-interestingwords {{{
" k and K
nnoremap n :call WordNavigation('forward')
nnoremap N :call WordNavigation('backward')
" }}}

" => 6: [-] vim-choosewin {{{
" invoke with '-'
nmap  -  <Plug>(choosewin)
" if you want to use overlay feature
let g:choosewin_overlay_enable = 1
" }}}

" => 7: [shift+tab] delimitMate {{{
" shift+tab: jump to end
" }}}

" => 8: vim-airline {{{
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" }}}

" => 9: Leaderf {{{
" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
let g:Lf_WindowPosition = 'popup'
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
let g:Lf_PreviewInPopup = 1
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }
let g:Lf_GtagsAutoGenerate = 0

noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg -w --current-buffer -e %s ", expand("<cword>"))<CR><CR>
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -w -e %s ", expand("<cword>"))<CR><CR>

noremap <leader>lr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>ld :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>lo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <leader>ln :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <leader>lp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>
noremap <leader>lf :LeaderfFunction!<CR>

" }}}
