/// @description controls and thrust 
// sets sprite to face mouse 
var mouse_directiton = point_direction(x, y, mouse_x, mouse_y);
image_angle = mouse_directiton;
direction = mouse_directiton;

/*if (mouse_check_button(mb_left)){
	speed = max_speed;
}else{
	speed = 0;
}
 */
 
// makes a thrust for the player ship
var thrust = mouse_check_button(mb_right);
// when right mouse button is clicked, the ship will look like its boosting
image_index = thrust;

if(thrust) {
		motion_add(image_angle, acceleration);
		if (speed > max_speed){
			speed = max_speed; 
		} 
	var offset = 4;
	var length = 16
	var _x = x + lengthdir_x(length, image_angle);
	var _y = y+ lengthdir_x(length, image_angle);
	instance_create_layer(_x,_y,"Effects", o_explosion_particle)
} else {
	friction = friction_ammount;
}