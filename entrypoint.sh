#!/bin/bash -l

branch="$1"
path="$2"

git checkout $branch

cd $path

bundle exec review-preproc -r --tabwidth=2 *.re
bundle exec review-pdfmaker config.yml

