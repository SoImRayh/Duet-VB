loadmenu:
LoadImage(3,"play.png")
createsprite(3,3)
SetSpriteSize(3,400,170)

LoadImage(2,"bolinhas.png")
createsprite(10,2)
setspritephysicson(10,1)
SetSpriteShapeCircle(10,-100,0,22)
setspritesize(10,240,44)


createsprite(2,2)
setspritephysicson(2,1)
SetSpriteShapeCircle(2,100,0,22)
setspritesize(2,240,44)
setspriteanglerad(2,180)

LoadImage(4,"introbutton.png")
createsprite(4,4)
SetSpriteSize(4,250,50)

loadimage(9,"duet.png")
createsprite(9,9)
setspriteposition(9,600,45)
setspritesize(9,500,500)
return
endgame:
loadimage(8,"over.png")
createsprite(8,8)
SetSpritePosition(8,45,200)
setspritesize(8,653,500)

loadimage(7,"playagain.png")
createsprite(7,7)
setspriteposition(7,200,1200)
setspritesize(7,300,100)

setspriteposition(5,200,1090)
setspritesize(5,300,100)

setspriteposition(2,3000,3000)
while menu = 5
	if GetPointerPressed()
        PlaySound(2)
       endif
	menu=clicksprite(menu)
	sync()
endwhile
deleteimage(7)
deletesprite(7)
deleteimage(8)
deletesprite(8)
setspriteposition(5,3000,3000)
return
//---------------------------------------------------------------------------------------------------------------------------------------------------------------
menu:
playmusic(1)
setspriteposition(3,175,1050)
SetSpritePosition(2,250,700)
SetSpritePosition(4,250,950)
setspriteposition(9,125,45)
SetSpritePosition(10,250,700)

while menu=0
	if GetPointerPressed()
        PlaySound(2)
       endif
	rotation=rotation+0.01
	setspriteanglerad(2,rotation)
	setspriteanglerad(10,rotation)
	menu=clicksprite(menu)
	sync()
endwhile
setspriteposition(4,3000,3000)
SetSpritePosition(3,3000,3000)
setspriteposition(9,3000,3000)

return
//---------------------------------------------------------------------------------------------------------------------------------------------------------------
loadintro:
LoadImage(6,"intro.png")
createsprite(6,6)
SetSpriteSize(6,750,1336)
SetSpritePosition(6,3000,3000)
loadimage(5,"menu.png")
createsprite(5,5)
SetSpritePosition(5,3000,3000)
axisX as float

return
//---------------------------------------------------------------------------------------------------------------------------------------------------------------
intro:
SetSpriteDepth(2,5)
if getspritey(2) < 851
	andarY()
endif
SetSpritePosition(5,200,1150)
SetSpritePosition(6,0,0)
while menu=1
	if GetPointerPressed()
        PlaySound(2)
       endif
	menu=clicksprite(menu)
	joyplay(joy)
	sync()
endwhile
SetSpritePosition(6,3000,3000)
SetSpritePosition(5,3000,3000)
return
//---------------------------------------------------------------------------------------------------------------------------------------------------------------

function clicksprite(menu) 
	 if GetPointerReleased()
        if GetSpriteHitTest(4,GetPointerX(),GetPointerY())
            menu=1
        elseif GetSpriteHitTest(3,GetPointerX(),GetPointerY())
			menu=4
		elseif getspritehittest(5,getpointerx(),getpointerY())
			menu=0
		elseif GetSpriteHitTest(6,getpointerx(),getpointery())
			menu=0
		elseif getspritehittest(7,getpointerx(),getpointerY())
			menu=4
		endif
	endif
endfunction menu

function andarY()
	for i = 600 to 850
		i=i+4
		SetSpritePosition(2,260,i)
		setspriteposition(10,260,i)
		sync()
	next i
endfunction

function joyplay(joy)
	if GetJoystickX ()>0
		SetSpriteAngle(2,GetSpriteAngle(2)+joy)
		setspriteangle(10,getspriteangle(10)+joy)
	elseif GetJoystickX() < 0
		setspriteangle(2,getspriteangle(2)-joy)
		setspriteangle(10,getspriteangle(10)-joy)
	endif
endfunction

function rotate0()
for i= GetSpriteAngleRad(2) to 180
	i=i+2
	setspriteangle(2,i)
	setspriteangle(10,i)
	sync()
	next i
endfunction
