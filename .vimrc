let &t_Co=256
if has("gui_running") 
   set hlsearch 
   set background=light 
   syntax on 
else 
   set hlsearch 
   set background=dark 
   syntax on 
endif
cmap w!! %!sudo tee &gt; /dev/null %:
colorscheme wombat  
