CC=xelatex

cv.pdf: cv.tex cv/*.tex
	$(CC) $<
