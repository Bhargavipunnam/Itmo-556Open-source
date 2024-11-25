#!/ussr/bin/bash

awk '{if $9 == 404) print $1}' u_ex150721.log u_ex151002.log | sort | uniq -c | sort -nr | head -1

