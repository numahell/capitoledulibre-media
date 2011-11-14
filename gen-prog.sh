#!/bin/sh
pdf90 --suffix 'rotated' prog-contents.pdf
pdfjoin --outfile prog-a4.pdf prog-cover.pdf prog-contents-rotated.pdf prog-final.pdf
pdfjam --a4paper --landscape --outfile prog-booklet.pdf --nup 2x1 prog-a4.pdf '8,1,2,7,6,3,4,5'
rm -f prog-contents-rotated.pdf
