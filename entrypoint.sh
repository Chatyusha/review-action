#!/bin/bash -l

path="$1"

cd $path

bundle exec review-preproc -r --tabwidth=2 *.re
bundle exec review-pdfmaker config.yml

