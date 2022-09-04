#!/bin/bash -l

path="$1"
outdir="$2"
#arttypes
# "pdf,epub,text,web,idgxml"
arttypes="$3"

cd $path

if [ ! -d "$outdir" ];then
  mkdir "$outdir"
fi

bookname=$(grep "^bookname: " config.yml | sed 's/^bookname: //')
bundle exec review-preproc -r --tabwidth=2 *.re

IFS=","
for i in $arttypes;do
  bundle exec review-"$i"maker config.yml
done

for i in $arttypes;do
  case $i in
    "pdf" )
      mv "$bookname".pdf "$outdir/" ;;
    "epub" )
      mv "$bookname".epub "$outdir/" ;;
    "text" )
      mv "$bookname-text/" "$outdir/" ;;
    "web" )
      mv "webroot/" "$outdir/";;
    "idgxml" )
      mv "$bookname-idgxml/" "$outdir/" ;;
    * )
      "NO SUPPORTED FILETYPE"
      exit 1;
  esac
done
