% LaTeX Class
%
% Author:        Filipe L B Correia <filipelbc@gmail.com>
% Last Change:   2015 Out 11 15:10:15

%===============================================================================

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rosario}

\LoadClass[10pt,a5paper]{book}

\RequirePackage[brazilian]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern, multicol}

% links
\RequirePackage[hyphens]{url}
\RequirePackage[hidelinks]{hyperref}

% page size
\RequirePackage[inner=1in, outer=0.5in, top=0.5in, bottom=0.7in, head=0.25in, foot=0.35in]{geometry}

% pars
\RequirePackage{parskip}
\setlength{\parindent}{0em}
\setlength{\parskip}{0.5em}

% headers:
\RequirePackage{fancyhdr}
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyfoot[LE,RO]{\thepage}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
}

% titles
\RequirePackage{titlesec}
\titleformat{\chapter}{\bfseries\LARGE}{\thechapter}{1em}{}
\titlespacing{\chapter}{0pt}{-2em}{0pt}
\titleformat{\section}{\bfseries\Large}{\thesection}{1em}{}
\titlespacing{\section}{0pt}{\parskip}{\parskip}
\titleformat{\subsection}{\bfseries}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{\parskip}

% diagram
\RequirePackage{tikz}

% todo
\newcommand{\TODO}{\textcolor{red}{\ttfamily AFAZER}}

% from
\newcommand{\from}[1]{\subsection*{#1}}

% epigraph
\newcommand{\epigraph}[2]{%
    \leftskip=0.3\textwidth \emph{#1}

    \leftskip=0.3\textwidth \hfill -- #2

    \leftskip=0em ~
}

% special page
\newenvironment{specialpage}{\mbox{} \vfill}{\vfill \mbox{}}

% amen

\newcommand{\amen}{Amém}

% frente
\renewcommand{\maketitle}{
    \pagestyle{empty}

    \begin{specialpage}
        \begin{center}
            \input{img/capa.tex}
        \end{center}
    \end{specialpage}

    \cleardoublepage

    \begin{specialpage}
        \epigraph{Maria é o caminho mais curto para Jesus.}{São Luis Maria Grignion de Montfort}

        \vfill

        \epigraph{No Rosário encontrei os atractivos mais doces, mais suaves, mais eficazes e mais poderosos para me unir a Deus.}{Santa Teresa de Jesus}

        \epigraph{O Rosário é a mais bela de todas as orações, a mais rica em graças e a que mais agrada à Santíssima Virgem.
        Os erros modernos serão destruídos pelo Rosário.}{São Pio X}

        \vfill

        \epigraph{O Rosário é uma oração de grande significado e destinada a produzir frutos de santidade. \\ \\
        Mediante o Rosário, o povo cristão aprende com Maria a contemplar a beleza do rosto de Cristo, e a experimentar a profundidade do seu amor.}{João Paulo II}

        \vfill

        \epigraph{Reze, reze! Quem muito reza se salva e salva os outros.
        E qual oração pode ser mais bela e mais aceita a Nossa Senhora do que o Rosario? \\ \\
        O Santo Rosário é a arma daqueles que querem vencer todas as batalhas. \\ \\
        Meu filho, o melhor plano de oração é o santo rosário!}{São Pio de Pietrelcina}
    \end{specialpage}

    \cleardoublepage

    \pagestyle{plain}

    \frontmatter

    \tableofcontents

    \mainmatter
}

