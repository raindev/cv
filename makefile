CC=xelatex

cv.pdf: cv.tex cv/*.tex awesome-cv.cls fontawesome.sty
	$(CC) $<
