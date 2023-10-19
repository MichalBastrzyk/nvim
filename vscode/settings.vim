
" This file only contains the setting and keybind that are needed in VSCode Neovim integration.

nnoremap <silent> <C-s> :call VSCodeCall('workbench.action.files.save')<CR>

" Better Navigation
" nnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
" xnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
" nnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
" xnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
" nnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
" xnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
" nnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>
" xnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>

nnoremap <silent> <C-w>_ :<C-u>call VSCodeNotify('workbench.action.toggleEditorWidths')<CR>

"whichkey

nnoremap <silent> <Space> :call VSCodeNotify('whichkey.show')<CR>
xnoremap <silent> <Space> :call VSCodeNotify('whichkey.show')<CR>

"Comments

nnoremap <silent> gcc :call VSCodeNotify('editor.action.commentLine')<CR>
nnoremap <silent> gcc :call VSCodeNotify('editor.action.commentLine')<CR>

"Better page-up and page-down

nnoremap <silent> <C-d> :<C-d>zz<CR>
nnoremap <silent> <C-u> :<C-u>zz<CR>

