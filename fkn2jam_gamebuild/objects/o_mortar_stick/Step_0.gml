var ang
if use_image_angle {
	ang = center.image_angle
}

var final_ang = (ang + offset_angle) mod 360

x = center.x + 16 + lengthdir_x(radius, final_ang)
y = center.y + lengthdir_y(radius, final_ang)

image_xscale = 0.8
image_yscale = 0.8