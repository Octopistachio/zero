if !place_meeting (x, y, oBlock){
    if keyboard_check(ord('A'))
        CircularMovement(1);
    if keyboard_check(ord('D'))
        CircularMovement(0);
}
    
if place_meeting (x, y, oBlock){ 
    if keyboard_check(ord('A'))
        CircularMovement(0);
    if keyboard_check(ord('D'))
        CircularMovement(1);
}

