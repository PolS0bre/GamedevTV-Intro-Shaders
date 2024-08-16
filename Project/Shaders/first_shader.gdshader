shader_type canvas_item;

const float SPEED = 5.0;
const float AMPLITUDE = 50.0;

void vertex() {
	// Called for every vertex the material is visible on.
	
	if(VERTEX.y < 0.0 && VERTEX.x < 0.0){
		vec2 circle = vec2(cos(TIME * SPEED) * AMPLITUDE, sin(TIME * SPEED) * AMPLITUDE);
		VERTEX += vec2(-100.0, -25.0) + circle;
	}
}

void fragment() {
	// Called for every pixel the material is visible on.
	COLOR += vec4(sin(TIME), cos(TIME),sin(TIME), 1.0);
}
