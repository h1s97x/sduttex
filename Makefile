# SDUTeX Makefile
# 山东大学 LaTeX 论文模板核心包构建脚本

# 默认目标：解包并显示帮助
.PHONY: all help

all: unpack

help:
	@echo "SDUTeX 构建脚本"
	@echo ""
	@echo "可用目标:"
	@echo "  unpack      解包 DTX 文件，生成 .cls 文件"
	@echo "  install     安装到本地 TeX 目录"
	@echo "  test        运行所有测试"
	@echo "  doc         生成文档"
	@echo "  clean       清理生成的文件"
	@echo "  ctan        打包 CTAN 发布文件"
	@echo "  tds         打包 TDS 格式文件"
	@echo "  check       运行 l3build 检查"
	@echo ""

# 解包 DTX 文件
unpack:
	@echo "解包中..."
	@mkdir -p build
	@cd build && luatex sduthesis.ins || echo "请安装 l3build: tlmgr install l3build"
	@mv build/*.cls build/*.sty build/*.def . 2>/dev/null || true
	@mv build/sduthesis.bst . 2>/dev/null || true
	@echo "解包完成"

# 安装到本地 TeX 目录
install:
	@echo "安装中..."
	-l3build install
	@echo "安装完成"

# 运行测试
test:
	@echo "运行测试..."
	@cd test && for f in test_*.tex; do \
		echo "测试: $$f"; \
		name=$${f%.tex}; \
		xelatex -interaction=nonstopmode -halt-on-error $$f > /dev/null 2>&1 && \
		echo "  ✓ $$f 通过" || echo "  ✗ $$f 失败"; \
		rm -f $$name.aux $$name.log $$name.out $$name.toc; \
	done
	@echo "测试完成"

# 生成文档
doc:
	@echo "生成文档中..."
	-l3build doc
	@echo "文档生成完成"

# 清理生成的文件
clean:
	@echo "清理中..."
	@rm -f *.cls *.sty *.def *.aux *.log *.out *.toc *.bbl *.blg *.xdv
	@rm -rf build tlpkg doc/*.pdf
	@cd test && rm -f *.aux *.log *.out *.toc *.bbl *.blg *.xdv
	@echo "清理完成"

# 打包 CTAN
ctan:
	@echo "打包 CTAN..."
	-l3build ctan
	@echo "CTAN 包已生成在 build/ 目录"

# 打包 TDS
tds:
	@echo "打包 TDS..."
	-l3build tds
	@echo "TDS 包已生成在 build/ 目录"

# 运行 l3build 检查
check:
	@echo "运行 l3build 检查..."
	-l3build check
	@echo "检查完成"

# 重新解包
rebuild: clean unpack

# 显示版本信息
version:
	@grep "ProvidesClass" src/sduthesis.dtx | head -1

# 创建发布包
release: clean unpack test doc ctan
	@echo "发布包已准备就绪"
	@ls -la build/*.zip build/*.tds.zip 2>/dev/null || echo "检查 build/ 目录"

# 帮助
.DEFAULT_GOAL := help
