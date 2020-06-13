cycle = keyboard_check_pressed(vk_space)

player[0] = obj_plr_left
player[1] = obj_plr_right

if cycle
{
	show_debug_message(string(playerNumber))
	if playerNumber >= 1{
		playerNumber = 0
	} else {
		playerNumber += 1
	}
}

//Inputs
moveUp = keyboard_check(vk_up)
moveDown = keyboard_check(vk_down)
moveLeft = keyboard_check(vk_left)
moveRight = keyboard_check(vk_right)

//Movement
if moveUp = true
{
	player[playerNumber].vspeed -= mySpeed
	//vspeed -= mySpeed
	if playerNumber = 0
		{
			sprite_index = BlueWalk
			image_speed = 1
		}
	if playerNumber = 1
		{
			sprite_index = GreenWalk
			image_speed = 1
		}
}

if moveDown = true
{
	player[playerNumber].vspeed += mySpeed
}

if moveLeft = true
{
	player[playerNumber].hspeed -= mySpeed
}

if moveRight = true
{
	player[playerNumber].hspeed += mySpeed
}

if !moveUp and !moveDown
{
	player[playerNumber].vspeed = 0
}

if !moveRight and !moveLeft
{
	player[playerNumber].hspeed = 0
}