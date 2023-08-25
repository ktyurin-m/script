#!/bin/bash
var1=$1
var2=$2
#
data_n() {
    cat -n data
}
main_n() {
    grep -n input main.tex 
}
count=$(wc -l data | cut -c1)
count=$((count + 1)) 


# if [ "$var1" == "-a" ]; then
#     sed -i "$count i $var2" data
# fi

enter() {
    while read line; do
        echo "\input{../pack/$line.tex}"
        if [ "$line" == "\tableofcontents" ]; then
            echo "\tableofcontents"
        fi

        if [ "$line" == "\newpage" ]; then
            echo "\newpage"
        fi

    done < data   
}
echo "\begin{document}" > test.tex 
echo "\input{../settings/settings.tex}" >> test.tex
enter >> test.tex
echo "\end{document}" >> test.tex

