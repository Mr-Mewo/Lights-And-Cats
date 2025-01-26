attribute vec3 in_Position;

uniform vec2 pos;

void main(){
	vec2 vPos = in_Position.xy;
	
	// * step(distance(pos, vPos), 200.)
	vec2 dis = vec2( in_Position.xy-pos );
	vPos = in_Position.xy + (dis/sqrt(dis.x*dis.x + dis.y*dis.y) * 200.0) * in_Position.z * step(distance(pos, vPos), 200.);
	
	
	
	/*if(in_Position.z > 0.0 && distance(pos, vPos) < 200.){
		vec2 dis = vec2( vPos-pos );
		
		vPos += dis/sqrt(dis.x*dis.x + dis.y*dis.y) * 1000.0; //screen widht // max size
		
	}*/
	
    vec4 object_space_pos = vec4(vPos.xy, 0., 1.0);
	//vec4 object_space_pos = vec4(vPos + (vPos - pos)*10.*in_Position.z * step(distance(pos, vPos), 200.), 0., 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
}
