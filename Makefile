all: doc test readme fips

# document the package
doc:
	R -e 'devtools::document()'

# Generate the README
readme: README.Rmd
	R -e "rmarkdown::render('$<')"

# Make the data
fips: data-raw/fips/fips.R
	Rscript $<
	R -e 'devtools::document()'

install: doc
	R -e 'devtools::install()'
