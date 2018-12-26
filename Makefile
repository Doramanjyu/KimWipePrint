PANDOC_LATEX=--latex-engine=xelatex --smart
#PANDOC_LATEX=--pdf-engine=xelatex -smart

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
