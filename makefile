.DEFAULT_GOAL := resume.pdf

CC=tectonic

Awesome-CV/awesome-cv.cls:
	git submodule update --init --recursive

resume.pdf: resume.tex cv/*.tex Awesome-CV/awesome-cv.cls
	$(CC) $<

.PHONY: clean
clean:
	rm -f resume.pdf
