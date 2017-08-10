default: lstEventB.pdf sample-lstEventB.pdf sample-lstEventB-colour.pdf

lstEventB.pdf: lstEventB.sty
	pdflatex lstEventB.dtx
	makeindex -s gglo.ist -o lstEventB.gls lstEventB.glo
	makeindex -s gind.ist -o lstEventB.ind lstEventB.idx
	pdflatex lstEventB.dtx

lstEventB.sty: lstEventB.ins lstEventB.dtx
	pdflatex lstEventB.ins

sample-lstEventB.pdf: sample-lstEventB.tex sample-main.tex lstEventB.sty
	pdflatex sample-lstEventB.tex
	pdflatex sample-lstEventB.tex

sample-lstEventB-colour.pdf: sample-lstEventB-colour.tex sample-main.tex lstEventB.sty
	pdflatex sample-lstEventB-colour.tex
	pdflatex sample-lstEventB-colour.tex

clean:
	rm -f *.aux lstEventB.glo lstEventB.gls lstEventB.idx lstEventB.ilg lstEventB.ind *.log lstEventB.toc

cleanall: clean
	rm -f lstEventB.pdf lstEventB.sty sample-lstEventB.pdf sample-lstEventB-colour.pdf

