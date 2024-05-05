shader_type canvas_item;

group_uniforms FirstGroup;
group_uniforms FirstGroup.ColorGroup;
uniform float speed: hint_range(0.0, 10.0, 0.5) = 1.0;
uniform vec4 color: source_color;
group_uniforms;

group_uniforms SecondGroup;
uniform int my_int;
group_uniforms;

void vertex() {
	//VERTEX += vec2(cos(TIME)*100.0, 0.0);
	//VERTEX += vec2(cos(TIME)*100.0, sin(TIME)*100.0);
	 //if (VERTEX.x < 0.0 && VERTEX.y < 0.0) {
		//VERTEX += vec2(cos(TIME)*100.0, sin(TIME)*100.0);
	//}
}

void fragment() {
	vec4 output_color = vec4(1.0, 0.0, 0.0, 1.0);
	
	vec4 color1 = vec4(1.0, 0.0, 0.0, COLOR.a);
	vec4 color2 = vec4(0.0, 1.0, 0.0, COLOR.a);
	
	float mix_percent = (sin(TIME * speed) + 1.0) * 0.5;
	output_color = mix(color1, color2, mix_percent);
	
	COLOR = texture(TEXTURE, UV);
	
	COLOR *= output_color;
}