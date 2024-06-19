source activate humann2

mkdir -p humann2

for case in PR PD;do
 for replicate in 1 2 3;do

humann2 \
  --bypass-prescreen \
  --bypass-nucleotide-index \
  --bypass-nucleotide-search \
  -i /NGS/MetagenomeSeq/Data/${case}${replicate}_1.fastq.gz \
  -o ./humann2 \
  --evalue 0.00001 \
  --search-mode uniref50 \
  --output-format tsv \
  --remove-stratified-output \
  --input-format fastq.gz \
  --memory-use minimum \
  --threads 20 \
  --remove-temp-output;
 done
done
