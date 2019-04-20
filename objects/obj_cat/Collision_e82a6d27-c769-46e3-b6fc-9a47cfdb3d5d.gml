if (!(sign(other.x - x) * other.image_xscale > 0 &&
sign(image_xscale * other.image_xscale) < 0 &&
abs(x - other.x) > 32))
{
	global.isDied = true;
}