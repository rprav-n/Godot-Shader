shader_type canvas_item;


void vertex() {
	//VERTEX += vec2(cos(TIME)*100.0, 0.0);
	//VERTEX += vec2(cos(TIME)*100.0, sin(TIME)*100.0);
	 if (VERTEX.x < 0.0 && VERTEX.y < 0.0) {
		VERTEX += vec2(cos(TIME)*100.0, sin(TIME)*100.0);
	}
}

void fragment() {
	
}