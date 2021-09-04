
// Project: duet 
// Created: 2021-07-22

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "MyDuet" )
SetWindowSize( 750, 1334, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 750, 1334 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 60, 0 ) // 60fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts

//SetPhysicsDebugOn()

#include "menu.agc"
#include "game.agc"
#include "phases.agc"

menu as integer
menu=0

LoadSound(1,"crash.wav")
loadsound(2,"click.wav")
loadsound(4,"lose.wav")
loadsound(3,"play.wav")
SetSoundInstanceVolume( 1, 1)
playsound(1)


LoadMusic(1,"duet01.mp3")


loadimage(1,"background.png")
createsprite(1,1)
SetSpritePosition(1,0,0)


rotation as float
rotation=0.1
life as integer
fase as integer
joy as integer

AddVirtualJoystick(1,3000,3000,100)
CreateImageColor(20,255,255,255,255)
gosub loadmenu
gosub loadintro

joy=4
do
	if GetPointerPressed()
        PlaySound(2)
       endif
	if menu=0
		gosub menu
	elseif menu=1
		gosub intro
	elseif menu = 4
		
			gosub phase1
	elseif menu = 5
		gosub endgame
	endif

    Sync()
loop


