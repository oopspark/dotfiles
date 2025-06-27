set number
set relativenumber    " 상대 줄 번호 (선택)
set encoding=utf-8    " UTF-8 인코딩
set fileformat=unix   " 줄바꿈 형식 LF (윈도우 CRLF 방지)
set clipboard=unnamedplus " 시스템 클립보드 사용


set tabstop=4         " 탭을 4칸으로 표시
set shiftwidth=4      " 자동 들여쓰기 크기
set expandtab         " 탭 대신 공백 사용
set smartindent       " 자동 들여쓰기
set autoindent        " 기존 줄 따라 들여쓰기
set backspace=indent,eol,start " 백스페이스 개선


set ignorecase        " 검색 시 대소문자 무시
set smartcase         " 대문자 포함하면 구분
set incsearch         " 입력 중간 검색 결과 표시
set hlsearch          " 검색어 하이라이트

set undofile          " 실행 취소 기록 파일 저장
set swapfile          " 스왑 파일 사용 (필요 없으면 off)
set autoread          " 파일 외부 변경 시 자동 reload

set cursorline        " 커서 위치 줄 강조
set showmatch         " 괄호 자동 짝 보여줌
set wildmenu          " 명령 자동 완성 향상
set showmode          " 모드 표시 (INSERT 등)
set scrolloff=5       " 커서 위아래 여백 확보


set mouse=a           " 마우스 사용 가능
syntax on             " 문법 하이라이트
filetype plugin indent on   " 파일 타입 자동 인식


" jj를 눌러 INSERT 모드 종료
inoremap jj <Esc>

" Ctrl-s로 저장
noremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>i





