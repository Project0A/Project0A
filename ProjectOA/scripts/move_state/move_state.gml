script_execute(get_input);
#region //Move
xaxis = (key_right - key_left);
yaxis = (key_down - key_up);

//get direction
var dir =  point_direction(0, 0, xaxis, yaxis)

//get length
if (xaxis == 0) and (yaxis == 0){
len = 0
} else {
len = spd;
}

//Get speed variables
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

//Colission check

#region Colission horizontal
if place_meeting(x+hspd, y, obj_wall){
	while!place_meeting(x+hspd, y, obj_wall){
	x += sign(hspd)
	}
	hspd = 0;
}

if place_meeting(x+hspd, y, obj_inv){
	while!place_meeting(x+hspd, y, obj_inv){
	x += sign(hspd)
	}
	hspd = 0;
}
x+=hspd;


#endregion
#region Colission Vertical
if place_meeting(x, y+vspd, obj_wall){
	while!place_meeting(x, y+vspd, obj_wall){
	x += sign(vspd)
	}
	vspd = 0;
}

if place_meeting(x, y+vspd, obj_inv){
	while!place_meeting(x, y+vspd, obj_inv){
	x += sign(vspd)
	}
	vspd = 0;
}
y+=vspd;

#endregion
#endregion
#region Controll
//Control spr

image_speed = sign(len) *.2;

if(len == 0) image_index = 0;

//Vertical spr

if(vspd<0){
sprite_index = player_up;

} else if(vspd>0) {
sprite_index = player_down;
}

//Horizontal spr
if(hspd>0){
sprite_index = player_right;

} else if(hspd<0) {
sprite_index = player_left;
}
#endregion