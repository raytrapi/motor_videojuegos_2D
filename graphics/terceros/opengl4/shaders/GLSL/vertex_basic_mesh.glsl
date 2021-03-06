#version 400
layout(location = 0) in vec3 _posicion;
layout(location = 1) in vec3 _normal;
layout(location = 2) in vec3 _color;
//layout(location = 1) in vec4 model;
//layout(location = 1) in vec2 _coordenadaTextura;


uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

//out vec2 coordenadaTextura;
out vec3 normal;
out vec3 fragPos;
out vec3 color;

void main() {
   //vec4 model_position= model * vec4(_posicion, 1.0)
   gl_Position = projection * view * model * vec4(_posicion, 1.0);
   fragPos = vec3(model * vec4(_posicion, 1.0));
   normal = vec3(model * vec4(_normal, 1.0));
   //normal = _normal;
   color = _color;
   //gl_Position = model * vec4(_posicion, 1.0);
   //gl_Position =  vec4(_posicion, 1.0);
   //coordenadaTextura = vec2(_coordenadaTextura.x, _coordenadaTextura.y);   
}