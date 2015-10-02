#include <Constants.au3>

HotKeySet("^!x", "MyExit")
local $aPos = MouseGetPos()
$xbase = $aPos[0]
$ybase = $aPos[1]

$x =$xbase
$y =$ybase
$col = PixelGetColor ( $x , $y )
if $col == 0xC86400 Then

EndIf

while 1 >0
$l = 30
$r = 30
$u = 40
$d = 40

while($col == PixelGetColor ( $x - $l , $y ))
   $l = $l + 2
   WEnd

while($col == PixelGetColor ( $x + $r , $y ))
   $r = $r + 2
WEnd

while($col == PixelGetColor ( $x , $y + $d ))
   $d = $d + 2
WEnd

while($col == PixelGetColor ( $x , $y - $u ))
   $u = $u + 2
   WEnd

   $x = (($x-$l) + ($x + $r))/2
    $y = (($y-$u) + ($y + $d))/2
MouseClick("left" , $x , $y, 1, 5)

   WEnd


Func MyExit()
   MsgBox($MB_SYSTEMMODAL, "AutoIt", "OK.  Bye!")
    Exit
EndFunc