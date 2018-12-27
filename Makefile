PANDOC_MAJOR_VERSION := $(shell pandoc --version | head -n1 | sed -e 's/^\S*\s//;s/\..*${}//;')
ifeq ($(PANDOC_MAJOR_VERSION), 1)
	PANDOC_LATEX := --latex-engine=xelatex --smart
else
	PANDOC_LATEX := --pdf-engine=xelatex -smart
endif

.PHONY: all article
all: article
article: article.pdf

.SUFFIXES: .md .pdf

.md.pdf:
	pandoc $< -f markdown \
	  $(PANDOC_LATEX) \
	  --self-contained \
	  -V mainfont=Noto\ Serif\ CJK\ JP \
	  -V CJKmainfont=Noto\ Serif\ CJK\ JP \
	  -V documentclass=scrartcl \
	  -V classoption=8pt \
	  -V classoption=a5paper \
	  -V classoption=onecolumn \
	  -V geometry:margin=15mm \
	  -V urlcolor=blue \
	  -o $@

article.pdf: Makefile
