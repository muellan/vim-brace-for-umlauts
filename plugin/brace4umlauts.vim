" custom fzf extensions
let s:cpo_save = &cpo
set cpo&vim

"------------------------------------------------------------------------------
" insert and command mode mappings
"------------------------------------------------------------------------------
function! s:Braces_on_umlauts()
  " lang-arg mappings: insert, command-line, regexp mode
  let s:init = !exists('g:brace4umlaut_active') 
  let g:brace4umlaut_active = 1
  " insert mode
  imap ö :
  imap Ö \
  imap ü [
  imap Ü {
  imap ä ]
  imap Ä }
  imap <c-r>ö <c-r>:
  " command mode
  cmap ö :
  cmap Ö \
  cmap ü [
  cmap Ü {
  cmap ä ]
  cmap Ä }
  if !s:init | echo 'Umlauts -> Braces' | endif
endfunction

function! s:No_braces_on_umlauts()
  " lang-arg mappings: insert, command-line, regexp mode
  let s:init = !exists('g:brace4umlaut_active') 
  let g:brace4umlaut_active = 0
  if !s:init 
    " insert mode
    iunmap ö
    iunmap Ö
    iunmap ü
    iunmap Ü
    iunmap ä
    iunmap Ä
    " command mode
    cunmap ö
    cunmap Ö
    cunmap ü
    cunmap Ü
    cunmap ä
    cunmap Ä
    echo 'NO Braces on Umlauts'
  endif
endfunction

function! s:Toggle_braces_on_umlauts()
  if g:brace4umlaut_active == 0 || !exists('g:brace4umlaut_active') 
    call s:Braces_on_umlauts()
  else
    call s:No_braces_on_umlauts()
  endif
endfunction


"------------------------------------------------------------------------------
" control insert and command mode mappings
"------------------------------------------------------------------------------
command! Umlauts       :call s:Braces_on_umlauts()
command! NoUmlauts     :call s:No_braces_on_umlauts()
command! UmlautsToggle :call s:Toggle_braces_on_umlauts()


"------------------------------------------------------------------------------
" normal and visual mode mappings
"------------------------------------------------------------------------------
" invoke command line
nmap ö :
vmap ö :

" [ and ] navigation 
nmap ü [
vmap ü [
nmap ä ]
vmap ä ]
" { and } navigation
nmap Ü {
vmap Ü {
nmap Ä }
vmap Ä }
" operator-pending
omap Ü {
omap Ü {
omap Ä }
omap Ä }
omap ü [
omap ü [
omap ä ]
omap ä ]

omap aÜ a{
omap aÜ a{
omap aÄ a}
omap aÄ a}
omap aü a[
omap aü a[
omap aä a]
omap aä a]

omap iÜ i{
omap iÜ i{
omap iÄ i}
omap iÄ i}
omap iü i[
omap iü i[
omap iä i]
omap iä i]

vmap aÜ a{
vmap aÜ a{
vmap aÄ a}
vmap aÄ a}
vmap aü a[
vmap aü a[
vmap aä a]
vmap aä a]

vmap iÜ i{
vmap iÜ i{
vmap iÄ i}
vmap iÄ i}
vmap iü i[
vmap iü i[
vmap iä i]
vmap iä i]

nmap <space>Ü <Plug>Ysurroundiw{
nmap <space>Ä <Plug>Ysurroundiw}
nmap <space>ü <Plug>Ysurroundiw[
nmap <space>ä <Plug>Ysurroundiw]

vmap <space>Ü <Plug>VSurround{
vmap <space>Ä <Plug>VSurround}
vmap <space>ü <Plug>VSurround[
vmap <space>ä <Plug>VSurround]

imap <c-g>Ü <Plug>Isurround{
imap <c-g>Ä <Plug>Isurround}
imap <c-g>ü <Plug>Isurround[
imap <c-g>ä <Plug>Isurround]

