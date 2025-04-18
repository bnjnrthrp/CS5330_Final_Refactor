#version 330

uniform vec2 position;
uniform vec2 size;

in vec2 in_position;
in vec2 in_texcoord_0;

out vec2 v_uv;

void main() {
    vec2 scaled = in_position * size;
    vec2 translated = scaled + position;
    gl_Position = vec4(translated * 2.0 - 1.0, 0.0, 1.0); // Adjusts input coordinates from [0, 1] to [-1, 1]
    v_uv = in_texcoord_0;
}
