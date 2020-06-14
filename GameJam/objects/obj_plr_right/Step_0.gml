if global.playerNumber = 1
	{
		if keyboard_check_direct(vk_up){
			sprite_index = GreenWalkup
		} else if keyboard_check_direct(vk_down){
			sprite_index = GreenWalkdown
		} else if keyboard_check_direct(vk_left){
			sprite_index = GreenWalkright
			image_xscale = -1
		} else if keyboard_check_direct(vk_right){
			sprite_index = GreenWalkright
			image_xscale = 1
		} else {
			if keyboard_lastkey = vk_right or keyboard_lastkey = vk_left
				{
					sprite_index = GreenIdle
				}
			if keyboard_lastkey = vk_up or keyboard_lastkey = vk_down
				{
					image_speed = 0
				}
				} 
	}