all: template sample

template:
	cd template && xelatex main.tex && mv main.pdf template.pdf && cd ..

sample:
	cd sample && xelatex main.tex && mv main.pdf sample.pdf && cd ..

clean:
	find . -name "*.pdf" -type f -exec rm -rf {} \;

.PHONY: all template sample clean
