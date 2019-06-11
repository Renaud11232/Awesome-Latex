\ProvidesClass{awesome}[11/06/2019 Awesome Class]
\LoadClass[11pt,fleqn]{book}
\NeedsTeXFormat{LaTeX2e}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Required Packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[top=3cm,bottom=3cm,left=3.2cm,right=3.2cm,headsep=10pt,letterpaper]{geometry} % margins

\RequirePackage{xcolor} % Required for specifying colors by name
\RequirePackage{avant} % Use the Avantgarde font for headings
\RequirePackage{mathptmx} % Use the Adobe Times Roman as the default text font together with math symbols from the Sym­bol, Chancery and Com­puter Modern fonts
\RequirePackage{microtype} % Slightly tweak font spacing for aesthetics
\RequirePackage[T1]{fontenc} % Use 8-bit encoding that has 256 glyphs
\RequirePackage[backend=biber, style=numeric, sorting=none]{biblatex}
\RequirePackage{csquotes}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Front Page
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand\backgroundimage[1]{\renewcommand{\backgroundimage}{#1}}
\newcommand\subtitle[1]{\renewcommand{\subtitle}{#1}}
\newcommand\makefrontpage{
	\begin{tikzpicture}[remember picture,overlay]
   		\node [opacity=0.7, rectangle, fill=overlaycolor, anchor=north, minimum width=\paperwidth+1cm, minimum height=9cm] (box) at (0.5cm,-3.5cm){};
	\end{tikzpicture}
  \begingroup
  \thispagestyle{empty}
  \ifthenelse{\equal{\backgroundimage}{}}{}{
    \AddToShipoutPicture*{\put(0,0){\includegraphics[scale=1.25]{\backgroundimage}}} % Image background
  }
  \centering
  \vspace*{5cm}
  \par\normalfont\fontsize{35}{35}\sffamily\selectfont
  \textbf{\thetitle}\\
  {\LARGE\subtitle}\par
  \vspace*{1cm}
  {\Large\theauthor}\par
  \endgroup
}
