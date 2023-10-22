shader_type spatial;

uniform sampler2D atlas_texture : source_color;
uniform float frame_thickness : hint_range(0, 0.1) = 0.02;
uniform vec4 border_color : source_color = vec4(0.0, 0.0, 0.0, 1.0);

void fragment() {
    vec4 tex_color = texture(atlas_texture, UV);

    bool left_edge = UV.x < frame_thickness;
    bool right_edge = UV.x > (1.0 - frame_thickness);
    bool bottom_edge = UV.y < frame_thickness;
    bool top_edge = UV.y > (1.0 - frame_thickness);

    if (left_edge || right_edge || bottom_edge || top_edge) {
        ALBEDO = border_color.rgb;
    } else {
        ALBEDO = tex_color.rgb;
    }
}
