\ProvidesClass{ecust_thesis_traslation}[2013/02/15 ver.0.1b ECUST bachlor thesis translation class]
\NeedsTeXFormat{LaTeX2e}
\LoadClass[12pt]{ecust_thesis_basic}


% 定义标题
\renewcommand\maketitle{
  \begin{center}
    \heiti
    \xiaoerhao {\textbf\@title}

    \sihao{\@class (\@studentNo )\quad \@author}
  \end{center}

}

% 定义摘要环境
\renewenvironment{abstract}[1][]{
  \noindent
  % 如果注明是中文摘要的话
  \ifthenelse{\equal{#1}{chinese}}{
  % 就以“摘 要”字样开始中文摘要
  \heiti{摘\quad 要}\quad\thinspace
  \def\@chinese{1}}
  % 否则以“Abstract”开始英文摘要
  {\textbf{Abstract}\quad
  \def\@chinese{0}
  }}
  % 摘要下面的关键词排版同上
  {\vspace{1.2em} \\
  \noindent
  \ifthenelse{\equal{1}{\@chinese}}{\heiti{关\thinspace 键\thinspace 词\quad} \@cKeywords}{\textbf{Keywords\quad} \@eKeywords}
}

% 定义翻译模版样式
\fancypagestyle{translation}{
  \fancyhead[L]{\wuhao{\@title \quad （文献翻译）}}
  \fancyhead[R]{\thepage}
  \fancyfoot[C]{}
  \fancypagestyle{empty}{\pagestyle{translation}}
}

\pagestyle{translation}
