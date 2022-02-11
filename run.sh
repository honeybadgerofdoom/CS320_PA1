#! /bin/bash

if [ "$#" != 2 ]; then
    echo "2 Program Arguments are required/allowed"
else 
    my_output_file="compare_output.txt"
    elevation=$1
    if [[ $elevation == 5 || $elevation == 10 || $elevation == 15 || $elevation == 20 || $elevation == 25 ]]; then
        algorith=$2
        rm ${my_output_file}
        touch ${my_output_file}
        python3 PA1.py input_files/elev${elevation}x${elevation}.txt 1 45 ${algorith} > ${my_output_file}
        cat ${my_output_file}
        expected_output_file="expected_output_files/${elevation}x${elevation}output.txt"
        head -n -3 $my_output_file > "my_output_without_last_3.txt"
        head -n -3 $expected_output_file > "expected_output_without_last_3.txt"
        if cmp -s "my_output_without_last_3.txt" "expected_output_without_last_3.txt"; then
            echo "Your output is -CORRECT-"
        else
            echo "Your output is *INCORRECT*"
        fi
    else
        echo "Bad Program Arguments. Only one of [5, 10, 15, 20, 25] is allowed."
    fi
fi
