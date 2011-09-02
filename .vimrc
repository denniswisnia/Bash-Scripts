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

"Sudo Vergessen Fix
cmap w!! %!sudo tee &gt; /dev/null %:
colorscheme wombat  
