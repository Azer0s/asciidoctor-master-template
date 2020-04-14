all:
	@$(MAKE) clear
	@$(MAKE) book

book:
	@echo
	@echo "\033[4m\033[1mBuilding book\033[0m"
	@echo
	@mkdir build
	@asciidoctor-pdf -r asciidoctor-diagram -r asciidoctor-diagram -a mathematical-format=svg src/main/asciidoc/book.adoc
	@pdflatex -halt-on-error -output-directory build TitlePage.tex
	@rm src/main/asciidoc/stem* || true
	@rm src/main/asciidoc/frienddia* || true
	@mv src/main/asciidoc/book.pdf build/book.pdf
	@pdftk build/book.pdf cat 2-end output build/book1.pdf
	@rm build/book.pdf
	@pdftk build/TitlePage.pdf build/book1.pdf cat output build/book.pdf
	@rm build/book1.pdf
	@rm build/TitlePage.*
	@echo
	@echo "\033[4m\033[1mDone!\033[0m"
	@echo

clear:
	@echo
	@echo "\033[4m\033[1mClearing output folder\033[0m"
	@echo
	@rm -rf build/ || true
