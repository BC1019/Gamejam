/// @description Movement

if global.playerNumber = 0
	{
		if keyboard_check_direct(vk_up){
			sprite_index = BlueWalkup
		} else if keyboard_check_direct(vk_down){
			sprite_index = BlueWalkdown
		} else if keyboard_check_direct(vk_left){
			sprite_index = BlueWalkright
			image_xscale = -1
		} else if keyboard_check_direct(vk_right){
			sprite_index = BlueWalkright
			image_xscale = 1
		} else {
			if keyboard_lastkey = vk_right or keyboard_lastkey = vk_left
				{
					sprite_index = BlueIdle
				}
			if keyboard_lastkey = vk_up or keyboard_lastkey = vk_down
				{
					image_speed = 0
				}
				} 
	}