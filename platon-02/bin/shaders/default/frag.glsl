#version 300 es
precision highp float;
out vec4 OutColor;

uniform float Time;
in vec3 DrawPos;
in vec3 DrawNorm; 

void main( void )
{
  vec3 L = normalize(vec3(1.0 * sin(Time), 1, 1));
  //OutColor = vec4(DrawNorm, 1); // * dot(DrawNorm, L);
  OutColor = vec4(DrawPos.y * sin(Time), 0.67f, 0.99f, 1.0f) * dot(DrawNorm, L);
}