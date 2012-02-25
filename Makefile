PROJ = thesis

SRC	= $(PROJ).tex
DEP	= *.tex

OUT = output

PDF	= $(OUT)/$(PROJ).pdf

LATEX = pdflatex -output-directory=$(OUT)

PDFVIEWER = open

$(PDF) : $(DEP)
	make tex

tex	:
	mkdir -p $(OUT)
	$(LATEX) $(SRC)

all :
	make tex
	make bib
	make tex
	make tex    # Run LaTeX again to make sure all references are correct

bib	:
	bibtex $(OUT)/$(PROJ)

show	: $(PDF)
	$(PDFVIEWER) "$(PDF)"

clean	:
	rm -rf $(OUT)

# For the most part, this is what I run. It just makes live so easy
go :
	make clean
	make all
	make show