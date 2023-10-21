shader_type spatial;

uniform sampler2D texture_front : source_color;
uniform sampler2D texture_back : source_color;
uniform sampler2D texture_left : source_color;
uniform sampler2D texture_right : source_color;
uniform sampler2D texture_top : source_color;
uniform sampler2D texture_bottom : source_color;
uniform float frame_thickness : hint_range(0, 1) = 0.02;

void fragment() {
    vec3 norm = normalize(NORMAL);

    if (abs(norm.x) > 0.5) {
        if (norm.x > 0.0) {
            ALBEDO = texture(texture_right, UV).rgb;
        } else {
            ALBEDO = texture(texture_left, UV).rgb;
        }
    } else if (abs(norm.y) > 0.5) {
        if (norm.y > 0.0) {
            ALBEDO = texture(texture_top, UV).rgb;
        } else {
            ALBEDO = texture(texture_bottom, UV).rgb;
        }
    } else if (abs(norm.z) > 0.5) {
        if (norm.z > 0.0) {
            ALBEDO = texture(texture_front, UV).rgb;
        } else {
            ALBEDO = texture(texture_back, UV).rgb;
        }
    }

    // Add the border logic here
    if (UV.x < frame_thickness || UV.x > 1.0 - frame_thickness || UV.y < frame_thickness || UV.y > 1.0 - frame_thickness) {
        ALBEDO = vec3(0.0, 0.0, 0.0); // Black border
    }
}
