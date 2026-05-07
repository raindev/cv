.DEFAULT_GOAL := cv.pdf

CC=tectonic

Awesome-CV/awesome-cv.cls:
	git submodule update --init --recursive

cv.pdf: cv.tex cv/*.tex Awesome-CV/awesome-cv.cls
	$(CC) -Z search-path=Awesome-CV $<

.PHONY: clean
clean:
	rm -f cv.pdf
