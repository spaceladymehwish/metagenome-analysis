source activate kraken
for case in PR PD;do
 for replicate in 1 2 3;do
  bracken \
   -d /NGS/Databases/Kraken2DB/ \
   -i ./Kraken/${case}${replicate}.report \
   -o ./Kraken/${case}${replicate}.bracken.output \
   -l S \
   -r 150;
 done
done
