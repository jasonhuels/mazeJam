///camera_movement

// camera position = average of player and room center. 0.05 = lerp speed

//view_xview[0] += (((x+(room_width)*0.5)*0.5 - x-(view_wview[0]*0.5)) - view_xview[0]) * 0.05;
//view_yview[0] += (((y+(room_height)*0.5)*0.5 - y-(view_hview[0]*0.5)) - view_yview[0]) * 0.05;

view_xview[0] = lerp(view_xview[0], x-view_wview[0]/2, 0.05);
view_yview[0] = lerp(view_yview[0], y-view_hview[0]/2, 0.05);


