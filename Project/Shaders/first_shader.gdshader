shader_type canvas_item;

int my_function(){
	return 10;
}

int substract_ints(int intA, int intB){
	int result = intA - intB;
	return result;
}

float add_floats(float floatA, float floatB){
	float result = floatA + floatB;
	return result;
}

void vertex() {
	// Called for every vertex the material is visible on.
	int got_int = my_function();
	float sum_floats = add_floats(10.5, 4.5);
	int resta = substract_ints(5, 3);
}

void fragment() {
	// Called for every pixel the material is visible on.
}
