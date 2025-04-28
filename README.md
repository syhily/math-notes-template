# Mathematic Notebook Template

$\displaystyle \mathrm{Edition\ (e)} = \sum \limits _{n=0}^{\infty }{\frac {1}{n!}} = 1 + {\frac {1}{1}}+{\frac {1}{1\cdot 2}}+{\frac {1}{1\cdot 2\cdot 3}}+\cdots = 2.71$

[![Build](https://github.com/syhily/math-notes-template/actions/workflows/build.yml/badge.svg)](https://github.com/syhily/math-notes-template/actions/workflows/build.yml) [![Copier](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/copier-org/copier/master/img/badge/badge-grayscale-inverted-border.json)](https://github.com/copier-org/copier)

This is a mathematic notebook template for using in $\LaTeX$ with CJK support.
It's a modified version based on the previous works from [一个LaTeX的数学笔记模板](https://zhuanlan.zhihu.com/p/604236564).

The [tutorial](tutorial) directory is a complete tutorial on telling you how to use this template. You can download the PDF in the [Github Workflow](https://github.com/syhily/math-notes-template/actions/runs/14700325475/artifacts/3019222200).

## How to use this template

This template is working on top of the [copier](https://github.com/copier-org/copier).
You need to install the copier first and execute the command shown below.

```bash
# You can replace the . with the directory you want to place your LaTeX notebook.
copier gh:syhily/math-notes-template .
```

## How to write document

### `main.tex` is the entrypoint file

```latex
\def\allfiles{}
\documentclass[12pt, a4paper, oneside, UTF8]{ctexbook}
\def\path{./config}
\input{config/_config}
\begin{document}
\include{config/cover}
\include{chap0/chap}
% \include{chap1/chap}
% Add the new chapter like the comment above.
\end{document}
```

### `config/_config.tex` is the configuration file

```latex
% All the packages used in your LaTeX project. Add new packages here instead of elsewhere.
\input{\path/package.tex}

% Custom theorem field
\input{\path/theorem1.tex}

% Custom command.
\input{\path/custom.tex}

% The notebook title
\def\myTitle{一份 \LaTeX 的笔记模板}

% The name of the notebook author
\def\myAuthor{Guo}

% The date time display on cover
\def\myDateCover{\today}

% The date time on preface
\def\myDateForeword{2023 年 1 月 28 日}

% The title for preface
\def\myForeword{前言}

% The content for preface
\def\myForewordText{
    这里写前言内容

    第二行
}

% The subtitle for you notebook.
\def\mySubheading{格物致知，慎思明辨}
```

### `config/custom.tex` is the custom command

Here is an example content for teaching you how to add the custom commands.

```latex
% differential symbol
\def\d{\mathrm{d}}

% Real number symbol
\def\R{\mathbb{R}}

% Strong
\newcommand{\bs}[1]{\boldsymbol{#1}}

% Vector
\newcommand{\ora}[1]{\overrightarrow{#1}}

% Black space
\newcommand{\myspace}[1]{\par\vspace{#1\baselineskip}}

% Use \usepackage{stackengine} for changing the line height
\newcommand{\xrowht}[2][0]{\addstackgap[.5\dimexpr#2\relax]{\vphantom{#1}}}

% Custom line height cases and vmatrix environment
\newenvironment{ca}[1][1]{\linespread{#1} \selectfont \begin{cases}}{\end{cases}}
\newenvironment{vx}[1][1]{\linespread{#1} \selectfont \begin{vmatrix}}{\end{vmatrix}}

% Add line wrap for table cell
\newcommand{\tabincell}[2]{\begin{tabular}{@{}#1@{}}#2\end{tabular}}

% Parallel symbol //
\newcommand{\pll}{\kern 0.56em/\kern -0.8em /\kern 0.56em}

% Divergence, curl symbol
\newcommand{\dive}[1][F]{\mathrm{div}\;\bs{#1}}
\newcommand{\rotn}[1][A]{\mathrm{rot}\;\bs{#1}}
```

### `chap[number]/chap.tex` is the file for each chapter

The default content for one chapter is shown like below example.
Replace the comment with the content you would like to write.

```latex
\ifx\allfiles\undefined
\documentclass[12pt, a4paper, oneside, UTF8]{ctexbook}
\def\path{../config}
\input{../config/_config}
\begin{document}
\else
\fi
% Main Content
\ifx\allfiles\undefined
\end{document}
\fi
```
