\ProvidesClass{ecust_thesis}[2013/02/15 ver.0.1b ECUST bachlor thesis translation class]
\NeedsTeXFormat{LaTeX2e}
\LoadClass[12pt]{ecust_thesis_basic}


% 定义标题页
\renewcommand\maketitle{
\cleardoublepage
\begin{titlepage}
  % \headspace{30pt}
  \begin{center}
    % 第一部分，校名和<毕业设计(论文)字样>
    \vfill
    \includegraphics[width=0.53\textwidth]{img/ecust_logo_png}

    \vspace{45pt}
    \chuhao{\heiti \space 毕\thinspace 业\thinspace 设\thinspace 计（论\thinspace 文）}

    \thispagestyle{empty}
    \clearpage
  \end{center}
\end{titlepage}
}

% 定义翻译模版样式
\fancypagestyle{translation}{
  \fancyhead[L]{\wuhao{\@title }}
  \fancyhead[R]{\thepage}
  \fancyfoot[C]{}
  \fancypagestyle{empty}{\pagestyle{translation}}
}

% 定义摘要环境
\newenvironment{cAbstract}[1]{
  \wuhao
  \noindent
  {\heiti\textbf{摘\quad 要}\space }}{
  \noindent
  {\heiti\textbf{关\, 键\, 字}\space }\@cKeywords 
}

