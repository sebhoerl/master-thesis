rm -rf build
mkdir build
cd build
cp -R ../figures .
cp ../references.bib .
cp -r ../chapters .
cp ../*.tex .
cp ../cover.pdf .
cp ../title.pdf .
cp ../imprint.pdf .
cp ../abstract.pdf .
pdflatex thesis.tex
bibtex thesis
pdflatex thesis.tex
pdflatex thesis.tex
cp thesis.pdf ..
