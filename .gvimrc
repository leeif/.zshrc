" An example for a gvimrc file.一般设置GUI和快捷键等
"-------------------------------------------------------------------------------
"gvimrc导入的默认设置
"-------------------------------------------------------------------------------
" 设置窗口底部命令有两行
set ch=2

" 输入文本时隐藏鼠标
set mousehide

"键位映射，使shift-insert快捷键像在 Xterm程序中一样工作
map <S-Insert> <MiddleMouse>  "鼠标中键代表快捷粘贴
map! <S-Insert> <MiddleMouse>

" Vim版本5.0或以上下面脚本工作.
if version >= 500

  "高亮C注释字符串
  let c_comment_strings=1

  "如果没启动语法高亮，启动语法高亮
  if !exists("syntax_on")
    syntax on
  endif

  "启动搜索高亮.
  set hlsearch
 
  " 设置颜色
  " 文本背景为浅灰色
  " 文本的最后一行为深灰色
  " 光标设置成绿色, C当 ":lmap"映射激活时变成青色
  " 常量设置为没有底线，但常量的背景颜色浅一些
  highlight Normal guibg=grey90
  highlight Cursor guibg=Green guifg=NONE
  highlight lCursor guibg=Cyan guifg=NONE
  highlight NonText guibg=grey80
  highlight Constant gui=NONE guibg=grey95
  highlight Special gui=NONE guibg=grey95

endif




"-------------------------------------------------------------------------------
"基本设置
"-------------------------------------------------------------------------------
" When started as "evim", evim.vim will already have done these settings.
" 设置编码
set encoding=utf-8
set fenc=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb2312,gb18030,big5 

"显示行号
set number

"设置默认打开窗口大小
set lines=70 columns=100

"设置窗口透明度

"设置背景色
"set bg=dark

"用 koehler 调色板

"隐藏工具栏和滑动条
set guioptions=aAce

"开启自带的tab栏
set showtabline=2

"总是在窗口右下角显示光标的位置
set ruler

"在Vim窗口右下角显示未完成的命令
set showcmd

"设置语法高亮
if &t_Co > 2 || has("gui_running")
syntax on
endif


"-------------------------------------------------------------------------------
"文本操作设置
"-------------------------------------------------------------------------------
"设置字体
set gfn=Courier:h15

"设置自动缩进
set tabstop=2
set shiftwidth=2
set softtabstop=0
set noexpandtab
set autoindent
set smartindent

"设置Tab键跟行尾符显示出来
"set list lcs=tab:>-,trail:-


"设置自动换行
set wrap

"设置光标移动到屏幕之外时，自动向右滚动10个字符
set sidescroll=10


"-------------------------------------------------------------------------------
"搜索设置
"-------------------------------------------------------------------------------
"打开搜索高亮
set hlsearch

"忽略大小写
set ignorecase

"在查找时输入字符过程中就高亮显示匹配点。然后回车跳到该匹配点。
set incsearch

"设置查找到文件尾部后折返开头或查找到开头后折返尾部。
set wrapscan




