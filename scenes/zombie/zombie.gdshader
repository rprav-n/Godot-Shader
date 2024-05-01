shader_type canvas_item;

uniform sampler2D sampled_texture;

void vertex() {
	
}

void fragment() {
	vec3 zebra_tex = texture(sampled_texture, UV).rgb;
	COLOR.rgb = zebra_tex;
	
	
	//COLOR.rbg *= vec3(0.7, 0.7, 0.8);
}