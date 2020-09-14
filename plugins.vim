"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins Sections:
" -> F0: pathogen [插件管理]
" -> F1: delimitMate [成对符号补全]
" -> F2:
" -> F3: YankRing [剪切板粘贴]
" -> F4: vim-airline [状态栏]
" -> F5: nerdtree [目录]
" -> F6:
" -> F7:
" -> F8: vim-autoformat [代码格式化]
" -> F9: undotree [回退工具]
" -> F10:
" -> F11: vim-choosewin [窗口切换]
" -> F12: nerdcommenter [注释工具]
" -> F13: Leaderf [模糊搜索]
" -> F14: youcompleteme [自动补全]
" -> F15:
" -> F16: vim-interestingwords [高亮选中]
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => F0: pathogen {{{
execute pathogen#infect()
" }}}

" => F1: delimitMate {{{
" shift+tab: jump to end
" }}}

" => F2: {{{
" }}}

" => F3: YankRing {{{
let g:yankring_history_dir = $HOME.'/.vim/'
let g:yankring_history_file = '.yankring_history'
nmap y :YRShow
" }}}

" => F4: vim-airline {{{
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" }}}

" => F5: nerdtree {{{
nnoremap :NERDTreeToggle
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" }}}

" => F6: {{{
" }}}

" => F7: {{{
" }}}

" => F8: vim-autoformat {{{
nnoremap :Autoformat
let g:autoformat_autoindent = 1
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 1
let g:formatdef_clangformat_google = '"clang-format -style google -"'
let g:formatters_c = ['clangformat_google']
" }}}

" => F9: undotree {{{
" }}}

" => F11: vim-choosewin {{{
" invoke with '-'
nmap - (choosewin)
" if you want to use overlay feature
let g:choosewin_overlay_enable = 1
" }}}

" => F12: nerdcommenter {{{
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

" => F13: Leaderf {{{
" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
let g:Lf_WindowPosition = 'popup'
let g:Lf_StlSeparator = { 'left': '', 'right': '' }

let g:Lf_WildIgnore = {
\ 'dir': ['.svn','.git','.hg', 'cross_compiler', 'make', 'busybox', 'linux-lsk-v4.1.25'],
\ 'file': ['.sw?','~$','.bak','.exe','.o','.so.','.py[co]']
}

noremap lf :LeaderfFunction!

noremap :=printf("Leaderf! rg -w --current-buffer -e '%s' ", expand(""))
noremap :=printf("Leaderf! rg -w '%s' ", expand(""))
noremap a :Leaderf! --recall

let g:Lf_GtagsAutoGenerate = 0
noremap lg :=printf("Leaderf! gtags --update")
noremap lr :=printf("Leaderf! gtags -r '%s' --auto-jump", expand(""))
noremap ld :=printf("Leaderf! gtags -d '%s' --auto-jump", expand(""))
" }}}

" => F14: youcompleteme {{{
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = ''
set completeopt=menu,menuone

let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
noremap

let g:ycm_semantic_triggers = {
\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
\ 'cs,lua,javascript': ['re!\w{2}'],
\ }

let g:ycm_filetype_whitelist = {
\ "c":1,
\ "cpp":1,
\ "objc":1,
\ "sh":1,
\ "zsh":1,
\ "zimbu":1,
\ }
" }}}

" => F15: {{{
" }}}

" => F16: vim-interestingwords {{{
" k and K
nnoremap n :call WordNavigation('forward')
nnoremap N :call WordNavigation('backward')
" }}}
