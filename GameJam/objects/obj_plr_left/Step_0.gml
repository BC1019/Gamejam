//Inputs
moveUp = keyboard_check(ord("W"))
moveDown = keyboard_check(ord("S"))
moveLeft = keyboard_check_direct(ord("A"))
moveRight = keyboard_check_direct(ord("D"))

//Movement
if moveUp = true
{
	vspeed = -mySpeed
}

if moveDown
{
	vspeed = mySpeed
}

if moveLeft
{
	hspeed = -mySpeed
}

if moveRight
{
	hspeed = mySpeed
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
