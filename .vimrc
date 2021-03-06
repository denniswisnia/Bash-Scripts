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
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
"Vervollständigungsmenü
set wildmenu

"Zeileneinrückung / Tab durch Leerzeichen ersetzen
set autoindent
set smartindent
set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4

"Backup und TMP Dir
set backup
set backupdir=$HOME/.vim/backup/
set directory=$HOME/.vim/tmp/
set viewdir=$HOME/.vim/view/

silent execute '!mkdir -p $HOME/.vim/backup'
silent execute '!mkdir -p $HOME/.vim/tmp'
silent execute '!mkdir -p $HOME/.vim/views'
"Remaps
"Page Up/Down

"Git
set laststatus=2
" Format the statusline
fun! SearchInPath(prog)
    let components = split($PATH, ":")
    for c in components
        if executable(c . "/" . a:prog)
            return 1
        endif
    endfor
    return 0
endfun

if SearchInPath("git")
    set statusline=%{GitBranch()}\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
else
    set statusline=%{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
endif

function! CurDir()
    let curdir = substitute(getcwd(), "/home/dennis", "~/", "g")
    return curdir
endfunction

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    else
        return ''
    endif
endfunction
"misc
cmap w!! %!sudo tee > /dev/null %
filetype plugin on
colorscheme wombat  
