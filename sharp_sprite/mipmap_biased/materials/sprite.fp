varying mediump vec2 var_texcoord0;

uniform mediump sampler2D texture_sampler;
uniform mediump vec4 tint;

void main()
{
    // Pre-multiply alpha since all runtime textures already are
    mediump vec4 tint_pm = vec4(tint.xyz * tint.w, tint.w);
    gl_FragColor = texture2D(texture_sampler, var_texcoord0.xy, -1.0) * tint_pm;
}
