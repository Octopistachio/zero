counterClockwise = 0
clockwise = 1
direction = argument0

if(direction == clockwise){
    dir_now := point_direction(xCircle,yCircle,x,y);
    dir_new := (dir_now + (angularSpeed * -1) + 360)mod(360);
    x := lengthdir_x(global.circleRadius,dir_new) + xCircle;
    y := lengthdir_y(global.circleRadius,dir_new) + yCircle;
    image_angle = dir_now;
}

if(direction == counterClockwise){
    dir_now := point_direction(xCircle,yCircle,x,y);
    dir_new := (dir_now + (angularSpeed) + 360)mod(360);
    x := lengthdir_x(global.circleRadius,dir_new) + xCircle;
    y := lengthdir_y(global.circleRadius,dir_new) + yCircle;
    image_angle = dir_now;
}

