#!/bin/sh

echo "Clean up dangling files."
Rscript -e "bookdown::clean_book(clean = getOption('bookdown.clean_book', TRUE))"

echo "Build git book."
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"

echo "Build pdf."
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"

echo "Build epub."
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::epub_book')"

echo -n "Rendered with Bookdown "
Rscript -e "packageVersion('bookdown')"
