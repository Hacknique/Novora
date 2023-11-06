shader_type spatial;

// Albedo texture
uniform sampler2D albedo_texture : source_color;

// User-defined brightness modifier. 1.0 means no change. 
// Values greater than 1.0 will increase brightness, less than 1.0 will decrease.
uniform float brightness : hint_range(0.0, 2.0) = 1.0;

void vertex() {
}

void fragment() {
    vec4 albedoColor = texture(albedo_texture, UV);
    ALBEDO = albedoColor.rgb * brightness;
}
