///get_input()
var gp_id = 0;
var thresh = 0.5;

right = keyboard_check(ord("D")) || gamepad_axis_value(gp_id, gp_axislh) > thresh;
left = keyboard_check(ord("A")) || gamepad_axis_value(gp_id, gp_axislh) < -thresh;
up = keyboard_check(ord("W")) || gamepad_axis_value(gp_id, gp_axislv) < -thresh;
down = keyboard_check(ord("S")) || gamepad_axis_value(gp_id, gp_axislv) > thresh;

roll = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(gp_id, gp_face1);
roll_release = keyboard_check_released(vk_space) || gamepad_button_check_released(gp_id, gp_face1);

sniff = keyboard_check_pressed(ord("F")) || gamepad_button_check_pressed(gp_id, gp_face3);
poop = keyboard_check_pressed(vk_shift) || gamepad_button_check_pressed(gp_id, gp_face2);

pause = keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(gp_id, gp_start);

