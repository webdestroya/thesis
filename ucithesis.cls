% ucithesis.cls: LaTeX2e class for writing UCI Ph.D. dessertation, based on
%   LaTeX ``report'' class, to comply with ``UCI Thesis and Dissertation Manual''
%   (http://www.lib.uci.edu/libraries/collections/special/thesis/tdmanual.html).
%
% Authors: 
% Xianping Ge <xge@ics.uci.edu>
% Trevor Harmon <tharmon@uci.edu>
%
% Changelog:
% Aug 15, 2008: added "Page" as column title to Table of Contents, List of Figures, and List of Tables
% Dec 6, 2007:  eliminated some spurious "duplicate ignored" (Trevor)
%               corrected bibliography spacing (Trevor)
% May 17, 2007: added support for the pre-published copyright page (Trevor)
%               corrected spelling (Trevor)
%               made dedication page optional (Trevor)
%               tweaked certain text and formatting to be closer to the UCI thesis manual (Trevor)
% Jan 12, 2005: beautified and trimmed fat (Trevor)
%               verified compatibility with latest LaTeX packages (Trevor)
%  Oct 3, 2002: added a \clearpage before each \addcontentsline (Xianping)
%               corrected spacing in preliminary pages. (Xianping)

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ucithesis}[2007/12/06 UCI Thesis class]

\LoadClassWithOptions{report}
\RequirePackage[hmargin={1.5in,1in},vmargin={1in,1in}]{geometry}
\RequirePackage{setspace}
\setlength{\parindent}{1cm}

