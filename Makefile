.PHONY: main clean FORCE

main: p.pdf p-notes.pdf

%.pdf: FORCE
	latexmk -pdflatex='lualatex -interaction nonstopmode' -shell-escape -pdf $(patsubst %.pdf,%.tex,$@)

clean:
	latexmk -pdf -C
