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

if $col == PixelGetColor ( $x , $y ) Then
MouseClick("left" , $x , $y, 1, 2)


ElseIf $col == PixelGetColor ( $x+50 , $y ) Then
MouseClick("left" , $x+50 , $y, 1, 2)
$x = $x +100

ElseIf $col == PixelGetColor ( $x , $y+50 )Then
MouseClick("left" , $x , $y+50, 1, 2)
$y = $y +100

ElseIf $col == PixelGetColor ( $x-50 , $y )Then
MouseClick("left" , $x-50 , $y, 1, 2)
$x = $x -100

ElseIf $col == PixelGetColor ( $x , $y-50 )Then
MouseClick("left" , $x , $y-50, 1, 2)
$y = $y -100
EndIf




   WEnd


Func MyExit()
   MsgBox($MB_SYSTEMMODAL, "AutoIt", "OK.  Bye!")
    Exit
EndFunc