\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{nsmc}
  [2026/04/08 v1.0 Standard LaTeX Template for NSMC]

%% Inital Code
\newif\if@mcm@bwprint\@mcm@bwprintfalse
\newif\if@mcm@preface\@mcm@prefacetrue
% tokens definition
%%%% 承诺书
\newcommand\mcm@tokens@keywords{}
\newcommand*\mcm@tokens@tihao{}
\newcommand*\mcm@tokens@baominghao{}
\newcommand*\mcm@tokens@schoolname{}
\newcommand*\mcm@tokens@membera{}
\newcommand*\mcm@tokens@memberb{}
\newcommand*\mcm@tokens@memberc{}
\newcommand*\mcm@tokens@supervisor{}
\newcommand*\mcm@tokens@yearinput{}
\newcommand*\mcm@tokens@monthinput{}
\newcommand*\mcm@tokens@dayinput{}
%%%% 编号专用页
% 没有
%% Declaration of Options
\DeclareOption{colorprint}{\@mcm@bwprintfalse}
\DeclareOption{bwprint}{\@mcm@bwprinttrue}
\DeclareOption{withoutpreface}{\@mcm@prefacefalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
%% Executing of Options
\ExecuteOptions{colorprint}
\ProcessOptions\relax

% 基础模板
\LoadClass[a4paper,12pt]{article}

% xelatex
\RequirePackage{ifxetex}
\RequireXeTeX
\ifxetex\else
\ClassError{nsmc}{You must use the `xelatex' driver\MessageBreak Please choose `xelatex'}{%
Just choose `xelatex', no `pdflatex' or `latex' and so on.}
\fi

% 支持中文
\RequirePackage{ctex}

% 页面布局
\RequirePackage{geometry}

% 数学宏包 -------
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
% -----

\RequirePackage{bm}

\RequirePackage{titletoc}

% 颜色
\RequirePackage{xcolor}

% 图片
\RequirePackage{graphicx}

% 表格 -------
\RequirePackage{array}
% 长表格
\RequirePackage{longtable}
% 提供 \toprule 等命令
\RequirePackage{booktabs}
% 支持在表格中跨行
\RequirePackage{multirow}
% 调整间隔
\RequirePackage{bigstrut}
% 在跨行表格中输入定界符
\RequirePackage{bigdelim}
% -----

% 保护脆落命令
\RequirePackage{cprotect}

% 代码环境
\RequirePackage{listings}

% 目录样式 -------
\RequirePackage[titles]{tocloft}
\renewcommand{\cftdot}{$\cdot$}
\renewcommand{\cftsecdotsep}{1.5}
\setlength{\cftbeforesecskip}{7pt}
\setlength{\cftbeforesubsecskip}{3pt}

%\renewcommand{\cfttoctitlefont}{\hfill\zihao{4}\hei}
%\renewcommand{\cftaftertoctitle}{\hfill}

\renewcommand{\cftsecfont}{\zihao{-4}\song}
\renewcommand{\cftsecleader}{\cftdotfill{\cftsecdotsep}}
\renewcommand{\cftsubsecleader}{\cftdotfill{\cftsecdotsep}}
\renewcommand{\cftsubsubsecleader}{\cftdotfill{\cftsecdotsep}}
\renewcommand{\cftsecaftersnumb}{\hskip.4em}
\renewcommand{\cftsubsecaftersnumb}{\hskip.4em}
\renewcommand{\cftsubsubsecaftersnumb}{\hskip.4em}

\renewcommand{\cftsecindent}{0em}
\renewcommand{\cftsubsecindent}{2em}
% -----

% 颜色定义 -------
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}
% -----

% 代码环境设置 -------
\lstset{
  frame=tb,
  aboveskip=3mm,
  belowskip=3mm,
  showstringspaces=false,
  columns=flexible,
  framerule=1pt,
  rulecolor=\color{gray!35},
  backgroundcolor=\color{gray!5},
  basicstyle={\small\ttfamily},
  numbers=none,
  numberstyle=\tiny\color{gray},
  keywordstyle=\color{blue},
  commentstyle=\color{dkgreen},
  stringstyle=\color{mauve},
  breaklines=true,
  breakatwhitespace=true,
  tabsize=3,
}
% -----

