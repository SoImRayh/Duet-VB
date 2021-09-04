function atscore(score)
	total=score
	for i = 20 to 1000
		if  getspritey(i)  = 1366
			score=total+1
			
			endif
		next i
	endfunction score
function posiction()
	for i = 600 to 950
		i=i+4
		SetSpritePosition(2,250,i)
		SetSpritePosition(10,250,i)
		sync()
	next i
endfunction
function descer(vel)
	posi as float
	for i = 20 to 54
		posi=getspritey(i)+ vel
		SetSpritePosition(i,getspritex(i),posi)
		next i
endfunction 
function colision()
	&lose=0
	for i = 20 to 1000
		if GetspriteCollision(i,2) = 1
			&lose=2
		elseif GetSpriteCollision(i,10) = 1
			&lose=2
		endif
		
	next i
endfunction lose
function mover_direita()
	for i = 39 to 40
		if  getspritey(i) > 300
				SetSpritePosition(i,getspritex(i)+2.5,getspritey(i))
				if getspritex(i) > 750
					setspriteposition(i,0,getspritey(i))
				endif
		endif
	next i
endfunction
function mover_esquerda()
	for i = 40 to 40	
		if getspritey(i) > 200
				SetSpritePosition(i,getspritex(i)-4,getspritey(i))
				if getspritex(i) < 0
					setspriteposition(i,750,getspritey(i))
				endif
		endif
	next i
endfunction
function createsprites()
	
	CreateSprite(58,20)
	setspritesize(58,750,1)
	SetSpritePosition(58,0,1366)
	
	createsprite(20,20)
	SetSpritePosition(20,450,500)
	SetSpriteSize(20,200,30)
	setspritephysicson(20,1)
	
	createsprite(21,20)
	SetSpritePosition(21,100,300)
	SetSpriteSize(21,200,30)
	setspritephysicson(21,1)
	
	createsprite(33,20) 													// centro
	setspritesize(33,70,50)
	SetSpritePosition(33,225,-100)
	setspritephysicson(33,1)
	
	createsprite(22,20)
	SetSpritePosition(22,400,100)
	SetSpriteSize(22,200,30)
	setspritephysicson(22,1)
	
	createsprite(23,20)
	setspriteposition(23,325,-50550)
	setspritesize(23,100,30)
	setspritephysicson(23,1)

	createsprite(24,20) 													// direita
	setspritesize(24,200,30)
	SetSpritePosition(24,375,-500)
	setspritephysicson(24,1)
	
	createsprite(25,20) 													// esquerda 
	setspritesize(25,200,30)
	SetSpritePosition(25,100,-270)
	setspritephysicson(25,1)
	
	createsprite(26,20) 													// centro
	setspritesize(26,70,50)
	SetSpritePosition(26,325,-700)
	setspritephysicson(26,1)
	
	createsprite(27,20) 													// direita
	setspritesize(27,200,30)
	SetSpritePosition(27,375,-900)
	setspritephysicson(27,1)
	
	createsprite(28,20) 													// direita
	setspritesize(28,200,30)
	SetSpritePosition(28,375,-1144)
	setspritephysicson(28,1)
	
	createsprite(29,20) 													// direita
	setspritesize(29,200,30)
	SetSpritePosition(29,375,-1388)
	setspritephysicson(29,1)
	
	createsprite(30,20) 													// direita
	setspritesize(30,200,30)
	SetSpritePosition(30,375,-1622)
	setspritephysicson(30,1)
	
		createsprite(31,20) 													// esquerda 
	setspritesize(31,200,30)
	SetSpritePosition(31,100,-1772)
	setspritephysicson(31,1)
	
		createsprite(32,20) 													// direita
	setspritesize(32,200,30)
	SetSpritePosition(32,375,-1955)
	setspritephysicson(32,1)
	
			createsprite(34,20) 													// esquerda 
	setspritesize(34,200,30)
	SetSpritePosition(34,100,-2149)
	setspritephysicson(34,1)
	
		createsprite(35,20) 													// direita
	setspritesize(35,200,30)
	SetSpritePosition(35,375,-2400)
	setspritephysicson(35,1)
	
		createsprite(36,20) 													// centro
	setspritesize(36,70,50)
	SetSpritePosition(36,325,-2600)
	setspritephysicson(36,1)
	
	/*createsprite(37,20)														//girando
	SetSpriteSize(37,30,250)
	SetSpritePosition(37,325,-3000)
	setspritephysicson(37,1)*/
	
			createsprite(37,20) 													// direita
	setspritesize(37,200,30)
	SetSpritePosition(37,375,-2400)
	setspritephysicson(37,1)
	
	/*createsprite(38,20)														//girando
	SetSpriteSize(38,30,250)
	SetSpritePosition(38,300,-3600)
	setspritephysicson(38,1)*/
	
			createsprite(38,20) 													// direita
	setspritesize(38,200,30)
	SetSpritePosition(38,375,-2400)
	setspritephysicson(38,1)
	
	
	createsprite(39,20) 													// andando direita
	setspritesize(39,200,30)
	SetSpritePosition(39,0,-2800)
	setspritephysicson(39,1)
	
	createsprite(40,20) 													// andando direita
	setspritesize(40,200,30)
	SetSpritePosition(40,750,-3050)
	setspritephysicson(40,1)
	
	createsprite(41,20) 													// andando direita
	setspritesize(41,200,30)
	SetSpritePosition(41,750,-3300)
	setspritephysicson(41,1)
	
	createsprite(42,20) 													// andando direita
	setspritesize(42,200,30)
	SetSpritePosition(42,750,-3550)
	setspritephysicson(42,1)
	
	createsprite(43,20) 													// centro
	setspritesize(43,70,50)
	SetSpritePosition(43,325,-3700)
	setspritephysicson(43,1)
	
		createsprite(44,20) 													// direita
	setspritesize(44,200,30)
	SetSpritePosition(44,375,-3900)
	setspritephysicson(44,1)
	
	createsprite(45,20) 													// esquerda 
	setspritesize(45,200,30)
	SetSpritePosition(45,100,-4100)
	setspritephysicson(45,1)
	
	createsprite(46,20) 													// direita
	setspritesize(46,200,30)
	SetSpritePosition(46,375,-4300)
	setspritephysicson(46,1)
	
	createsprite(47,20) 													// esquerda 
	setspritesize(47,200,30)
	SetSpritePosition(47,100,-4500)
	setspritephysicson(47,1)
	
		createsprite(48,20) 													// esquerda 
	setspritesize(48,200,30)
	SetSpritePosition(48,100,-4700)
	setspritephysicson(48,1)
	
		createsprite(49,20) 													// esquerda 
	setspritesize(49,200,30)
	SetSpritePosition(49,100,-4900)
	setspritephysicson(49,1)
	
		createsprite(50,20) 													// esquerda 
	setspritesize(50,200,30)
	SetSpritePosition(50,100,-5100)
	setspritephysicson(50,1)
	
	createsprite(51,20)														//girando
	SetSpriteSize(51,30,250)
	SetSpritePosition(51,500,-5400)
	setspritephysicson(51,1)
	
	createsprite(52,20)														//girando
	SetSpriteSize(52,30,250)
	SetSpritePosition(52,150,-5700)
	setspritephysicson(52,1)
	
	createsprite(53,20)														//girando
	SetSpriteSize(53,30,250)
	SetSpritePosition(53,500,-5900)
	setspritephysicson(53,1)
	
	createsprite(54,20)														//girando
	SetSpriteSize(54,30,250)
	SetSpritePosition(54,150,-6200)
	setspritephysicson(54,1)
	
			createsprite(55,20) 													// esquerda 
	setspritesize(55,200,30)
	SetSpritePosition(55,100,-6400)
	setspritephysicson(55,1)
	
			createsprite(56,20) 													// esquerda 
	setspritesize(56,200,30)
	SetSpritePosition(56,100,-6600)
	setspritephysicson(56,1)
	
	createsprite(57,20) 													// direita
	setspritesize(57,200,30)
	SetSpritePosition(57,375,-4300)
	setspritephysicson(57,1)
	
			createsprite(59,20) 													// esquerda 
	setspritesize(59,200,30)
	SetSpritePosition(59,100,-6800)
	setspritephysicson(59,1)
	
	
	endfunction
