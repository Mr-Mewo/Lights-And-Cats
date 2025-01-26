varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec3 v_vPosition;

uniform vec2 pos[64];
uniform vec3 col[64];
uniform int count;
//vec3 col = vec3(1.0, 1.0, 1.0);

void main(){
	vec4 pixel = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	/*if (pixel.r > 0.9){
		pixel.a = 0.0;
	}*/
	
	//invert the entire thing
	//gets what is in the light instead of what is in the dark
	pixel.rgba = vec4(vec3(0.0), 1. - pixel.a);
	//fade out
	/*if (pixel.a > 0.9){
		pixel.rgba = vec4(0.0);
		
		for (int i = 0; i < count; i++){
			//if (pixel.a == 1.0){
			//if (distance(v_vPosition.xy, pos[i].xy) < 200.){
				pixel.a += 1. - min(1.0, distance(v_vPosition.xy, pos[i].xy) / 200.);
				pixel.rgb = col[0];
			//}
			//}
		}
		
		//pixel.rgb = col[0];
	}*/
	
	//pixel.rgb = col[0];
	
	//pixel.a /= 1.5;
	
    gl_FragColor = pixel;
	
}