% 首行缩进
\RequirePackage{indentfirst}

% 设置浮动体的标题
\RequirePackage{caption}

% 定制列表环境
\RequirePackage{enumitem}

\RequirePackage{setspace}

% 下划线
\RequirePackage{ulem}

% 尺寸计算
\RequirePackage{calc}

\RequirePackage[titletoc,title]{appendix}

%\RequirePackage[title,toc,titletoc]{appendix}

\RequirePackage{etoolbox}
\AtBeginEnvironment{thebibliography}{%
    \phantomsection
    \addcontentsline{toc}{section}{\refname}
    }

% 超链接 hyperref 的设置
\RequirePackage{hyperref}

% 页面布局
\geometry{top=2.54cm,bottom=2.54cm,left=3.17cm,right=3.17cm}

%\renewcommand*{\baselinestretch}{1.38}

% 修改tabular 环境, 设置表格中的行间距为正文行间距.
\let\mcm@oldtabular\tabular
\let\mcm@endoldtabular\endtabular
\renewenvironment{tabular}%
	{\bgroup%
	\renewcommand{\arraystretch}{1.38}%
	\mcm@oldtabular}%
	{\mcm@endoldtabular\egroup}

% 每行缩进两个汉字
\setlength\parindent{2em}

% 字体 -------
\setCJKmainfont{SimSun}
\setCJKsansfont{SimHei}
\setCJKmonofont{FangSong}

% 楷体
\setCJKfamilyfont{kai}[AutoFakeBold,Path="fonts/"]{simkai.ttf}
\newcommand*{\kai}{\CJKfamily{kai}}

% 宋体
\setCJKfamilyfont{song}[AutoFakeBold]{SimSun}
\newcommand*{\song}{\CJKfamily{song}}

% 黑体
\setCJKfamilyfont{hei}[AutoFakeBold]{SimHei}
\newcommand*{\hei}{\CJKfamily{hei}}

% 方正小标宋简体
\setCJKfamilyfont{fzxbsjt}[AutoFakeBold,Path="fonts/"]{fzxbsjt.ttf}
\newcommand*{\fzxbsjt}{\CJKfamily{fzxbsjt}}

% 仿宋_GB2312
\setCJKfamilyfont{fsgb}[AutoFakeBold,Path="fonts/"]{fs-gb2312.ttf}
\newcommand*{\fsgb}{\CJKfamily{fsgb}}

\setmainfont{Times New Roman}
%\setmonofont{Courier New}
\setsansfont{Arial}

\renewcommand\normalsize{%
	\@setfontsize\normalsize{12.05}{14.45}%
	\abovedisplayskip 12\p@ \@plus3\p@ \@minus7\p@
	\abovedisplayshortskip \z@ \@plus3\p@
	\belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@}
% -----

% 数学环境 -------
\newtheorem{definition}{\nsmc@cap@definition}
\newtheorem{theorem}{\nsmc@cap@theorem}
\newtheorem{lemma}{\nsmc@cap@lemma}
\newtheorem{corollary}{\nsmc@cap@corollary}
\newtheorem{assumption}{\nsmc@cap@assumption}
\newtheorem{conjecture}{\nsmc@cap@conjecture}
\newtheorem{axiom}{\nsmc@cap@axiom}
\newtheorem{principle}{\nsmc@cap@principle}
\newtheorem{problem}{\nsmc@cap@problem}
\newtheorem{example}{\nsmc@cap@example}
\newtheorem{proof}{\nsmc@cap@proof}
\newtheorem{solution}{\nsmc@cap@solution}
% -----

% 浮动环境设置 -------
\renewcommand*{\textfraction}{0.05}
\renewcommand*{\topfraction}{0.9}
\renewcommand*{\bottomfraction}{0.8}
\renewcommand*{\floatpagefraction}{0.85}
% -----

% 图片设置 -------
% 若图片无后缀, 依次按下列顺序搜索
\DeclareGraphicsExtensions{.pdf,.eps,.jpg,.png}
% 设置图片搜索路径
\graphicspath{{figures/}{pictures/}{pics/}{images/}}
% -----

