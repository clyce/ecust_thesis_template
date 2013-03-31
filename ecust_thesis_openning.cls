\ProvidesClass{ecust_thesis_openning}[2013/03/27 ver.0.1b ECUST bachlor thesis translation class]
\NeedsTeXFormat{LaTeX2e}
\LoadClass[12pt]{ecust_thesis_basic}


% 定义标题
\renewcommand\maketitle{
  \begin{center}
    \heiti
    \vspace{2em}
    \xiaoerhao {\textbf\@title}

    \sihao{\@class \quad (\@studentNo )\quad \@author}
    \vspace{-0.5em}
  \end{center}
}


\def\@thesisType{（开题报告）}
\pagestyle{ecust}
