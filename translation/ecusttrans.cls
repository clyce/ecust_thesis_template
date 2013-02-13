\ProvidesClass{ecusttrans}[2013/02/10 ver.0.1b ECUST bachlor thesis class]
\NeedsTeXFormat{LaTeX2e}
\LoadClass[12pt]{article}

% 添加中文支持
\RequirePackage{fontspec}
\RequirePackage{xunicode}
\RequirePackage{xeCJK}

% 添加图片等的支持
\RequirePackage[top=1in, bottom=1in, left=0.9in, right=0.9in]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{verbatim}
\RequirePackage{indentfirst}

% 添加中文断句支持
\XeTeXlinebreaklocale zh
\XeTeXlinebreakskip = 0pt plus 1pt

% 定义字号大小
\newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}
\newcommand{\xiaochuhao}{\fontsize{36pt}{\baselineskip}\selectfont}
\newcommand{\yihao}{\fontsize{28pt}{\baselineskip}\selectfont}
\newcommand{\erhao}{\fontsize{21pt}{\baselineskip}\selectfont}
\newcommand{\xiaoerhao}{\fontsize{18pt}{\baselineskip}\selectfont}
\newcommand{\sanhao}{\fontsize{15.75pt}{\baselineskip}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}
\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}
\newcommand{\xiaowuhao}{\fontsize{9pt}{\baselineskip}\selectfont}
\newcommand{\liuhao}{\fontsize{7.875pt}{\baselineskip}\selectfont}
\newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont}

% 定义文章信息
\newcommand\eAuthor[1]{\def\@eAuthor{#1}}
\newcommand\cStudent[1]{\def\@cStudent{#1}}
\newcommand\cStudentClass[1]{\def\@cStudentClass{#1}}
\newcommand\cStudentNo[1]{\def\@cStudentNo{#1}}
\newcommand\cTitle[1]{\def\@cTitle{#1}}
\newcommand\cKeywords[1]{\def\@cKeywords{#1}}

\def\label@cAbstract{摘\quad 要}
\def\label@cKeywords{关\thinspace 键\thinspace 字}
\def\label@cTranslation{翻\thinspace 译}

\setCJKmainfont[BoldFont={FZYaSong-H-GBK}]{FZYaSong-M-GBK}
\linespread{1.2}

% 定义翻译模版样式
\fancypagestyle{translation}{
  \fancyhead[L]{\wuhao{\@cTitle \quad \label@cTranslation}}
  \fancyhead[R]{\thepage}
  \fancyfoot[C]{}
  \fancypagestyle{empty}{\pagestyle{translation}}
}

% 定义摘要环境
\newenvironment{cAbstract}[1]{
\wuhao
  \noindent
  \textbf{\label@cAbstract }\quad }{
  \noindent
  \textbf{\label@cKeywords }\quad \@cKeywords }
