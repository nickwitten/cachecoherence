mkdir -p results;
for trace in $(ls experiments); do
    results=results/${trace}_results.txt
    for protocol in  MSI MESI MOSI MESIF MOESIF; do
        echo $protocol >> $results;
        ./dirsim -p $protocol -n $(ls experiments/$trace | wc -l) -t experiments/$trace >> $results;
        echo >> $results;
    done
done
