/// @description When player follows instructions, remove instruction
// You can write your code in this editor

if keyboard_check_pressed(vk_right) or keyboard_check_pressed(vk_left) or keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down)
	{
		instance_destroy(self)
		instance_create_depth(room_width/2, y, -999, obj_instruction2)
	}