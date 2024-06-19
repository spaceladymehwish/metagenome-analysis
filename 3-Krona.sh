source activate krona

for case in PR PD;do
 for replicate in 1 2 3;do

  ktImportTaxonomy \
   -t 2 \
   -m 6 \
   -tax /NGS/miniconda3/envs/krona/bin/taxonomy/ \
   -o ./Kraken/${case}${replicate}.krona.html \
   ./Kraken/${case}${replicate}.bracken.output; 
 done
done
