image_angle = point_direction(x, y, mouse_x, mouse_y)
var fire_point_offset = 22
var x_bullet = obj_player.x + lengthdir_x(fire_point_offset, obj_player.image_angle)
var y_bullet = obj_player.y + lengthdir_y(fire_point_offset, obj_player.image_angle)
var movement_buttons = [vk_up, vk_down, vk_left, vk_right]

timer += 1
if (keyboard_check_direct(vk_up)) {
	y -= player_speed
}
if (keyboard_check_direct(vk_down)) {
	y += player_speed
}
if (keyboard_check_direct(vk_left)) {
	x -= player_speed
}
if (keyboard_check_direct(vk_right)) {
	x += player_speed
}
if (timer > 5) {
	instance_create_layer(x_bullet, y_bullet, "Instances", obj_bullet)
	timer = 0
}
