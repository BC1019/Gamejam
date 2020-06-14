/// @description When player follows instructions, remove instruction
// You can write your code in this editor

if keyboard_check_pressed(vk_space)
	{
		instance_destroy(self)
		instance_create_depth(432, y, -999, obj_instruction3)
	}