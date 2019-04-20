/// @description Insert description here
// You can write your code in this editor
show_debug_message(x - other.x)
show_debug_message(image_xscale)
show_debug_message(other.image_xscale)
if (sign(x - other.x) * image_xscale < 0 &&
sign(image_xscale * other.image_xscale) > 0 &&
abs(x - other.x) > 64)
{
	instance_destroy()
}
else
{
	
}