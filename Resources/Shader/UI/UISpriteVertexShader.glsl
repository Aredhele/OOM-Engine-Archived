#version 330 core

// In
layout(location = 0) in vec2 vertex;
layout(location = 2) in vec2 vertexUV;

// Out
out vec2 textureUV;

uniform mat4 model;
uniform mat4 proj; 

void main(void)
{
	gl_Position = proj * (model * vec4(vertex, 0.0, 1.0));
	textureUV   = vec2(vertexUV.x, 1.0f - vertexUV.y);
}