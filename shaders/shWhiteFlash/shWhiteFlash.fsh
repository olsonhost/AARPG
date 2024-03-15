//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float fflash;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor = vec4(
		gl_FragColor.r + fflash,
		gl_FragColor.g + fflash,
		gl_FragColor.b + fflash,
		gl_FragColor.a);
	
}