% 图表标题 -------
\DeclareCaptionFont{song}{\songti}
\DeclareCaptionFont{minusfour}{\zihao{-4}}
\captionsetup[figure]{%
	format=hang,   % 标题从第二行开始都有缩进, 应该和 justification=raggedright 的效果一样.
	labelsep=quad, % 分隔符是一个空格
	font={song,minusfour,bf}, % 图的字体, 宋体小四
	position=bottom
}
\captionsetup[table]{%
	format=hang,   % 标题从第二行开始都有缩进, 应该和 justification=raggedright 的效果一样.
	labelsep=quad, % 分隔符是一个空格
	font={song,minusfour,bf}, % 表的字体, 宋体小四
	position=top
}
% -----

% 列表环境 -------
\setlist{%
	topsep=0.3em, % 列表顶端的垂直空白
	partopsep=0pt, % 列表环境前面紧接着一个空白行时其顶端的额外垂直空白
	itemsep=0ex plus 0.1ex, % 列表项之间的额外垂直空白
	parsep=0pt, % 列表项内的段落之间的垂直空白
	leftmargin=1.5em, % 环境的左边界和列表之间的水平距离
	rightmargin=0em, % 环境的右边界和列表之间的水平距离
	labelsep=0.5em, % 包含标签的盒子与列表项的第一行文本之间的间隔
	labelwidth=2em % 包含标签的盒子的正常宽度；若实际宽度更宽，则使用实际宽度。
}
% -----

% 超链接 -------
\hypersetup{%
  xetex,
  % unicode=false, % hyperref 和 xetex 同时使用时不能开启 Unicode 选项.
  pdfstartview=FitH,
  CJKbookmarks=true,
  bookmarksnumbered=true,
  bookmarksopen=true,
  colorlinks, %注释掉此项则交叉引用为彩色边框(将colorlinks和pdfborder同时注释掉)
  pdfborder=001,   %注释掉此项则交叉引用为彩色边框
  allcolors=black,
  breaklinks=true}%

% \if@mcm@bwprint
% \AtBeginDocument{\hypersetup{hidelinks}}
% \else\relax\fi
% -----

