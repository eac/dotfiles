" Font
set guifont=Monaco:h14.00
set antialias

" No audible bell
set vb

" No toolbar
set guioptions-=T

" Use console dialogs
set guioptions+=c

" Local config
if filereadable(".gvimrc.local")
  source .gvimrc.local
endif

if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CommandT<CR>
endif

if has("statusline") && !&cp
  set laststatus=2  " always show the status bar

  " Start the status line
  set statusline=%f\ %m\ %r

  " Finish the statusline
  set statusline+=Line:%l/%L\ [%p%%]
  set statusline+=\ Col:%v
endif

" Always show status bar
set laststatus=2
