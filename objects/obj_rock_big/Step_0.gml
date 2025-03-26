timer += 1
if (timer > 40) {
	timer = 0
	instance_create_layer(random_range(-50, 800), random_range(0, 700), "Instances", obj_rock_big)
}
