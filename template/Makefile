all: build

build:
	echo "Build the notebook"
	# We need to build twice for making the cover being correctly displayed.
	xelatex main.tex && xelatex main.tex

clean:
	echo "Remove the build cache"
	find . -name "*.aux" -type f -exec rm -rf {} \;
	find . -name "*.log" -type f -exec rm -rf {} \;
	find . -name "*.out" -type f -exec rm -rf {} \;
	find . -name "*.pdf" -type f ! -name "cover_package_ci.pdf" -exec rm -rf {} \;
	find . -name "*.synctex.gz" -type f -exec rm -rf {} \;
	find . -name "*.toc" -type f -exec rm -rf {} \;

.PHONY: all clean
