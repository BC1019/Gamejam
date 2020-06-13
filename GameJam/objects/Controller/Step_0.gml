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

//horizontal collision with tilemap
if (player[playerNumber].hspeed > 0) bbox = player[playerNumber].bbox_right; else bbox = player[playerNumber].bbox_left;
if tilemap_get_at_pixel(tilemap, bbox+player[playerNumber].hspeed, player[playerNumber].bbox_top) != 0 || (tilemap_get_at_pixel(tilemap, bbox+player[playerNumber].hspeed, player[playerNumber].bbox_bottom) != 0)
{
	if(player[playerNumber].hspeed > 0) player[playerNumber].x = player[playerNumber].x - (player[playerNumber].x mod tileSize) + (tileSize-1) - (player[playerNumber].bbox_right - player[playerNumber].x)
	else player[playerNumber].x = player[playerNumber].x - (player[playerNumber].x mod tileSize) - (player[playerNumber].bbox_left - player[playerNumber].x)
	player[playerNumber].hspeed = 0
}

//vertical collision with tilemap
if (player[playerNumber].vspeed > 0) bbox = player[playerNumber].bbox_bottom; else bbox = player[playerNumber].bbox_top;
if tilemap_get_at_pixel(tilemap, player[playerNumber].bbox_left, bbox+player[playerNumber].vspeed) != 0 || (tilemap_get_at_pixel(tilemap, player[playerNumber].bbox_right, bbox+player[playerNumber].vspeed) != 0)
{
	if(player[playerNumber].vspeed > 0) player[playerNumber].y = player[playerNumber].y - (player[playerNumber].y mod tileSize) + (tileSize-1) - (player[playerNumber].bbox_bottom - player[playerNumber].y)
	else player[playerNumber].y = player[playerNumber].y - (player[playerNumber].y mod tileSize) - (player[playerNumber].bbox_top - player[playerNumber].y)
	player[playerNumber].vspeed = 0
}

show_debug_message("H = " + string(player[playerNumber].hspeed) + " V = " + string(player[playerNumber].vspeed))

//Movement
if moveUp = true
{
	player[playerNumber].vspeed -= mySpeed
	//vspeed -= mySpeed
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


