// sets sprite to face mouse 
var mouse_directiton = point_direction(x, y, mouse_x, mouse_y);
image_angle = mouse_directiton;
direction = mouse_directiton;

if (mouse_check_button(mb_left)){
	speed = max_speed;
}else{
	speed = 0;
}

// makes a thrust for the player ship
var thrust = mouse_check_button(mb_right);
image_index = thrust;

if(mouse_check_button(mb_right)) {
		motion_add(image_angle, acceleration);
		if (speed > max_speed){
			speed = max_speed; 
		} 
} else {
	friction = friction_ammount;
}

