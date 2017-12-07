g++ -std=c++11 -o a pathselection.cpp
g++ -std=c++11 -o b bruteforce.cpp
g++ -std=c++11 -o redblack rbtree.cpp
/usr/bin/time -v ./redblack rb.csv < queries.txt > outc.txt
echo "Done with RB-Tree"
/usr/bin/time -v ./a wt.csv < queries.txt > outa.txt
echo "Done with HLD+Wavelet"
/usr/bin/time -v ./b bf.csv < queries.txt > outb.txt
echo "Done with Bruteforce"
diff outa.txt outb.txt
echo "A and B"
diff outa.txt outc.txt
echo "A and C"
# diff outa.txt outb.txt
