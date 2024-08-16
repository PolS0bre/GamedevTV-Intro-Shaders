shader_type canvas_item;

const float SPEED = 5.0;
const float AMPLITUDE = 50.0;

group_uniforms Variables_Globals;
uniform float global_float : hint_range(0.0, 1.0);
group_uniforms Variables_Globals.SubGrup_Int;
uniform int global_int;

group_uniforms;
uniform bool global_bool;

group_uniforms Vectors_Globals;
uniform vec3 global_vec3;
uniform vec4 global_color : source_color;

void vertex() {
	// Called for every vertex the material is visible on.
	float speed = global_float;
	if(VERTEX.y < 0.0 && VERTEX.x < 0.0){
		vec2 circle = vec2(cos(TIME * speed) * AMPLITUDE, sin(TIME * speed) * AMPLITUDE);
		VERTEX += vec2(-100.0, -25.0) + circle;
	}
}

void fragment() {
	// Called for every pixel the material is visible on.
	vec4 output_color = vec4(1.0, 1.0, 0.0, 0.7);
	
	vec4 red = vec4(1.0, 0.0, 0.0, 1.0);
	vec4 green = vec4(0.0, 1.0, 0.0, 1.0);
	vec4 mixed = mix(red, green, (sin(TIME) + 1.0) * 0.5);
	
	vec4 real_texture = texture(TEXTURE, UV);
	COLOR = real_texture * global_color;
	//COLOR += vec4(sin(TIME), cos(TIME),sin(TIME), 1.0);
}
