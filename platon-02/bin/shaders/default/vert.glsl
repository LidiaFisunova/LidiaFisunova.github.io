#version 300 es
precision highp float;
        
//uniform float Time;
uniform mat4 matrView;
uniform mat4 matrProj;
uniform mat4 matrWorld;

out vec3 DrawPos;
out vec3 DrawNorm;

in vec3 InPosition;
in vec3 InNormal;

void main( void )
{
  gl_Position = matrProj * matrView * matrWorld * vec4(InPosition, 1.0);
  //DrawPos = (matrProj * matrView * matrWorld * vec4(InPosition, 1.0)).xyz;
  DrawPos = InPosition;
  DrawNorm = normalize(mat3(matrWorld * transpose(inverse(matrView))) * (InNormal));
}