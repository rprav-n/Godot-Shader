shader_type canvas_item;

void fragment() {
	//COLOR.rb = vec2(0.0, 0.0);
	//COLOR.rgb = vec3(vec2(0.0), COLOR.b);
	
	//COLOR.gbr = vec3(vec2(0.0), COLOR.r);
	//COLOR[0] = 0.0; // red
	//COLOR[1] = 0.0; // green
	//COLOR[2] = 0.0; // blue
	
	COLOR.a = 1.0 - COLOR.a;
	
	
}