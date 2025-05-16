precision highp float;
varying vec2 v_texcoord;
uniform sampler2D tex;


void main() {
    vec4 pixColor = texture2D(tex, v_texcoord);
    vec3 color = vec3(pixColor[0], pixColor[1], pixColor[2]);
    
    bvec3 cutoff_b = lessThan(color, vec3(0.0031308));
    vec3 cutoff = vec3(cutoff_b);
    vec3 higher = vec3(1.055)*pow(color, vec3(1.0/2.4)) - vec3(0.055);
    vec3 lower = color * vec3(12.92);

    gl_FragColor = vec4(mix(higher, lower, cutoff), pixColor[3]);
}
