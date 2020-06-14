if keyboard_check_direct(vk_up){
	sprite_index = GreenWalkright
} else if keyboard_check_direct(vk_down){
	sprite_index = GreenWalkright
} else if keyboard_check_direct(vk_left){
	sprite_index = GreenWalkright
	image_xscale = -1
} else if keyboard_check_direct(vk_right){
	sprite_index = GreenWalkright
	image_xscale = 1
} else {
	sprite_index = GreenIdle
} 