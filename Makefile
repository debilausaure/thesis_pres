BUILD_DIR=build
FIGURES_DIR=figures

FIGURES=$(wildcard $(FIGURES_DIR)/*.tex)


MAIN_SRC=edf_pres.tex
MAIN_PDF=build/edf_pres.pdf

$(MAIN_PDF) : $(MAIN_SRC) $(FIGURES)
	latexmk -interaction=nonstopmode -f -auxdir=$(BUILD_DIR) -outdir=$(BUILD_DIR) -xelatex -pdfxelatex="xelatex %O --shell-escape %S" -dvi- -ps- $(MAIN_SRC)

clean:
	rm -rf build

.PHONY: clean