nmap csÜü <Plug>Csurround{[
nmap csÜä <Plug>Csurround{]
nmap csÄü <Plug>Csurround}[
nmap csÄä <Plug>Csurround}]
nmap csüÜ <Plug>Csurround[{
nmap csüÄ <Plug>Csurround[}
nmap csäÜ <Plug>Csurround]{
nmap csäÄ <Plug>Csurround]}

nmap csbÜ <Plug>Csurroundb{
nmap csbÜ <Plug>Csurroundb{
nmap csbÄ <Plug>Csurroundb}
nmap csbÄ <Plug>Csurroundb}
nmap csbü <Plug>Csurroundb[
nmap csbü <Plug>Csurroundb[
nmap csbä <Plug>Csurroundb]
nmap csbä <Plug>Csurroundb]

nmap csBÜ <Plug>CsurroundB{
nmap csBÜ <Plug>CsurroundB{
nmap csBÄ <Plug>CsurroundB}
nmap csBÄ <Plug>CsurroundB}
nmap csBü <Plug>CsurroundB[
nmap csBü <Plug>CsurroundB[
nmap csBä <Plug>CsurroundB]
nmap csBä <Plug>CsurroundB]

nmap cs(Ü <Plug>Csurround({
nmap cs(Ü <Plug>Csurround({
nmap cs(Ä <Plug>Csurround(}
nmap cs(Ä <Plug>Csurround(}
nmap cs(ü <Plug>Csurround([
nmap cs(ü <Plug>Csurround([
nmap cs(ä <Plug>Csurround(]
nmap cs(ä <Plug>Csurround(]

nmap cs)Ü <Plug>Csurround){
nmap cs)Ü <Plug>Csurround){
nmap cs)Ä <Plug>Csurround)}
nmap cs)Ä <Plug>Csurround)}
nmap cs)ü <Plug>Csurround)[
nmap cs)ü <Plug>Csurround)[
nmap cs)ä <Plug>Csurround)]
nmap cs)ä <Plug>Csurround)]

nmap cs{Ü <Plug>Csurround{{
nmap cs{Ü <Plug>Csurround{{
nmap cs{Ä <Plug>Csurround{}
nmap cs{Ä <Plug>Csurround{}
nmap cs{ü <Plug>Csurround{[
nmap cs{ü <Plug>Csurround{[
nmap cs{ä <Plug>Csurround{]
nmap cs{ä <Plug>Csurround{]

nmap cs}Ü <Plug>Csurround}{
nmap cs}Ü <Plug>Csurround}{
nmap cs}Ä <Plug>Csurround}}
nmap cs}Ä <Plug>Csurround}}
nmap cs}ü <Plug>Csurround}[
nmap cs}ü <Plug>Csurround}[
nmap cs}ä <Plug>Csurround}]
nmap cs}ä <Plug>Csurround}]

nmap csaÜ <Plug>Csurrounda{
nmap csaÜ <Plug>Csurrounda{
nmap csaÄ <Plug>Csurrounda}
nmap csaÄ <Plug>Csurrounda}
nmap csaü <Plug>Csurrounda[
nmap csaü <Plug>Csurrounda[
nmap csaä <Plug>Csurrounda]
nmap csaä <Plug>Csurrounda]

nmap csÜa <Plug>Csurround{a
nmap csÜa <Plug>Csurround{a
nmap csÄa <Plug>Csurround}a
nmap csÄa <Plug>Csurround}a
nmap csüa <Plug>Csurround[a
nmap csüa <Plug>Csurround[a
nmap csäa <Plug>Csurround]a
nmap csäa <Plug>Csurround]a

" sections
nmap üü [[
vmap üü [[
nmap üä []
vmap üä []
nmap ää ]]
vmap ää ]]
nmap äü ][
vmap äü ][
" unmatched braces
nmap üÜ [{
vmap üÜ [{
nmap ü( [(
vmap ü( [(
nmap äÄ ]}
vmap äÄ ]}
nmap ä) ])
vmap ä) ])

" activate
Umlauts

let &cpo = s:cpo_save
unlet s:cpo_save

