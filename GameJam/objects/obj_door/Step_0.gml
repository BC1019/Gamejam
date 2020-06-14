/// @description Insert description here
// You can write your code in this editor

if global.pressure = true
	{
		alarm[0] = room_speed
		image_alpha -= .05
		if image_alpha <=0.1
			{
				instance_destroy(self)
			}
	}