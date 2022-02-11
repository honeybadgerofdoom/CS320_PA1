# CS320 PA1 Clean Slate

### What is this?
This is a clean slate repo for PA1. It includes a starter code, a run.sh file, and some example input/output. The intention here is that you can clone this repo and use the run.sh script to automate testing so that you don't need to visually compare your output to the expected output.

### How to use my run.sh script
This script takes 2 arguments
    - Any one of `[5, 10, 15, 20, 25]` to specify the input file. `5` means `elev5v5.txt`.
    - The algorithm you want to use: `naive`, `early`, or `fast`
Example: `./run.sh 5 naive` will run your PA1.py file with the 5x5 input and naive algorithm. It will then compare your output to the expected output and tell you if it is correct or not.
Example: `./run.sh 25 fast` will run your PA1.py file with the 25x25 input and fast algorithm, and tell you if your output matches the expected output.

### Created by Matt Young on 2/10/22
