#include <Constants.au3>

HotKeySet("^!x", "MyExit")

local $aPos = MouseGetPos()
$xbase = $aPos[0]
$ybase = $aPos[1]
MouseClick("left" , $xbase + 329 , $ybase + 67)

while 1 >0
MouseClick("left" , $xbase + 183 , $ybase + 281)
local $counter = 0

while $counter < 10
sleep(30050)

$j = 0
while $j<5

$k = 0
while $k<5

MouseClick("left" , ($xbase + ($k * 45) - ($j * 28))  , ($ybase + ($j * 25)), 1, 2)


$k = $k +1
WEnd


$j = $j +1
WEnd

$counter = $counter + 1
WEnd
MouseClick("left" , $xbase + 329 , $ybase + 67)
WEnd



Func MyExit()
   MsgBox($MB_SYSTEMMODAL, "AutoIt", "OK.  Bye!")
    Exit
EndFunc
