shader_type spatial;

uniform sampler2D front_texture;

void vertex() {
    // Vertex logic if any
}

void fragment() {
    ALBEDO = texture(front_texture, UV).rgb;
}
