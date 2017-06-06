default: lstEventB.pdf sample-lstEventB.pdf

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

clean:
	rm -f *.aux lstEventB.glo lstEventB.gls lstEventB.idx lstEventB.ilg lstEventB.ind *.log lstEventB.toc

cleanall: clean
	rm -f lstEventB.pdf lstEventB.sty sample-lstEventB.pdf

