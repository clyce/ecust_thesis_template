\ProvidesClass{ecust_thesis_openning}[2013/02/15 ver.0.1b ECUST bachlor thesis translation class]
\NeedsTeXFormat{LaTeX2e}
\LoadClass[12pt]{ecust_thesis_basic}


% 定义标题
\renewcommand\maketitle{
  \begin{center}
    \heiti
    \xiaoerhao {\textbf\@cTitle}

    \sihao{\@cStudentClass (\@cStudentNo )\quad \@cStudent}
  \end{center}

}

% 定义摘要环境
\newenvironment{cAbstract}[1]{
\wuhao
  \noindent
  {\heiti{\label@cAbstract} }\space}{
  \noindent
  {\heiti{\label@cKeywords} }\@cKeywords 
}

% 定义开题报告模版样式
\fancypagestyle{openning}{
  \fancyhead[L]{\wuhao{\@cTitle \quad （开题报告）}}
  \fancyhead[R]{\thepage}
  \fancyfoot[C]{}
  \fancypagestyle{empty}{\pagestyle{openning}}
}

\pagestyle{openning}
