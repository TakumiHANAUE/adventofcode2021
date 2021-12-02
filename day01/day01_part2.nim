# https://adventofcode.com/2021/day/1

import system
import strutils
import math

var inputFile: File = open("day01_input.txt", fmRead);

var count: int = 0
var threeMeasurement: seq[int]

# Sum of first 3 measurements
for i in 0..2:
    threeMeasurement.add(inputFile.readLine().parseInt())

# comparing  three-measurement windows
for line in inputFile.lines:
    var prevSum = threeMeasurement.sum()
    threeMeasurement.delete(0)
    threeMeasurement.add(line.parseInt())
    if prevSum < threeMeasurement.sum():
        inc(count)

inputFile.close()

echo "the number of times the sum of measurements in this sliding window increases: ", count


