#version 330 core
layout(location = 0) in vec3 vertexPosition;
layout(location = 1) in vec2 vertexUV;
layout(location = 2) in vec2 vertexNormals;

uniform mat4 MVP;

out vec2 UV;

void main() {
    gl_Position = MVP * vec4(vertexPosition, 1.0);
    //color = vec3(100,200,100);
    UV = vertexUV;
}