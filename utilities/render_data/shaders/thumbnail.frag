#version 330

uniform sampler2D Texture;

in vec2 v_uv;
out vec4 f_color;

void main() {
    vec2 flipped_uv = vec2(v_uv.x, 1.0 - v_uv.y);
    f_color = texture(Texture, flipped_uv);
}

