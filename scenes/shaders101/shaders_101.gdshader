shader_type canvas_item;


void vertex() {
	//VERTEX += vec2(cos(TIME)*100.0, 0.0);
	//VERTEX += vec2(cos(TIME)*100.0, sin(TIME)*100.0);
	 //if (VERTEX.x < 0.0 && VERTEX.y < 0.0) {
		//VERTEX += vec2(cos(TIME)*100.0, sin(TIME)*100.0);
	//}
}

void fragment() {
	vec4 output_color = vec4(1.0, 0.0, 0.0, 1.0);
	
	vec4 color1 = vec4(1.0, 0.0, 0.0, 1.0);
	vec4 color2 = vec4(0.0, 1.0, 0.0, 1.0);
	
	float mix_percent = (sin(TIME * 2.0) + 1.0) * 0.5;
	output_color = mix(color1, color2, mix_percent);
	
	COLOR = output_color;
}