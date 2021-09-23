\ProvidesClass{slides}

\LoadClass[11pt,xcolor=svgnames,aspectratio=169]{beamer}

% packages
\usepackage{lean_progress}
\usepackage[utf8]{inputenc}
\usepackage[portuges,brazil]{babel}
\usepackage{datetime}
\usepackage{appendixnumberbeamer}
\usepackage[accumulated]{beamerseminar}

\usepackage{tikz}
\usepackage{xcolor}
\usepackage{colortbl}
\usepackage{inconsolata}

\usepackage{booktabs}
\usepackage{tabularx}
\usepackage{multirow}
\usepackage[export]{adjustbox}
\usepackage[scale=2]{ccicons}

\usepackage{pgfplots}
\usepgfplotslibrary{dateplot}

\usepackage{xspace}
\usepackage{minted}
\usepackage{mdframed}
\usepackage{enumerate}
\usepackage{subcaption}

\usepackage{amsmath}
\usepackage{algorithm}
\usepackage[noend]{algpseudocode}
\usepackage{fontspec}

% Setup
\usetikzlibrary{calc}
\usefonttheme{professionalfonts}

\hypersetup{
    colorlinks=true,
    linkcolor=black,
    filecolor=black,      
    urlcolor=blue,
}

% New commands
\newcommand{\generatetoc}{
\begin{frame}{Sumário}
  \setbeamertemplate{section in toc}[sections numbered]
  \tableofcontents[hideallsubsections]
\end{frame}
}

\newcommand{\rawcode}[1]{\texttt{#1}}
\newcommand{\code}[2]{\mintinline{#1}{#2}}
\newcommand{\file}[1]{\texttt{\underline{#1}}}

\renewcommand{\theFancyVerbLine}{\tiny \texttt{\textcolor{gray}{\arabic{FancyVerbLine}}}}

\newcommand{\inputcode}[2]{\begin{mdframed}[shadow=true,shadowsize=3pt,shadowcolor=gray]\inputminted[fontsize=\footnotesize,linenos,numbersep=4pt]{#1}{#2}\end{mdframed}}

\newcommand{\inputsnippet}[4]{\begin{mdframed}[shadow=true,shadowsize=3pt,shadowcolor=gray]\inputminted[fontsize=\footnotesize,linenos,firstline=#2,lastline=#3,numbersep=2pt]{#1}{#4}\end{mdframed}}

\newcommand{\inputsyntax}[2]{\vspace{0.1in} \inputminted[fontsize=\footnotesize]{#1}{#2} \vspace{0.1in}}

\newcommand{\vv}[1]{\vec{\mkern0mu#1}}
\newcommand{\Mod}[2]{#1\ (\mbox{mod}\ #2)}
\newcommand{\dist}{\mathrm{dist}}

\DeclareMathSymbol{\mlq}{\mathord}{operators}{``}
\DeclareMathSymbol{\mrq}{\mathord}{operators}{`'}

\renewcommand*{\ALG@name}{Algoritmo}
\renewcommand{\algorithmicrequire}{\textbf{Input:}}
\renewcommand{\algorithmicensure}{\textbf{Output:}}
\newcommand{\forto}{\ \mbox{\bf to}\ }
\newcommand{\algand}{\ \mbox{\bf and}\ }

\definecolor{SBlue}{HTML}{4C82AF}

\newcommand{\newAPLsymbol}[7]{
\setlength{\aboverulesep}{0pt}
\setlength{\belowrulesep}{0pt}
    \begin{table}
        \centering
    \begin{tabularx}{0.9\textwidth}{ccX}
    \toprule
    \rowcolor{SBlue}
    \textcolor{white}{\textbf{Símbolo}} & \textcolor{white}{\textbf{Aridade}} & \textcolor{white}{\textbf{Descrição}} \\
    \midrule
    \\
    \vspace*{1pt}{\huge \texttt{#1}} & \multirow{2}{*}{#3} & \multirow{2}{*}{#4} \\
    (#2) \\
    \\
    \midrule
    \rowcolor{SBlue}
    \textcolor{white}{\textbf{Unicode}} & 
    \textcolor{white}{\textbf{TAB}} &
    \textcolor{white}{\textbf{APL}} \\
    \midrule
    \\
    \texttt{#5} & \texttt{#6} & \texttt{#7} \\
    \\
    \bottomrule
    \end{tabularx}
    \end{table}
}
