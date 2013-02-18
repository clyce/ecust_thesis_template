\ProvidesClass{ecust_thesis_basic}[2013/02/10 ver.0.1b ECUST bachlor thesis basic class]
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
\RequirePackage{ifthen}

% 添加中文断句支持
\XeTeXlinebreaklocale zh
\XeTeXlinebreakskip = 0pt plus 1pt

% 设定默认英文字体
\setmainfont{Times New Roman}
% 设定中文字体
% 设定默认中文字体为宋体
\setCJKmainfont{SimSun}
\setCJKfamilyfont{hei}{SimHei}

% 设定指定中文字体简化命令
\newcommand\heiti{\CJKfamily{hei}}
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
\newcommand\cKeywords[1]{\def\@cKeywords{#1}}
\newcommand\eKeywords[1]{\def\@eKeywords{#1}}

\def\label@translation{文献翻译}
\def\label@openning{开题报告}

% 全文默认行距（这样看上去和word中的1.5倍行距差不多）
\linespread{1.2}

% 定义section/subsection/subsubsection的样式
\titleformat{\section}{\centering\xiaoerhao}{\thesection}{1em}{}
\titleformat{\subsection}{\sihao}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\xiaosihao\heiti}{\thesubsubsection}{1em}{}


