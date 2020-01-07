let g:lsp_log_verbose = 0
"let g:lsp_log_file = expand("~/vim-lsp.log")

"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
"imap <c-space> <Plug>(asyncomplete_force_refresh)
"autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" key mapps {{{
"   To map keys to the feature of vim-lsp, use <plug> mappings:
"   autocmd FileType python,go nmap gd <plug>(lsp-definition)
"   detail help.
"   h: vim-lsp-mapping

nmap <buffer> <F12> <Plug>(lsp-definition)
nmap <buffer> <C-]> <Plug>(lsp-definition)
" nmap <buffer> XX <plug>(lsp-document-symbol)
" nmap <buffer> XX <plug>(lsp-document-diagnostics)
nmap <buffer> K <Plug>(lsp-hover)

nmap <buffer> <C-n> <Plug>(lsp-next-reference)
nmap <buffer> <C-p> <Plug>(lsp-previous-reference)

nmap <buffer> <S-F12> <plug>(lsp-references)
nmap <buffer> <S-F6> <plug>(lsp-rename)
" nmap <buffer> XX <plug>(lsp-workspace-symbol)
nmap <buffer> =- <plug>(lsp-document-format)
nmap <buffer> <F11> <plug>(lsp-implementation)
nmap <buffer> <F2> <plug>(lsp-type-definition)
" nmap <buffer> XX <plug>(lsp-status)
" nmap <buffer> XX <plug>(lsp-code-action)

" commands {{{
command! -range CodeAction call lsp#ui#vim#code_action()
command! Declaration call lsp#ui#vim#declaration(0)
command! PeekDeclaration call lsp#ui#vim#declaration(1)
command! Definition call lsp#ui#vim#definition(0)
command! PeekDefinition call lsp#ui#vim#definition(1)
command! DocumentSymbol call lsp#ui#vim#document_symbol()
command! DocumentDiagnostics call lsp#ui#vim#diagnostics#document_diagnostics()
command! -nargs=? -complete=customlist,lsp#utils#empty_complete Hover call lsp#ui#vim#hover#get_hover_under_cursor()
command! NextError call lsp#ui#vim#diagnostics#next_error()
command! PreviousError call lsp#ui#vim#diagnostics#previous_error()
command! NextWarning call lsp#ui#vim#diagnostics#next_warning()
command! PreviousWarning call lsp#ui#vim#diagnostics#previous_warning()
command! NextDiagnostic call lsp#ui#vim#diagnostics#next_diagnostic()
command! PreviousDiagnostic call lsp#ui#vim#diagnostics#previous_diagnostic()
command! References call lsp#ui#vim#references()
command! Rename call lsp#ui#vim#rename()
command! TypeDefinition call lsp#ui#vim#type_definition(0)
command! TypeHierarchy call lsp#ui#vim#type_hierarchy()
command! PeekTypeDefinition call lsp#ui#vim#type_definition(1)
command! WorkspaceSymbol call lsp#ui#vim#workspace_symbol()
command! -range DocumentFormat call lsp#ui#vim#document_format()
command! -range DocumentFormatSync call lsp#ui#vim#document_format_sync()
command! -range DocumentRangeFormat call lsp#ui#vim#document_range_format()
command! -range DocumentRangeFormatSync call lsp#ui#vim#document_range_format_sync()
command! Implementation call lsp#ui#vim#implementation(0)
command! PeekImplementation call lsp#ui#vim#implementation(1)
command! -nargs=0 Status call lsp#print_server_status()
command! NextReference call lsp#ui#vim#references#jump(+1)
command! PreviousReference call lsp#ui#vim#references#jump(-1)
command! -nargs=? -complete=customlist,lsp#server_complete StopServer call lsp#ui#vim#stop_server(<f-args>)
command! -nargs=? -complete=customlist,lsp#utils#empty_complete SignatureHelp call lsp#ui#vim#signature_help#get_signature_help_under_cursor()
command! DocumentFold call lsp#ui#vim#folding#fold(0)
command! DocumentFoldSync call lsp#ui#vim#folding#fold(1)
command! -nargs=? SemanticScopes call lsp#ui#vim#semantic#display_scope_tree(<args>)
" }
