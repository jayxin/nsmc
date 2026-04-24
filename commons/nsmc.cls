\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{nsmc}
  [2026/04/08 v1.0 Standard LaTeX Template for NSMC]

% Declaration of Options
\DeclareOption{draft}{\PassOptionsToPackage{draft}{graphicx}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

% Executing of Options
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
\RequirePackage[fontset=none]{ctex}

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

\RequirePackage{float}

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
\setlength{\cftbeforesecskip}{4pt}
\setlength{\cftbeforesubsecskip}{2pt}

\renewcommand{\cftsecfont}{\zihao{-4}\song}
\renewcommand{\cftsecleader}{\cftdotfill{\cftsecdotsep}}
\renewcommand{\cftsubsecleader}{\cftdotfill{\cftsecdotsep}}
\renewcommand{\cftsubsubsecleader}{\cftdotfill{\cftsecdotsep}}
\renewcommand{\cftsecaftersnumb}{\hskip.4em}
\renewcommand{\cftsubsecaftersnumb}{\hskip.4em}
\renewcommand{\cftsubsubsecaftersnumb}{\hskip.4em}

% 目录条目的缩进 -------
\renewcommand{\cftsecindent}{0em}
\renewcommand{\cftsubsecindent}{2em}
\renewcommand{\cftsubsubsecindent}{2em}
% -----

% 表格与插图清单 -------
\renewcommand{\cfttabfont}{\xiaosi\song 表~}
\renewcommand{\cftfigfont}{\xiaosi\song 图~}
% -----
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

% 超链接
\RequirePackage{hyperref}

% 页面布局
\geometry{top=2.54cm,bottom=2.54cm,left=3.17cm,right=3.17cm}

\renewcommand*{\baselinestretch}{1.65}

% 修改tabular
\let\nsmc@oldtabular\tabular
\let\nsmc@endoldtabular\endtabular
\renewenvironment{tabular}%
	{\bgroup%
	\renewcommand{\arraystretch}{1.0}%
	\nsmc@oldtabular}%
	{\nsmc@endoldtabular\egroup}

% 每行缩进两个汉字
\setlength\parindent{2em}

% 字体 -------
\RequirePackage[T1]{fontenc}

% 宋体 -------
\setCJKfamilyfont{song}[
  AutoFakeBold,
  Path="fonts/",
  Extension=".ttf"
]{simsun.ttf}
\newcommand*{\song}{\CJKfamily{song}}
% -----

% 楷体 -------
\setCJKfamilyfont{kai}[
  AutoFakeBold,
  Path="fonts/",
  Extension=".ttf"
]{simkai}
\newcommand*{\kai}{\CJKfamily{kai}}
% -----

% 黑体 -------
\setCJKfamilyfont{hei}[
  AutoFakeBold,
  Path="fonts/",
  Extension=".ttf"
]{simhei}
\newcommand*{\hei}{\CJKfamily{hei}}
% -----

% 方正小标宋简体 -------
\setCJKfamilyfont{fzxbsjt}[
  AutoFakeBold,
  Path="fonts/",
  Extension=".ttf"
]{fzxbsjt}
\newcommand*{\fzxbsjt}{\CJKfamily{fzxbsjt}}
% -----

% 仿宋 GB2312 -------
\setCJKfamilyfont{fsgb}[
  AutoFakeBold,
  Path="fonts/",
  Extension=".ttf"
]{fs-gb2312}
\newcommand*{\fsgb}{\CJKfamily{fsgb}}
% -----

% 中文全局默认字体 -------
\setCJKmainfont{simsun}[
  AutoFakeBold,
  Path="fonts/",
  Extension=".ttf"
]
% -----

% 中文全局无衬线字体 -------
\setCJKsansfont{simhei}[
  AutoFakeBold,
  Path="fonts/",
  Extension=".ttf"
]
% -----

% 中文全局等宽字体 -------
\setCJKmonofont{simhei}[
  AutoFakeBold,
  Path="fonts/",
  Extension=".ttf"
]
% -----

% 默认字体
\setmainfont{times}[
  AutoFakeBold,
  Path="fonts/times/",
  Extension=".ttf",
  BoldFont={timesbd},
  ItalicFont={timesi},
  BoldItalicFont={timesbi}
]
% 无衬线字体
\setsansfont{times}[
  AutoFakeBold,
  Path="fonts/times/",
  Extension=".ttf",
  BoldFont={timesbd},
  ItalicFont={timesi},
  BoldItalicFont={timesbi}
]
% 等宽字体
%\setmonofont{Courier New}

\newcommand*{\xiaosi}{\zihao{-4}}
\newcommand*{\sihao}{\zihao{4}}

\newfontfamily{\ffzxbsjt}{fzxbsjt}[
  Path="fonts/",
  Extension=".ttf",
]

\newfontfamily{\fhei}{simhei}[
  Path="fonts/",
  Extension=".ttf",
]
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
\DeclareCaptionFont{song}{\song}
\DeclareCaptionFont{xiaosi}{\zihao{-4}}
\captionsetup[figure]{%
	format=hang,   % 标题从第二行开始都有缩进, 应该和 justification=raggedright 的效果一样.
	labelsep=quad, % 分隔符是一个空格
	font={song,xiaosi,bf}, % 图的字体, 宋体小四
	position=bottom
}
\captionsetup[table]{%
	format=hang,   % 标题从第二行开始都有缩进, 应该和 justification=raggedright 的效果一样.
	labelsep=quad, % 分隔符是一个空格
	font={song,xiaosi,bf}, % 表的字体, 宋体小四
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
  colorlinks, % 注释掉此项则交叉引用为彩色边框(将colorlinks和pdfborder同时注释掉)
  pdfborder=001,   %注释掉此项则交叉引用为彩色边框
  allcolors=black,
  breaklinks=true}%
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

% 论文基本信息 -------
\newcommand{\Title}[1]{\gdef\nsmc@title{#1}}
\newcommand{\School}[1]{\gdef\nsmc@school{#1}}
\newcommand{\TeamMember}[1]{\gdef\nsmc@teammember{#1}}
\newcommand{\Instructor}[1]{\gdef\nsmc@instructor{#1}}
\newcommand{\WorkNumber}[1]{\gdef\nsmc@worknumber{#1}}
\newcommand{\Year}[1]{\gdef\nsmc@year{#1}}
\newcommand{\Period}[1]{\gdef\nsmc@period{#1}}
% -----

% 封面 -------
\newcommand{\makecover}{%
{%\pdfbookmark[0]{封面}{makecover}

  % fix page already defined warning
  \pagenumbering{Alph}
  \thispagestyle{empty}
  {\zihao{3} \hei \noindent
    \makebox[4\ccwd][s]{作品编号}：{\fhei \nsmc@worknumber}%
  }

  \vspace{160pt}

  \centering
  \begin{spacing}{1.5}
    \centerline{\zihao{2} \fzxbsjt {\ffzxbsjt \nsmc@year}年(\nsmc@period)全国大学生统计建模大赛}
    \vspace{20pt}
    \centerline{\ziju{0.4} \zihao{1} \fzxbsjt 参赛作品}
  \end{spacing}

  %\vspace{160pt}
  \vspace*{200pt}
  \centering
  \begin{spacing}{0.7}
    \ziju{0.1} \zihao{-2} \fsgb
    \begin{tabular}{lc}
      {参赛学校:}  & \nsmc@school \\[-10pt]
                                  & \rule{12cm}{.6pt} \\[20pt]
      {论文题目:}  & \nsmc@title \\[-10pt]
                                  & \rule{12cm}{.6pt} \\[20pt]
      {参赛队员:}  & \nsmc@teammember \\[-10pt]
                                  & \rule{12cm}{.6pt} \\[20pt]
      {指导老师:}  & \nsmc@instructor \\[-10pt]
                                  & \rule{12cm}{.6pt} \\[20pt]
     \end{tabular}
  \end{spacing}
  \clearpage
}}
% -----

% 致谢 -------
\newcommand{\makeacknowlegement}{
  \clearpage
  \phantomsection
  \addcontentsline{toc}{section}{{致谢}}
  \centerline{\sihao \hei 致谢}
  \vspace*{2em}
}
% -----

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

% 中文标题格式设置 -------
% 目录深度
\setcounter{secnumdepth}{3}
% 节标题格式
\def\@seccntformat#1{\csname the#1\endcsname\ }
\renewcommand\thesection{\chinese{section}、}
\renewcommand\thesubsection{（\chinese{subsection}）}
\renewcommand\thesubsubsection{\hspace*{2em}\arabic{subsubsection}.}

\RequirePackage{titlesec}
\titleformat{\section}[hang]{\zihao{-3}\hei}{\thesection}{0em}{}
\titleformat{\subsection}[hang]{\zihao{4}\kai}{\hspace*{2em}\thesubsection}{0em}{}
\titleformat{\subsubsection}[hang]{\zihao{-4}\bfseries\song}{\thesubsubsection}{0em}{}

\titlespacing{\section}{0pt}{*0.5}{*0.5}
\titlespacing{\subsection}{0pt}{*0.5}{*0.5}
\titlespacing{\subsubsection}{0pt}{*0.5}{*0.5}
% -----

% 摘要和关键词 -------
\AtBeginEnvironment{abstract}{%
  \phantomsection
  \addcontentsline{toc}{section}{\abstractname}
  \pagenumbering{Roman}
  \setcounter{page}{1}
}

\renewenvironment{abstract}{%
    \centerline{\zihao{3}\fzxbsjt \nsmc@title}
    \vspace*{3em}
    \centerline{\zihao{4}\hei \abstractname}
    \vspace*{7pt}
    \xiaosi\song
}{}

\newcommand\keywords[1]{%
	{\noindent\zihao{-4}\hei \nsmc@cap@keywordsname：}~{#1}
}
% -----

% 附录 -------
\renewcommand{\setthesection}{\appendixname\Alph{section}}
\renewcommand\appendix{
  \clearpage
  \phantomsection
  \addcontentsline{toc}{section}{\appendixname}
	\setcounter{section}{0}%
	\setcounter{subsection}{0}%
  {\raggedright{\zihao{4}\hei \appendixname}}
  \par
}
% -----

% 参考文献 -------
\AtBeginEnvironment{thebibliography}{%
  \phantomsection
  \addcontentsline{toc}{section}{\refname}
}

\renewenvironment{thebibliography}[1]
  {\raggedright{\zihao{4} \hei \refname}%
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
% -----

% 表格与插图清单 -------
\renewcommand{\listfigurename}{}
\renewcommand{\listtablename}{}
\newcommand{\listoffigsandtabs}{
  \clearpage
  \centerline{\zihao{4} \hei 表格与插图清单}
  \phantomsection
  \addcontentsline{toc}{section}{表格与插图清单}
  \vspace*{-\baselineskip}
  \begingroup
  \let\clearpage\relax
  \listoftables
  \listoffigures
  \endgroup
  \clearpage
}
% -----

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

\renewcommand{\maketitle}{
  \pagenumbering{arabic}
  \setcounter{page}{1}
  \centerline{\zihao{3}\fzxbsjt \nsmc@title}
  \vspace*{2em}
  \xiaosi\song
}

\newcommand{\maketoc}{
  \clearpage
  \begin{center}
  \tableofcontents
  \end{center}
}

\newcommand{\upcite}[1]{\textsuperscript{\textsuperscript{\cite{#1}}}}

\newcolumntype{M}[1]{>{\centering\arraybackslash}m{#1}}

\linespread{1.65}

% 四级标题
\newcommand{\fourthtitle}[2]{{\large{\textcircled{\small{#1}}}} #2}

\endinput
% vim: set fdm=marker fmr=\ -------,-----:
