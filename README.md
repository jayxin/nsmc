<!-- vim-markdown-toc GFM -->

* [NSMC](#nsmc)
	* [文件列表](#文件列表)
	* [编译](#编译)
		* [本地编译](#本地编译)
			* [方法1-用 xelatex 编译](#方法1-用-xelatex-编译)
			* [方法2-用 latexmk 编译](#方法2-用-latexmk-编译)
		* [在线编译](#在线编译)
	* [文档类选项说明](#文档类选项说明)

<!-- vim-markdown-toc -->

# NSMC

- National Statistical Modeling Competition
- 全国统计建模大赛 LaTeX 模板
- 项目地址: [nsmc](https://github.com/jayxin/nsmc)
- 主要作者: [jayxin](https://github.com/jayxin)/[objout](https://github.com/objout)
- 本项目贡献者列表见**contributors.md**文件

## 文件列表

```none
./
├── LICENSE.txt 使用许可
├── README.md 项目说明
├── contributors.md 贡献者列表
├── latexmkrc latexmk 配置文件
├── main.tex **主文档(编译入口文件)**
├── commons/ 模板
│   ├── nsmc.cls 基础模板
│   └── preamble.tex 用户额外添加宏包
├── contents/ 内容
│   ├── abstract.tex 摘要
│   ├── acknowlegement.tex 致谢
│   ├── info.tex 论文基本信息
│   ├── references.tex 参考文献
│   ├── appendix/ 附录
│   └── sections/ 正文
├── figures/ 图
└── fonts/ 字体
    ├── fs-gb2312.ttf 仿宋 GB2312
    ├── fzxbsjt.ttf 方正小标宋简体
    ├── simhei.ttf 黑体
    ├── simkai.ttf 楷体
    ├── simsun.ttf 宋体
    └── times/ Times New Roman
        ├── times.ttf 常规(Regular)
        ├── timesbd.ttf 粗体(BolD)
        ├── timesbi.ttf 粗斜体(Bold and Italic)
        └── timesi.ttf 斜体(Italic)
```

## 编译

### 本地编译

- 使用前提: 本地已装好 LaTeX 的发行版如 TeXLive
- 已测试环境:
	+ 操作系统 - Linux
	+ LaTeX 发行版 - TeXLive 2023

#### 方法1-用 xelatex 编译

需手动编译多次，目录等内容才能正确显示。

```sh
xelatex main
```

#### 方法2-用 latexmk 编译

自动编译多次:

```sh
latexmk main
```

清理辅助文件(`log`、`aux`等):

```sh
latexmk -c main
```

清理辅助文件(`log`、`aux`等)和 `pdf`:

```sh
latexmk -C main
```

### 在线编译

- 可使用在线的编译平台进行编译如:
	+ [TeXPage](https://texpage.com)
	+ [OverLeaf](https://overleaf.com)
- 已测试平台: TeXPage, 进行编译前需保证如下设置
	+ 编译器: `xelatex`
	+ TeXLive 版本: 2023
	+ 主文档(Main Document): main.tex

## 文档类选项说明

本项目文档类(Document Class)目前支持 2 个选项:
- `draft`: 是否嵌入图片和代码, 默认嵌入
- `sourceseries`: 是否使用思源系列字体(主要是宋体和黑体), 默认使用思源

加入思源系列字体的原因是 Sim 系列的字体不提供粗体, 使用 Sim 系列想用粗体就要用伪粗体(AutoFakeBold), 但伪粗体效果不佳，会导致显示的粗体过黑。

使用思源系列:

```latex
% 默认即为思源系列
\documentclass{commons/nsmc}

% 思源字体, 同时开启 draft
\documentclass[sourceseries,draft]{commons/nsmc}
```

使用 Sim 系列:

```latex
\documentclass[simseries]{commons/nsmc}
```

<!-- vim: set noet: -->
