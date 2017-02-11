function! Toggle_brackets_on_umlauts()
  if !exists('g:brace4umlaut_active')
    let g:brace4umlaut_active = 0
  endif
  if g:brace4umlaut_active == 0
    imap ö :
    imap Ö \
    imap ü [
    imap Ü {
    imap ä ]
    imap Ä }
    let g:brace4umlaut_active = 1
  else
    iunmap ö
    iunmap Ö
    iunmap ü
    iunmap Ü
    iunmap ä
    iunmap Ä
    let g:brace4umlaut_active = 0
  endif
endfunction


"------------------------------------------------------------------------------
" toggle insert mode mappings
command! UmlautsToggle :call Toggle_brackets_on_umlauts()
nnoremap <silent> coö :UmlautsToggle<cr>
nnoremap <silent> coü :UmlautsToggle<cr>
nnoremap <silent> coä :UmlautsToggle<cr>

" command line
nmap ö :
vmap ö :
" [ and ] navigation on a German keyboard
nmap ü [
vmap ü [
nmap ä ]
vmap ä ]
" { and } navigation on a German keyboard
nmap Ü {
vmap Ü {
nmap Ä }
vmap Ä }

UmlautsToggle
