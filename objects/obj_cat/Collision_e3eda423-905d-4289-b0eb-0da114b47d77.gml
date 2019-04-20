/// @description Insert description here
// You can write your code in this editor
if (!(sign(x - other.x) * other.image_xscale < 0 &&
sign(image_xscale * other.image_xscale) > 0 &&
abs(x - other.x) > 32))
{
	instance_destroy()
}