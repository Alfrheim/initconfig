
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'wincent/ferret'
Plug 'tpope/vim-unimpaired'
Plug 'terryma/vim-multiple-cursors'
Plug 'editorconfig/editorconfig-vim'
Plug 'marijnh/tern_for_vim'
Plug 'Valloric/YouCompleteMe'
Plug 'Chiel92/vim-autoformat'

" Snippets engine + snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Markdown
Plug 'plasticboy/vim-markdown'

"Git
Plug 'tpope/vim-fugitive'
    \| Plug 'airblade/vim-gitgutter'

" JS
Plug 'pangloss/vim-javascript'
      \| Plug 'mxw/vim-jsx'
      \| Plug 'heavenshell/vim-jsdoc'
      \| Plug 'jungomi/vim-mdnquery'
      \| Plug 'moll/vim-node', { 'for' : ['js'] }
" Hbs
Plug 'mustache/vim-mustache-handlebars'

Plug 'fatih/vim-go', { 'for' : ['go'] }

" CSS
Plug 'JulesWang/css.vim'
      \| Plug 'hail2u/vim-css3-syntax'
      \| Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss'] }
Plug 'ap/vim-css-color'
      \| Plug 'othree/csscomplete.vim', { 'for' : 'css' }

" General writing
Plug 'junegunn/goyo.vim'

" Linting
Plug 'w0rp/ale'

" General programming
Plug 'tpope/vim-surround'
Plug 'luochen1990/rainbow'
Plug 'janko-m/vim-test'
Plug 'skywind3000/asyncrun.vim'
Plug 'vim-scripts/Improved-AnsiEsc'

" Themes and colors
Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline-themes'
    \| Plug 'kristijanhusak/vim-hybrid-material'
    \| Plug 'ryanoasis/vim-devicons'

call plug#end()
