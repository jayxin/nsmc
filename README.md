# NSMC

- National Statistical Modeling Competition
- 全国统计建模大赛 LaTeX 模板
- 项目地址: [nsmc](https://github.com/jayxin/nsmc)
- 作者: [Jay Xin](https://github.com/jayxin)/[objout](https://github.com/objout)

## 文件列表

```none
.
├── commons 模板
│   ├── nsmc.cls 模板
│   └── preamble.tex 用户自定义添加宏包
├── contents 论文内容
│   ├── abstract.tex 摘要和关键词
│   ├── acknowlegement.tex 致谢
│   ├── appendix 附录
│   │   └── a1.tex
│   ├── info.tex 论文基本信息
│   ├── references.tex 参考文献
│   └── sections 正文
│       ├── s1.tex
│       ├── s2.tex
│       ├── s3.tex
│       ├── s4.tex
│       ├── s5.tex
│       ├── s6.tex
│       └── s7.tex
├── figures 图
│   └── latex.jpeg
├── fonts 字体文件
│   ├── fs-gb2312.ttf 仿宋 GB2312
│   ├── fzxbsjt.ttf 方正小标宋简体
│   ├── simhei.ttf 黑体
│   ├── simkai.ttf 楷体
│   ├── simsun.ttf 宋体
│   └── times Times New Roman
│       ├── timesbd.ttf
│       ├── timesbi.ttf
│       ├── timesi.ttf
│       └── times.ttf
├── latexmkrc 工程文件
├── LICENSE.txt 使用许可
├── main.tex **编译入口文件**
└── README.md 说明
```

## 使用说明

已测试环境:
- 操作系统 - Linux
- LaTeX 发行版 - TeXLive 2023

### 方法1-使用 xelatex 编译

需手动编译多次，目录等内容才能正确显示。

```sh
xelatex main
```

### 方法2-使用 latexmk 编译

会自动编译多次。

```sh
latexmk main
```

<!-- vim: set noet: -->
