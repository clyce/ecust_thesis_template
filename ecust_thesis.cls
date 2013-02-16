\ProvidesClass{ecust_thesis}[2013/02/15 ver.0.1b ECUST bachlor thesis translation class]
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

% 定义翻译模版样式
\fancypagestyle{translation}{
  \fancyhead[L]{\wuhao{\@cTitle \quad （ \label@cTranslation ）}}
  \fancyhead[R]{\thepage}
  \fancyfoot[C]{}
  \fancypagestyle{empty}{\pagestyle{translation}}
}

% 定义摘要环境
\newenvironment{cAbstract}[1]{
\wuhao
  \noindent
  {\heiti\textbf{\label@cAbstract} }\space}{
  \noindent
  {\heiti\textbf{\label@cKeywords} }\@cKeywords 
}

% 设置页面样式为 translation（自定义样式）
% 具体请参考ecusttrans.cls:61-67
\pagestyle{translation}
