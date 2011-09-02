"vim.rc by Dennis Wisnia
"http://dennis-wisnia.de/wordpress
"Version: 0.4
let &t_Co=256
"Color Themes
if has("gui_running") 
   set hlsearch 
   set background=light 
   syntax on 
else 
   set hlsearch 
   set background=dark 
   syntax on 
endif

" Zeile / Spalte anzeigen
set ruler
"Vervollständigungsmenü
set wildmenu
"Zeileneinrückung / Tab durch Leerzeichen ersetzen
set autoindent
set smartindent
set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4

"Remaps
"Page Up/Down
nmap <PageUp> <C-K>
nmap <PageDown> <C-J>

"Git
set laststatus=2
" Format the statusline
set statusline=%{GitBranch()}\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c


function! CurDir()
    let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
    return curdir
endfunction

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    else
        return ''
    endif
endfunction
"Sudo Vergessen Fix
cmap w!! %!sudo tee &gt; /dev/null %:
colorscheme wombat  