\newcommand{\thesistitle}[1]{\newcommand\Thesistitle{#1}}
\newcommand{\degreename}[1]{\newcommand\Degreename{#1}}
\newcommand{\degreefield}[1]{\newcommand\Degreefield{#1}}
\newcommand{\authorname}[1]{\newcommand\Authorname{#1}}
\newcommand{\degreeyear}[1]{\newcommand\Degreeyear{#1}}
\newcommand{\committeechair}[1]{\newcommand\Committeechair{#1}}
\newcommand{\othercommitteemembers}[1]{\newcommand\Othercommitteemembers{#1}}
\newcommand{\copyrightdeclaration}[1]{\newcommand\Copyrightdeclaration{#1}}
\newcommand{\prepublishedcopyrightdeclaration}[1]{\newcommand\Prepublishedcopyrightdeclaration{#1}}
\newcommand{\dedications}[1]{\newcommand\Dedications{#1}}
\newcommand{\acknowledgments}[1]{\newcommand\Acknowledgments{#1}}
\newcommand{\curriculumvitae}[1]{\newcommand\Curriculumvitae{#1}}
\newcommand{\thesisabstract}[1]{\newcommand\Thesisbstract{#1}}

\newcommand{\thesistitlepage}
{
	\vspace*{0.5in}
	\thispagestyle{empty}
	\singlespacing
	\begin{center}
		UNIVERSITY OF CALIFORNIA, \\
		IRVINE \\
		\vspace{0.4in}
		\Thesistitle \\
		\vspace{0.15in}
		THESIS \\
		\vspace{0.4in}
		submitted in partial satisfaction of the requirements \\
		for the degree of \\
		\vspace{0.4in}
		\MakeUppercase\Degreename \\
		\vspace{0.15in}
		in \Degreefield \\
		\vspace{0.4in}
		by \\
		\vspace{0.4in}
		\Authorname \\
	\end{center}
	\vspace{1in}
	\begin{flushright}
		Thesis Committee: \\
		\Committeechair, Chair \\
		\Othercommitteemembers \\
	\end{flushright}
	\vfill
	\begin{center}
		\Degreeyear
	\end{center}
	\clearpage
}

\newcommand{\copyrightpage}
{
	\thispagestyle{empty}
	\rule{0in}{0in}
	\protect\vfill
	\begin{center}
		\Copyrightdeclaration
	\end{center}
	\clearpage
}

\newcommand{\prepublishedcopyrightpage}
{
	\thispagestyle{empty}
	\rule{0in}{0in}
	\protect\vfill
	\begin{center}
		\Prepublishedcopyrightdeclaration
	\end{center}
	\clearpage
}

\newcommand{\signaturepage}
{
	\vspace*{1in}
	\begin{center}
		The thesis of \Authorname \\
		is approved and is acceptable in quality and form for \\
		publication on microfilm and in digital formats: \\
	\end{center}
	\vspace{3in}
	\begin{flushright}
	\rule{3in}{0.01in} \\
	\vspace{0.4in}
	\rule{3in}{0.01in} \\
	\vspace{0.4in}
	\rule{3in}{0.01in} \\
	Committee Chair
	\end{flushright}
	\vspace{.75in}
	\begin{center}
	University of California, Irvine \\
	\Degreeyear
	\end{center}
	\clearpage
}

\newcommand{\dedicationpage}
{
	\begin{center}
		\textbf{\Large DEDICATION} \\
		\vspace{0.4in}
		\Dedications
	\end{center}
	\clearpage
}

\newcommand{\acknowledgmentspage}
{
	\begin{center}
		\textbf{\Large ACKNOWLEDGMENTS}
	\end{center}
	\parskip 12pt
	\parindent 0pt
	\Acknowledgments
	\clearpage
}

\newcommand{\curriculumvitaepage}
{
	\begin{center}
		\textbf{\Large CURRICULUM VITAE} \\
		\vspace{0.4in}
		\textbf{\large{\Authorname}}
	\end{center}
	\Curriculumvitae
	\clearpage
}

\newcommand{\abstractpage}
{
	\begin{center}
		{\bf\Large ABSTRACT OF THE THESIS} \\
		\vspace{0.2in}
		\Thesistitle \\
		\vspace{0.2in}
		By \\
		\vspace{0.2in}
		\Authorname \\
		\vspace{0.2in}
		\Degreename\ in \Degreefield \\
		\vspace{0.2in}
		University of California, Irvine, \Degreeyear \\
		\vspace{0.2in}
		\Committeechair, Chair \\
	\end{center}
	\vspace{0.2in}
	\doublespacing
	\Thesisbstract
	\clearpage
}

\renewcommand{\contentsname}{\protect\centering\protect\Large TABLE OF CONTENTS}
\renewcommand{\listfigurename}{\protect\centering\protect\Large LIST OF FIGURES}
\renewcommand{\listtablename}{\protect\centering\protect\Large LIST OF TABLES}

% Add "Page" as column title to Table of Contents, List of Figures, and List of Tables
\addtocontents{toc}{\protect\raggedleft Page\\}
\addtocontents{lof}{\protect\raggedleft Page\\}
\addtocontents{lot}{\protect\raggedleft Page\\}

\newcommand{\preliminarypages}
{
	\pagenumbering{roman}
	\thesistitlepage
	\copyrightpage
    \ifx\Prepublishedcopyrightdeclaration\undefined
	\else
	\prepublishedcopyrightpage
    \fi
	\setcounter{page}{2}
	\signaturepage
    \ifx\Dedications\undefined
	\else
	\dedicationpage
	\fi
	\tableofcontents
	\clearpage
	\phantomsection
	\addcontentsline{toc}{chapter}{LIST OF FIGURES}
	\listoffigures
	\clearpage
	\phantomsection
	\addcontentsline{toc}{chapter}{LIST OF TABLES}
	\listoftables
	\clearpage
	\phantomsection
	\addcontentsline{toc}{chapter}{ACKNOWLEDGMENTS}
	\acknowledgmentspage
	\clearpage
	\phantomsection
	\addcontentsline{toc}{chapter}{ABSTRACT OF THE THESIS}
	\abstractpage
	\pagenumbering{arabic}
}

\renewcommand{\appendix}
{
	\par
	\setcounter{section}{0}
	\gdef\thechapter{\@Alph\c@section}
	\gdef\thesection{\@Alph\c@section}
	\chapter*{Appendices}
	\addcontentsline{toc}{chapter}{Appendices}
}

% Redefine the bibliography to make it single-spaced.
\renewcommand{\bibliography}[1]{%
  \if@filesw
    \immediate\write\@auxout{\string\bibdata{#1}}%
  \fi
  % Make sure the table of contents has an entry for the bibliography
  \addcontentsline{toc}{chapter}{Bibliography}
  \begin{singlespacing}
  \@input@{\jobname.bbl}
  \end{singlespacing}
}
