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
#	Rscript -e 'rpkg/data-raw/fips/fips.R'
#	R -e 'devtools::document()'
