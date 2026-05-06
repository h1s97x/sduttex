% test_index.md - 测试索引
% 用于记录所有测试用例及其用途

# SDUTeX 测试用例索引

## 基础测试

| 文件 | 测试内容 | 状态 |
|------|----------|------|
| `test_cover.tex` | 封面生成 | ✅ |
| `test_abstract.tex` | 中英文摘要 | ✅ |
| `test_math.tex` | 数学公式 | ✅ |
| `test_float.tex` | 图表浮动体 | ✅ |
| `test_bib.tex` | 参考文献 | ✅ |
| `test_full.tex` | 完整模板 | ✅ |

## 扩展测试

| 文件 | 测试内容 | 状态 |
|------|----------|------|
| `test_appendix.tex` | 附录环境 | ✅ |
| `test_acknowledgement.tex` | 致谢环境 | ✅ |
| `test_graduate.tex` | 研究生封面 | ✅ |
| `test_blind.tex` | 盲审模式 | ✅ |

## 运行测试

```bash
# 解包 DTX
make unpack

# 运行所有测试
make test

# 运行单个测试
xelatex test_cover.tex
```
