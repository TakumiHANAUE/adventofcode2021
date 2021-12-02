# https://adventofcode.com/2021/day/1

import system
import strutils

var inputFile: File = open("day01_input.txt", fmRead);

var count: int = 0
var prev_measurement: int = high(int)
for line in inputFile.lines:
    var measurement: int = parseInt(line)
    if measurement > prev_measurement:
        inc(count)
    prev_measurement = measurement

inputFile.close()

echo "the number of times a depth measurement increases: ", count
