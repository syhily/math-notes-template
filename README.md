# Mathematic Notebook Template

$\displaystyle \mathrm{Edition\ (e)} = \sum \limits _{n=0}^{\infty }{\frac {1}{n!}} = 1 + {\frac {1}{1}}+{\frac {1}{1\cdot 2}}+{\frac {1}{1\cdot 2\cdot 3}}+\cdots = 2.718$

[![Build](https://github.com/syhily/math-notes-template/actions/workflows/build.yml/badge.svg)](https://github.com/syhily/math-notes-template/actions/workflows/build.yml) [![Copier](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/copier-org/copier/master/img/badge/badge-grayscale-inverted-border.json)](https://github.com/copier-org/copier)

This is a mathematic notebook template for using in $\LaTeX$ with CJK support.
It's a modified version based on the previous works from [一个LaTeX的数学笔记模板](https://zhuanlan.zhihu.com/p/604236564).

The [tutorial](tutorial) directory is a complete tutorial on telling you how to use this template. You can download the PDF in the [Github Workflow](https://github.com/syhily/math-notes-template/actions/runs/14700325475/artifacts/3019222200).

## How to use this template

This template is working on top of the [copier](https://github.com/copier-org/copier).
You need to install the copier first and execute the command shown below.

```bash
# You must replace the target_directory with the directory path you want to place your LaTeX notebook.
copier copy --trust --vcs-ref=HEAD gh:syhily/math-notes-template.git target_directory
```

Open the project directory by using the [VSCode](https://code.visualstudio.com/),
a dialog will be prompted to inform you need install the recommend plugins.