function obstaculos_aleatorios()
	obs as integer
	for i =60 to 1000
		obs = random(1,3)
		if  obs = 1
			createsprite(i,20) 													// esquerda 
			setspritesize(i,200,30)
			SetSpritePosition(i,100,getspritey(i-1)-200)
			setspritephysicson(i,1)
		elseif obs = 2
			createsprite(i,20) 													// direita
			setspritesize(i,200,30)
			SetSpritePosition(i,375,getspritey(i-1)-200)
			setspritephysicson(i,1)
		elseif  obs = 3
			createsprite(i,20) 													// centro
			setspritesize(i,70,50)
			SetSpritePosition(i,random(275,375),getspritey(i-1)-200)
			setspritephysicson(i,1)
		endif
	next i
endfunction
function obistaculo_aleatorios_decer(vel)
	for i = 60 to 1000
		setspritey(i,getspritey(i)+vel)
	next i
endfunction
function create_stars()
	for i=1001 to 1099
		createsprite(i,20)
		setspritesize(i,2,2)
		setspriteposition(i,random(0,750),random(0,1366))
		next i
	endfunction
function move_stars()
		for i =1001 to 1099
				setspritey(i,getspritey(i)+1)
				if getspritey(i)>1366
					setspritey(i,0)
				endif
			next i
		endfunction
phase1:
	PlayMusic(1)
	playsound(3)
	posiction()
	rotate0()
	createsprites()
	obstaculos_aleatorios()
	create_stars()
	 
	rotation=1
	life=0
	vel=4
	score=0
	while life = 0 
		if GetPointerPressed()
        PlaySound(2)
       endif
		//rotation
		rotation =rotation + 4
		move_stars()
		if  getspritey(20) < 0
			vel=10
			endif
		if getspritey(28) > 30
			setspriteangle(38,&rotation*-1-180)
			endif
		if getspritey(37)  > 100
					setspriteangle(37,&rotation)
			endif
		if getspritey(28) > 30
			setspriteangle(51,&rotation-2*-1)
			endif
		if getspritey(52) > 30
			setspriteangle(52,&rotation)
			endif
		if getspritey(53) > 30
			setspriteangle(53,&rotation-2*-1)
			endif
		if getspritey(54) > 30
			setspriteangle(54,&rotation)
			endif
		mover_direita()

		obistaculo_aleatorios_decer(vel)
		joyplay(vel)
		descer(vel)
		life=colision()
		score=atscore(score)
		if score = 1850
			vel=vel*1.2
		endif
		if score = 3300
			vel=vel*1.2
		endif
		if score = 4800
			vel=vel*1.2
		endif
		if score = 6300
			vel=vel*1.2
		endif
		if score = 7800
			vel=vel*1.2
		endif
		if score = 9300
			vel=vel*1.2
		endif
		if score = 10800
			vel=vel*1.2
		endif

		sync()
	endwhile
	if life = 2
		menu =5
	endif
	for i = 20 to 1199
		deletesprite(i)
	next i
	StopMusic()
	PlaySound(4)
return
//---------------------------------------------------------------------------------------------------------------------------------------------------------------
