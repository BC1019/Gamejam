//Inputs
moveUp = keyboard_check(vk_up)
moveDown = keyboard_check(vk_down)
moveLeft = keyboard_check(vk_left)
moveRight = keyboard_check(vk_right)

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