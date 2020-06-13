//Inputs
moveUp = keyboard_check(ord("W"))
moveDown = keyboard_check(ord("S"))
moveLeft = keyboard_check(ord("A"))
moveRight = keyboard_check(ord("D"))

//Movement
if moveUp = true
{
	vspeed -= mySpeed
}

if moveDown = true
{
	vspeed += mySpeed
}

if moveLeft = true
{
	hspeed -= mySpeed
}

if moveRight = true
{
	hspeed += mySpeed
}

if !moveUp and !moveDown
{
	vspeed = 0
}

if !moveRight and !moveLeft
{
	hspeed = 0
}

//Collision with Player
