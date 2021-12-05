import system
import strscans

var hpos: int = 0 # horizontal
var dpos: int = 0 # depth

var inputFile: File = open("day02_input.txt", fmRead);

var direction: string
var value: int
for line in inputFile.lines:
    if scanf(line, "$w$s$i", direction, value):
        case direction
        of "forward":
            inc(hpos, value)
        of "down":
            inc(dpos, value)
        of "up":
            dec(dpos, value)
        else:
            echo "Unknown command : ", line

echo "horizontal position : ", hpos
echo "depth : ", dpos
echo "multiple : ", (hpos * dpos)

inputFile.close()