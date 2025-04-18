#version 330

uniform vec2 position;

in vec2 in_position;
in vec2 in_texcoord_0;

out vec2 v_uv;

void main() {
    vec2 position = in_position * 0.5 + position;
    gl_Position = vec4(position * 2.0 - 1.0, 0.0, 1.0);
    v_uv = in_texcoord_0;
}
