# SDUTeX

山东大学 LaTeX 论文模板核心包 | Shandong University LaTeX Thesis Template Core Package

[![License](https://img.shields.io/badge/license-LPPL-blue.svg)](https://www.latex-project.org/lppl/)
[![GitHub stars](https://img.shields.io/github/stars/h1s97x/sdutex)](https://github.com/h1s97x/sdutex/stargazers)
[![GitHub issues](https://img.shields.io/github/issues/h1s97x/sdutex)](https://github.com/h1s97x/sdutex/issues)

## 简介

SDUTeX 是山东大学学位论文 LaTeX 模板的核心代码仓库，提供：
- `sduthesis.cls` - 学位论文文档类
- `sdutex.sty` - 工具宏包
- `sduthesis.bst` - 参考文献样式 (GB/T 7714-2015)

## 特性

- 支持本科、硕士、博士学位论文
- 支持中英文论文
- 支持盲审模式
- 遵循山东大学论文格式规范
- 基于 LaTeX3 现代化语法
- 完整的自动化测试

## 安装

### 方式一：从源码安装

```bash
# 解包
l3build unpack

# 安装到本地 TeX 目录
l3build install
```

### 方式二：直接使用

将 `src/` 目录下的 `.cls`、`.sty`、`.bst` 文件复制到你的项目目录。

## 快速开始

```latex
\documentclass[degree=bachelor]{sduthesis}

\title{基于深度学习的图像识别研究}
\author{张三}
\school{计算机科学与技术学院}
\major{计算机科学与技术}
\studentid{2021001234}
\supervisor{李教授}

\begin{document}

% 生成封面
\makecover

% 中文摘要
\begin{abstract}
本文研究了基于深度学习的图像识别方法...
\end{abstract}

% 英文摘要
\begin{englishabstract}
This paper studies image recognition methods based on deep learning...
\end{englishabstract}

% 目录
\tableofcontents

% 正文
\chapter{引言}
...

\end{document}
```

## 目录结构

```
sdutex/
├── src/                    # 源代码
│   ├── sduthesis.dtx       # 论文文档类
│   ├── sduthesis.ins       # 安装脚本
│   ├── sdutex.sty         # 工具宏包
│   └── sduthesis.bst       # 参考文献样式
├── test/                   # 测试用例
├── doc/                    # 开发者文档
├── Makefile
├── build.lua              # l3build 配置
└── README.md
```

## 构建命令

| 命令 | 说明 |
|------|------|
| `make` | 解包并生成文件 |
| `make test` | 运行测试 |
| `make install` | 安装到本地 |
| `make clean` | 清理生成的文件 |

使用 l3build：

```bash
l3build unpack    # 解包
l3build check     # 测试
l3build doc       # 生成文档
l3build ctan      # 打包 CTAN
```

## 相关项目

| 项目 | 说明 |
|------|------|
| [sduthesis](https://github.com/h1s97x/sduthesis) | 示例模板仓库 |
| [sdubeamer](https://github.com/h1s97x/sdubeamer) | Beamer 幻灯片模板 |

## 文档

- [开发者指南](doc/DEVELOP.md)
- [架构设计](doc/ARCHITECTURE.md)
- [项目概述](doc/README.md)

## 参与贡献

欢迎提交 Issue 和 Pull Request！

详情请参考 [DEVELOP.md](doc/DEVELOP.md)。

## 许可证

本项目采用 [LaTeX Project Public License (LPPL)](https://www.latex-project.org/lppl/) 许可证。

## 致谢

本项目参考了以下优秀的 LaTeX 模板：
- [SJTUThesis](https://github.com/sjtug/SJTUThesis)
- [THUThesis](https://github.com/tuna/thuthesis)
- [zjuthesis](https://github.com/TheNetAdmin/zjuthesis)

## 联系方式

- GitHub Issues: [h1s97x/sdutex](https://github.com/h1s97x/sdutex/issues)
