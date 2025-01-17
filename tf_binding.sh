#excercise 1, find NFKB binding sites only
grep 'NFKB' tf2.bed > tf.nfkb.bed

#exercise 2, extract only genes from gtf file
awk -F "\t" '$3=="transcript" { print; }' gencode.v19.annotation.chr22.gtf > gencode.v19.annotation.chr22.transcript.gtf

#exercise 3, get 200bp (promoter) up from each gene
module load biotools
bedtools flank -s -l 2000 -r 0 -i gencode.v19.annotation.chr22.transcript.gtf -g hg19.genome > gencode.v19.annotation.chr22.transcript.promoter.gtf