% 代码环境 -------
\lstnewenvironment{tcode}
  {
    \lstset{basicstyle = \small\ttfamily,
        language=TeX,
        tabsize = 4,
        frame = single,
        escapechar = `,
        breaklines = true,
        breakatwhitespace = true,
        frameround = tttt,
    }
  }
  {}
% -----

\def\cleardoublepage{\clearpage
  \thispagestyle{empty}%
  \pagenumbering{gobble}%
  \hbox{}\newpage
}

%% Document Markup

\newcommand{\Title}[1]{\gdef\@title{#1}}
\newcommand{\School}[1]{\gdef\@school{#1}}
\newcommand{\TeamMember}[1]{\gdef\@teammember{#1}}
\newcommand{\Instructor}[1]{\gdef\@instructor{#1}}
\newcommand{\WorkNumber}[1]{\gdef\@worknumber{#1}}

% 封面
\newcommand{\makecover}{%
{\pdfbookmark[0]{封面}{makecover}

  \thispagestyle{empty}
  {\zihao{3} \hei \noindent
    \makebox[4\ccwd][s]{作品编号}：\@worknumber%
  }

  \vspace{160pt}

  \centering

  \begin{spacing}{1.5}
    \centerline{\zihao{2} \fzxbsjt {\fzxbsjt 2026}年(第十二届)全国大学生统计建模大赛}
    \vspace{20pt}
    \centerline{\ziju{0.4} \zihao{1} \fzxbsjt 参赛作品}
  \end{spacing}

  %\vspace{160pt}
  \vspace*{\fill}
  \begin{spacing}{0.7}
    \ziju{0.2} \zihao{-2} \fsgb
    \begin{tabular}{lc}
      {参赛学校:}  & \@school \\[-10pt]
                                  & \rule{12cm}{.6pt} \\[20pt]
      {论文题目:}  & \@title \\[-10pt]
                                  & \rule{12cm}{.6pt} \\[20pt]
      {参赛队员:}  & \@teammember \\[-10pt]
                                  & \rule{12cm}{.6pt} \\[20pt]
      {指导老师:}  & \@instructor \\[-10pt]
                                  & \rule{12cm}{.6pt} \\[20pt]
     \end{tabular}
  \end{spacing}
  \clearpage
}}

% 中文标题名称设置 -------
\renewcommand\contentsname{\nsmc@cap@contentsname}
\renewcommand\listfigurename{\nsmc@cap@listfigurename}
\renewcommand\listtablename{\nsmc@cap@listtablename}
\renewcommand\refname{\nsmc@cap@refname}
\renewcommand\indexname{\nsmc@cap@indexname}
\renewcommand\figurename{\nsmc@cap@figurename}
\renewcommand\tablename{\nsmc@cap@tablename}
\renewcommand\appendixname{\nsmc@cap@appendixname}
\renewcommand\abstractname{\nsmc@cap@abstractname}
% -----

% 中文标题格式设置
% 目录深度
\setcounter{secnumdepth}{3}
% 节标题格式, 居中, 使用\chinese命令修改计数器
\def\@seccntformat#1{\csname the#1\endcsname\ }
\renewcommand\thesection{\chinese{section}、 }
\renewcommand\thesubsection{（\chinese{subsection}） }
\renewcommand\thesubsubsection{\arabic{subsubsection}.}
%\renewcommand\section{\@startsection{section}{1}{\z@}%
 	%{-3.5ex \@plus -1ex \@minus -.2ex}%
	%{2.3ex \@plus.2ex}%
	%{\centering\normalfont\Large\bfseries}}
%\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
	%{-3.25ex\@plus -1ex \@minus -.2ex}%
	%{1.5ex \@plus .2ex}%
  %{\normalfont\zihao{-3}\hei}}
%\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
	%{-3.25ex\@plus -1ex \@minus -.2ex}%
	%{1.5ex \@plus .2ex}%
  %{\normalfont\zihao{4}\kai}}
%\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
	%{3.25ex \@plus1ex \@minus.2ex}%
	%{-1em}%
  %{\normalfont\zihao{-4}\bfseries\song}}
%\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
	 %{3.25ex \@plus1ex \@minus .2ex}%
	 %{-1em}%
	 %{\normalfont\normalsize\bfseries}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Define new environment and command
%% 定义摘要环境
\renewenvironment{abstract}{%
    \centerline{\zihao{3}\fzxbsjt \@title}
    \vspace*{3em}
    \centerline{\zihao{4}\hei \abstractname}
    \vspace*{7pt}
}{}

\renewenvironment{quotation}
	{\list{}{\listparindent 2em%
	 \itemindent \listparindent
	 \rightmargin\z@
	 \leftmargin\z@
	 \parsep \z@ \@plus\p@}%
	\item\relax}
	{\endlist}

\newcommand\keywords[1]{%
	\renewcommand{\mcm@tokens@keywords}{#1}
	%\par
	%\vskip1ex
	{\noindent\zihao{-4}\hei \nsmc@cap@keywordsname：}~{\mcm@tokens@keywords}
	}
% 定义附录

% \renewcommand{\setthesection}{\appendixname\Alph{section}}
% \renewcommand\appendix{\par
	% \setcounter{section}{0}%
	 % \setcounter{subsection}{0}%
	% \gdef\thesection{\appendixname\@Alph\c@section}}
% 重定义参考文献环境
\renewenvironment{thebibliography}[1]
     {\section*{\refname}%
      \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}

\newcommand*\tihao[1]{%
	\renewcommand{\mcm@tokens@tihao}{#1}}
\newcommand*\baominghao[1]{%
	\renewcommand{\mcm@tokens@baominghao}{#1}}
\newcommand*\schoolname[1]{%
	\renewcommand{\mcm@tokens@schoolname}{#1}}
\newcommand*\membera[1]{%
	\renewcommand{\mcm@tokens@membera}{#1}}
\newcommand*\memberb[1]{%
	\renewcommand{\mcm@tokens@memberb}{#1}}
\newcommand*\memberc[1]{%
	\renewcommand{\mcm@tokens@memberc}{#1}}
\newcommand*\supervisor[1]{%
	\renewcommand{\mcm@tokens@supervisor}{#1}}
\newcommand*\yearinput[1]{%
	\renewcommand{\mcm@tokens@yearinput}{#1}}
\newcommand*\monthinput[1]{%
	\renewcommand{\mcm@tokens@monthinput}{#1}}
\newcommand*\dayinput[1]{%
	\renewcommand{\mcm@tokens@dayinput}{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 数学定理常量 -------
\newcommand*{\nsmc@cap@definition}{定义}
\newcommand*{\nsmc@cap@theorem}{定理}
\newcommand*{\nsmc@cap@lemma}{引理}
\newcommand*{\nsmc@cap@corollary}{推论}
\newcommand*{\nsmc@cap@assumption}{假设}
\newcommand*{\nsmc@cap@conjecture}{猜想}
\newcommand*{\nsmc@cap@axiom}{公理}
\newcommand*{\nsmc@cap@principle}{定律}
\newcommand*{\nsmc@cap@problem}{问题}
\newcommand*{\nsmc@cap@example}{例}
\newcommand*{\nsmc@cap@proof}{证明}
\newcommand*{\nsmc@cap@solution}{解}
% -----

% 中文标题名称常量 -------
\newcommand*{\nsmc@cap@contentsname}{\centerline{\zihao{4}\hei 目录}}
\newcommand*{\nsmc@cap@listfigurename}{插图清单}
\newcommand*{\nsmc@cap@listtablename}{附表清单}
\newcommand*{\nsmc@cap@refname}{参考文献}
\newcommand*{\nsmc@cap@indexname}{索引}
\newcommand*{\nsmc@cap@figurename}{图}
\newcommand*{\nsmc@cap@tablename}{表}
\newcommand*{\nsmc@cap@appendixname}{附录}
\newcommand*{\nsmc@cap@abstractname}{摘要}
\newcommand*{\nsmc@cap@keywordsname}{关键词}
% -----

 %%% 编号专用页中的常量
\newcommand*\mcm@numberpage@string@headname{赛区评阅编号（由赛区组委会填写）：}
\newcommand*\mcm@numberpage@string@titlea{\the\year 高教社杯全国大学生数学建模竞赛}
\newcommand*\mcm@numberpage@string@titleb{编\hspace{.5em}号\hspace{.5em}专\hspace{.5em}用\hspace{.5em}页}
\newcommand*\mcm@numberpage@string@appraiselog{赛区评阅记录（可供赛区评阅时使用）：}
\newcommand\mcm@numberpage@string@reviewer{\shortstack{评\\ 阅\\ 人}}
\newcommand\mcm@numberpage@string@remarks{\shortstack{备\\ 注}}
\newcommand*\mcm@numberpage@string@unifiednum{送全国评阅统一编号（由赛区组委会填写）：}
\newcommand*\mcm@numberpage@string@countrynum{全国评阅随机编号（由全国组委会填写）：}
\newcommand\mcm@numberpage@string@inform{\quotation
\noindent（{\bfseries\kai 请勿改动此页内容和格式。此编号专用页仅供赛区和全国评阅使用，参赛队打印后装订到纸质论文的第二页上。
注意电子版论文中不得出现此页。}）
\endquotation
}
%设置目录格式
% 节的目录格式
%\titlecontents{section}[0pt]{\vspace{2mm}\song}
 %{\thecontentslabel\hskip.5em}{}{\titlerule*[0.5pc]{.}\contentspage}
% % 小节的目录格式
% \titlecontents{subsection}[30pt]{\songti}
% {\thecontentslabel\hskip.5em}{}{\titlerule*[0.5pc]{.}\contentspage}
% \titlecontents{subsubsection}[55pt]{\songti}
% {\thecontentslabel\hskip.5em}{}{\titlerule*[0.5pc]{.}\contentspage}

\RequirePackage{titlesec}
\titleformat{\section}[hang]{\zihao{-3}\hei}{\thesection}{1em}{}
\titleformat{\subsection}[hang]{\zihao{4}\kai}{\thesubsection}{1em}{}
\titleformat{\subsubsection}[hang]{\zihao{-4}\bfseries\song}{\hspace*{2em}\thesubsubsection}{1em}{}

\linespread{1.65}

\endinput
% vim: set fdm=marker fmr=\ -------,-----:
