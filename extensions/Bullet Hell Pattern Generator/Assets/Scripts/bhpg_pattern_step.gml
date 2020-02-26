///bhpg_pattern_step()
 
//control spread angles 
bb = max(1,bullets-1);
aa = max(1,total_arrays-1);

a_ang = (array_spread/aa);
b_ang = (spread/bb);

if (shoot=0) {//fire rate control
    for (var j=0;j<total_arrays;j++) {//loop for each array
        for (var i=0;i<bullets;i++) {//loop for each bullet
            //determine the point where the bullets will fire from
            xx = x+x_offset+lengthdir_x(object_width,base_angle+(b_ang*i)+(a_ang*j)+start_angle);
            yy = y+y_offset+lengthdir_y(object_height,base_angle+(b_ang*i)+(a_ang*j)+start_angle);
            
            bullet = instance_create(xx,yy,bullet_object);//create a bullet at the desired location
            bullet.direction = base_angle+(b_ang*i)+(a_ang*j)+start_angle;//give that bullet the desired direction
            bullet.image_angle = base_angle+(b_ang*i)+(a_ang*j)+start_angle;//set the bullet's image_angle so it faces the same direction
            bullet.speed = bullet_speed;//give the bullet the desired speed
            bullet.accel = bullet_accel;
            bullet.curve = bullet_curve;
        }
    }
    
    base_angle += spin;//spin the arrays
    
    spin += spin_mod;//increase or decrease spin speed
    
    if (spin_reverse = 1) {//if spin reverse is enables
        if (spin < -max_spin_spd || spin > max_spin_spd) {//reverse the spin once it reaches a certain speed
            spin_mod = -spin_mod;
        }
    }
}

shoot += 1;//fire rate control

if (shoot >= fire_rate) {//once shoot reaches our fire rate
    shoot = 0;//set it to 0 to shoot again
}