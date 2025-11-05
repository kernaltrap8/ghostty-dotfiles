#version 320 es
precision highp float;

out vec4 fragColor;

uniform float iTime;
uniform vec2 iResolution;

void main() {
    vec2 uv = gl_FragCoord.xy / iResolution;
    fragColor = vec4(uv, fract(iTime * 0.1), 1.0);
}
