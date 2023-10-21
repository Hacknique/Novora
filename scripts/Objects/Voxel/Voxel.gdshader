shader_type spatial;

// Assuming you've loaded your atlas texture
uniform sampler2D atlas_texture : source_color;

void vertex() {
    if (abs(NORMAL.x) > 0.5) {
        if (NORMAL.x > 0.0) {
            UV = vec2(0.0, 0.0); // Adjust this to map to the right face of your atlas
        } else {
            UV = vec2(0.25, 0.0); // Adjust this for the left face
        }
    } else if (abs(NORMAL.y) > 0.5) {
        if (NORMAL.y > 0.0) {
            UV = vec2(0.0, 0.5); // Top face
        } else {
            UV = vec2(0.75, 0.0); // Bottom face
        }
    } else if (abs(NORMAL.z) > 0.5) {
        if (NORMAL.z > 0.0) {
            UV = vec2(0.0, 0.5); // Front face
        } else {
            UV = vec2(0.25, 0.5); // Back face
        }
    }
}

void fragment() {
    ALBEDO = texture(atlas_texture, UV).rgb;
}
