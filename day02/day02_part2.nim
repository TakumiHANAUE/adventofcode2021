import system
import strscans

type
    Position = tuple[hpos, dpos, aim: int]
    # hpos : horizontal position
    # dpos : depth

proc forward(value: int, pos: var Position): void =
    inc(pos.hpos,value)
    inc(pos.dpos, pos.aim * value)

proc down(value: int, pos: var Position): void =
    inc(pos.aim, value)

proc up(value: int, pos: var Position): void =
    dec(pos.aim, value)

#####

var pos: Position = (hpos: 0, dpos: 0, aim: 0)
var inputFile: File = open("day02_input.txt", fmRead);

var direction: string
var value: int
for line in inputFile.lines:
    if scanf(line, "$w$s$i", direction, value):
        case direction
        of "forward":
            forward(value, pos)
        of "down":
            down(value, pos)
        of "up":
            up(value, pos)
        else:
            echo "Unknown command : ", line

echo "horizontal position : ", pos.hpos
echo "depth : ", pos.dpos
echo "multiple : ", (pos.hpos * pos.dpos)

inputFile.close()