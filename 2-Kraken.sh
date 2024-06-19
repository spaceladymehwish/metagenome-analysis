source activate kraken

mkdir -p Kraken

for case in PR PD;do
 for replicate in 1 2 3;do

 kraken2 \
  --db /NGS/Databases/Kraken2DB/ \
  --threads 20 \
  --paired \
  --output ./Kraken/${case}${replicate}.output \
  --report ./Kraken/${case}${replicate}.report \
  --use-names \
  --gzip-compressed \
  /NGS/MetagenomeSeq/Data/${case}${replicate}_1.fastq.gz \
  /NGS/MetagenomeSeq/Data/${case}${replicate}_2.fastq.gz;
 
 done
done
