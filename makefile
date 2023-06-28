all: bib glossaries
	xelatex --shell-escape ./main.tex

glossaries:
	makeglossaries main

bib:
	bibtex main

view:
	xdg-open ./main.pdf

clean:
	git ls-files -ci --exclude-from=.gitignore | xargs -0 git rm --cached
