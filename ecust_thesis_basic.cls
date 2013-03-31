\ProvidesClass{ecust_thesis_basic}[2013/03/14 ver.0.1b ECUST bachlor thesis basic class]
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
% 添加对改动section样式的支持
\RequirePackage{titlesec}
% 添加条件判断的支持
\RequirePackage{ifthen}

\RequirePackage{amsmath}
\RequirePackage{amssymb}
\newcommand\origin[1]{\footnote{原文为\quad \textit{#1}}}

% 添加中文断句支持
\XeTeXlinebreaklocale zh
\XeTeXlinebreakskip = 0pt plus 1pt
\RequirePackage{changepage}

% 设定默认英文字体
\setmainfont{Times New Roman}
% 设定中文字体
% 设定默认中文字体为宋体
\setCJKmainfont{SimSun}
\setCJKfamilyfont{hei}{SimHei}

% 设定指定中文字体简化命令
\newcommand\heiti{\CJKfamily{hei}}
\newcommand\immature[1]{\textbf{#1}}
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
\renewcommand\author[1]{\def\@author{#1}}
\newcommand\class[1]{\def\@class{#1}}
\newcommand\studentNo[1]{\def\@studentNo{#1}}
\renewcommand\title[1]{\def\@title{#1}}
\newcommand\keywords[1]{\def\@keywords{#1}}

\def\label@translation{文献翻译}
\def\label@openning{开题报告}

% 全文默认行距（这样看上去和word中的1.5倍行距差不多）
\linespread{1.3}

% 定义section/subsection/subsubsection的样式
\titleformat{\section}{\centering\xiaoerhao}{\thesection}{0.7em}{}
\titleformat{\subsection}{\sihao}{\thesubsection}{0.7em}{}
\titleformat{\subsubsection}{\xiaosihao\heiti}{\thesubsubsection}{0.7em}{}

% 定义摘要环境
\renewenvironment{abstract}[1][0]{
  \noindent
  % 以“摘 要”字样开始中文摘要
  {\heiti 摘要：}
} {
  % 摘要下面的关键词排版
  \vspace{0.2em} \\
  \noindent
  {\heiti 关键词：}\@keywords
  \vspace{1.2em}
}

% 定义term(术语)
\newcommand\term[1]{{\textbf{#1}}}

% 定义翻译模版样式
\def\@thesisType{ }

\fancypagestyle{ecust}{
  \fancyhead[L]{\wuhao{\@title \@thesisType }}
  \fancyhead[R]{\thepage}
  \fancyfoot[C]{}
  \fancypagestyle{empty}{\pagestyle{translation}}
}

\setlength{\voffset}{18pt}
\setlength{\headsep}{17pt}

% 调整数字列表的编号，以免和章节号混淆
\renewcommand\labelenumi{(\arabic{enumi})~}
\renewcommand\labelenumii{\alpha{enumii})~}

%%调整图片、公式和表格的格式

% 图片、公式和表格标签 figure 2 => figure 3 - 1
\makeatletter
\@addtoreset{figure}{section}
\renewcommand{\thefigure}{
  \ifnum \c@section>\z@ \thesection - \fi \@arabic\c@figure}

\@addtoreset{table}{section}
\renewcommand{\thetable}{
  \ifnum \c@section>\z@ \thesection - \fi \@arabic\c@table}

\@addtoreset{equation}{section}
\renewcommand{\theequation}{
  \ifnum \c@section>\z@ \thesection - \fi \@arabic\c@equation}
\makeatother

% 图片、表格标签 figure: => figure 
\RequirePackage{caption2}
\renewcommand{\captionlabeldelim}{~}
\renewcommand\captionfont{\xiaowuhao \bf}

% 图片标签 figure => 图
\renewcommand\figurename{图}
\renewcommand\tablename{表}

% 作用未知
\RequirePackage{floatrow}


% 调整参考文献格式
\renewcommand\refname{参考文献}

\makeatletter
\def\@cite#1#2{\textsuperscript{[{#1\if@tempswa , #2\fi}]}}
\makeatother

