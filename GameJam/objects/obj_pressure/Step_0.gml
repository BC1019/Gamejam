/// @description Removes pressure plate whenplayer steps on it
// You can write your code in this editor

if global.pressure = true
	{
		image_alpha -= .05
		if image_alpha <= 0.1
			{
				instance_destroy(self)
			}
	}