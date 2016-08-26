#call pandoc, merge all markdown files with the yaml metadata, save to pdf
pandoc *.md metadata.yaml -s -o Tittes_diary.pdf
