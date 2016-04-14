rm -rf build
mkdir build
cd build
cp -R ../figures .
cp ../references.bib .
cp -r ../chapters .
cp ../*.tex .
pdflatex thesis.tex
bibtex thesis
pdflatex thesis.tex
pdflatex thesis.tex
cp thesis.pdf ..
