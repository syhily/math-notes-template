all: tutorial

tutorial:
	echo "Build the tutorial PDF"
	cd tutorial && xelatex main.tex && xelatex main.tex && mv main.pdf tutorial.pdf && cd ..

clean:
	echo "Remove the build cache"
	find . -name "*.aux" -type f -exec rm -rf {} \;
	find . -name "*.log" -type f -exec rm -rf {} \;
	find . -name "*.out" -type f -exec rm -rf {} \;
	find . -name "*.pdf" -type f ! -name "cover_package_1_ci.pdf" ! -name "cover_package_1_texromancers.pdf" -exec rm -rf {} \;
	find . -name "*.synctex.gz" -type f -exec rm -rf {} \;
	find . -name "*.toc" -type f -exec rm -rf {} \;

.PHONY: all tutorial clean
