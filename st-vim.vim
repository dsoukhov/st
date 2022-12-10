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
set iskeyword=@,48-57,_,-,.,192-255

"taken from https://vi.stackexchange.com/questions/7149/mapping-a-command-in-visual-mode-results-in-error-e481-no-range-alllowed
function Get_visual_selection()
  let [lnum1, col1] = getpos("'<")[1:2]
  let [lnum2, col2] = getpos("'>")[1:2]
  let lines = getline(lnum1, lnum2)
  return lines[0]
endfunction

"MK_PATH set by make
vnoremap <M-p> "ay:<C-U> execute '! PARENT_SEL='.shellescape(@a,1).' MK_PATH/st-plumber'<CR><CR>:q<CR>
vnoremap <RightMouse> "ay:<C-U> execute '! PARENT_SEL='.shellescape(@a,1).' MK_PATH/st-plumber'<CR><CR>:q<CR>
nnoremap <M-p> "ay:<C-U>execute '! PARENT_SEL='.shellescape(fnameescape(expand("<cWORD>"))).' MK_PATH/st-plumber'<CR><CR>:q<CR>
nnoremap <RightMouse> "ay:<C-U>execute '! PARENT_SEL='.shellescape(fnameescape(expand("<cWORD>"))).' MK_PATH/st-plumber'<CR><CR>:q<CR>
