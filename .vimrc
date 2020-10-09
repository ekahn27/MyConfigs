"Easy escape to normal mode
inoremap jj <esc>

let mapleader=","
function! Ap(isOn)
	if(a:isOn == 1)
		inoremap ( ()<esc>i
		inoremap [ []<esc>i
		inoremap { {<CR>}<esc>O
	elseif(a:isOn == 0)
		iunmap (
		iunmap [
		iunmap {
	endif
endfunction
inoremap <leader>f <esc>:call Ap(1)<CR>i<right>
inoremap <leader>d <esc>:call Ap(0)<CR>i<right>
call Ap(1)

"better multiline comment
inoremap /* <esc>:set backspace=indent,start<CR>i/*<CR><BS>*/<esc>:set backspace=indent,eol,start<CR>O<BS>

"move over one space (move outside parens)
"inoremap <leader>a <esc>la
"try this out instead of line above. C-O is insert-normal mode
inoremap <leader>a <C-O>a
syntax on			"enables syntax highlighting
set cursorline		"Shows current line cursor is on
nnoremap j gj
nnoremap k gk
"nice autocomplete for ":" commands
set wildmenu
set ignorecase		"ignore case when searching
set smartcase		"override 'ignorecase' if search contains capital letter

"makes cursor block when not in insert mode
"even solid, odd blink
"0-2 block, 3-4 underscore, 5-6 vertical bar
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q" "SI= Entering Insert mode
let &t_EI.="\e[2 q" "EI= Leaving Insert mode
let &t_te.="\e[1 q"
"SR is replace mode

set number			"line numbers
set showmode        "show mode currently editing in
set title			"show filename in window title bar
"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"indentation
filetype indent on

"If tabstop=8 and softtabstop=4, hitting tab gives 4 SPACES
"Two levels of indentation (hitting tab twice) will now give 1 TAB character
"because it's now equivalent to 8 spaces
set tabstop=4    "num of visual spaces per tab
set softtabstop=4   "num of spaces in tab when editing
set shiftwidth=4    "how many spaces to shift with >> or <<
set smarttab	    "<Tab> in front of a line inserts blanks according to 'shiftwidth'
set noexpandtab	    "don't use spaces for tabs
"configure tabs for various files
au BufReadPost,BufNewFile *.py,*.md set expandtab "use spaces when tab is hit

set ruler	    "always show cursor
set scrolloff=5     "start scrolling before hitting top/bottom
set showmatch       "show matching parens
set incsearch       "search chars as entered
set hlsearch        "highlight matches

set noswapfile		"no additional swapfiles
set colorcolumn=80  "highlight column 80 for long lines

set background=dark
colorscheme gruvbox
"set term=xterm-256color
set t_ut=

"stuff I"m trying out
set completeopt=longest,menuone "autocomplete

"persistent undo
set undodir=$HOME/.vim/undo	"where to save undo histories
set undofile				"saves undos after file closes
set undolevels=1000			"How many undos
set undoreload=10000		"number of lines to save for undo

"easy switching between windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

tnoremap <C-j> <C-w>j
tnoremap <C-k> <C-w>k
tnoremap <C-h> <C-w>h
tnoremap <C-l> <C-w>l
tnoremap jj <C-w>N

set pastetoggle=<F2>

"simply to stop security flaw
set nomodeline

"makes <leader>c copy text under cursor to command or search
cnoremap <leader>c <C-r><C-w>

nnoremap dd "_dd
vnoremap d "_d
"Helpful tips
"gq <motion> to wrap text
"use <%> to jump to matching paren
"Sessions help if you have multiple files open and need to close vim, but want to
"return to your current windows later in vim.
"
"To create a session<br>
":mks ~/.vim/sessions/<session_name>.vim
"
"To restore session<br>
":source ~/.vim/sessionss/<session_name>.vim
"
"gv - selects previous visual
"
"m{letter}, '{letter} - sets mark at cursor, returns to mark
"
"<C-g> and <C-t> move between searches before enter is hit
"
"<C-t> and <C-d> indent and outdent in insert mode
"
"i_CTRL-x i_CTRL-l does line completion
"i_CTRL-x i_CTRL-n completes keywords in current file
"CTRL-x in normal decrements numbers
"CTRL-a in normal increments numbers
"
"c_CTRL-r c_CTRL-w pulls word under cursor to command/search
"
"i_CTRL-O puts you in insert-normal mode. This allows you to do one command and
"then returns you to insert mode
