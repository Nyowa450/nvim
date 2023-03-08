vim.cmd([[
let g:fern#renderer = "nerdfont"

let g:fern#default_hidden=1

nnoremap <silent><C-n> :Fern . -reveal=%<CR>

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

function! s:fern_settings() abort
  nmap <silent> <buffer> dd <Plug>(fern-action-remove)
endfunction

augroup fern-settings
  autocmd!
  autocmd FileType fern call s:fern_settings()
augroup END
]])
