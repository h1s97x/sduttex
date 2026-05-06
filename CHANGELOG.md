# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.1.0] - 2024-01-01

### Added

- Initial release
- `sduthesis.cls` - Main thesis document class
  - Bachelor thesis support
  - Chinese and English language support
  - Basic cover page generation
  - Table of contents
  - Abstract environments (Chinese and English)
- `sdutex.sty` - Utility package
  - Math tools
  - Float tools
  - Format tools
- `sduthesis.bst` - Bibliography style (GB/T 7714-2015)
- `build.lua` - l3build configuration
- Test suite
  - `test_cover.tex`
  - `test_abstract.tex`
  - `test_math.tex`
  - `test_float.tex`
  - `test_bib.tex`
- Documentation
  - `doc/README.md`
  - `doc/DEVELOP.md`
  - `doc/ARCHITECTURE.md`
- Makefile for build automation

### Planned for v0.2.0

- Master thesis support
- Doctor thesis support
- Blind review mode
- More test coverage

### Planned for v1.0.0

- CTAN release
- Complete documentation
- Full compatibility with SDU thesis guidelines
