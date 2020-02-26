///bhpg_pattern_init(number of bullets, bullet spread, start angle, total arrays, array spread, begin spin speed, spin change rate, spin reverse, max spin speed, fire rate, object width,object height,x offset,y offset)

/***************************************************
  bhpg_pattern_init
  
  bullets - argument0 - total number of bullets per bullet array
  spread - argument1 - how spread out the bullets in individual arrays should be
  
  start_angle - argument2 - the angle for the pattern to start at
  
  total_arrays - argument2 - how many bullet arrays there should be
  array_spread - argument3 - total spread between the first and last array
  
  spin - argument4 - the speed at which the arrays will be spinning when the script is first called
  spin_mod - argument5 - how quickly the spin rate will speed up. should be set to 0 if max spin speed is disabled.
  spin_reverse - argument6 - set to 1 if you want the spin rate to reverse once it reaches a certain threshhold
  max_spin_spd - argument7 - the max spin rate before reversal begins
  
  fire_rate - argument8 - how often the enemy should fire (higher=slower rate of fire)
  
  object_width - argument11 - how wide is the object that is firing
  object_height - argument12 - how tall is the object that is firing
  x offset - argument13 - the horizontal offset from the object's x origin
  y offset - argument14 - the vertical offset from the object's y origin
 ***************************************************/

base_angle = 0;
shoot = 0

bullets = argument0;
spread = argument1;

start_angle = argument2;

total_arrays = argument3;
array_spread = (argument4/total_arrays);

spin = argument5;
spin_mod = argument6;
spin_reverse = argument7;
max_spin_spd = argument8;

fire_rate = argument9;

object_width = argument10;
object_height = argument11;
x_offset = argument12;
y_offset = argument13; 

b_ang = spread/bullets;
