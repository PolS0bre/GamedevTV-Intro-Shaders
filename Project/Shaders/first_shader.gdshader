shader_type canvas_item;

void vertex() {
	// Called for every vertex the material is visible on.
	int my_int = 10;
	my_int = 2;
	
	float my_float = 2.5;
	my_float = 10.3;
	
	bool my_bool = true;
	my_bool = false;
	
	vec2 my_vec2 = vec2(6.0, 5.0);
	vec4 my_vec4 = vec4(1.0, 2.0, my_vec2);
	vec3 my_vec3 = vec3(1.0); 
	my_vec4.x = 1.0;
	my_vec4.y = 2.0;
	my_vec4.z = 3.0; //my_vec2.x
	my_vec4.w = 4.0; //my_vec2.y
	
	vec3 swizzle_vec = my_vec4.wwx;
	
}

void fragment() {
	// Called for every pixel the material is visible on.
}
