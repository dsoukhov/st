call plug#begin()
Plug 'sainnhe/gruvbox-material'
Plug 'machakann/vim-highlightedyank'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'phaazon/hop.nvim'
call plug#end()

source $HOME/.config/nvim/base.vim
source $HOME/.config/nvim/motion_cfg.vim
source $HOME/.config/nvim/colorscheme.vim
set laststatus=0
set mouse=

"taken from https://vi.stackexchange.com/questions/7149/mapping-a-command-in-visual-mode-results-in-error-e481-no-range-alllowed
function Get_visual_selection()
  let [lnum1, col1] = getpos("'<")[1:2]
  let [lnum2, col2] = getpos("'>")[1:2]
  let lines = getline(lnum1, lnum2)
  return lines[0]
endfunction

vnoremap <M-p> "ay:<C-U>execute '! ~/.config/st/st-plumber '.shellescape(@", 1).' '.fnamemodify('.', ':p')<CR><CR>
" vnoremap <M-p> "ay:<C-U>execute '! ~/.config/st/st-plumber '.shellescape(@", 1).' '.fnamemodify('.', ':p')<CR><CR>:q<CR>
