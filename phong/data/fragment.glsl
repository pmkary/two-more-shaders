
//
// ─── LOADINGS ───────────────────────────────────────────────────────────────────
//

    #ifdef GL_ES
        precision mediump float;
        precision mediump int;
    #endif

//
// ─── UNIFORAMS ──────────────────────────────────────────────────────────────────
//

    uniform float fraction;
    uniform float render_no;

//
// ─── VARYINGS ───────────────────────────────────────────────────────────────────
//

    varying vec4 vertex_color;
    varying vec3 vertex_normal;
    varying vec3 vertex_light_direction;

//
// ─── RENDERING PARAMETERS ───────────────────────────────────────────────────────
//

    const float Ka =
        0.01;
    const float Kd =
        0.7;
    const float Ks =
        0.5;
    const float n =
        50;

//
// ─── COMPUTE INTESITIY ──────────────────────────────────────────────────────────
//

    float compute_phong_intensity ( ) {
        float LN =
            dot( vertex_light_direction, vertex_normal );

        float amibient_reflection =
            Ka;
        float diffuse_reflection =
            Kd * max( 0.0, LN );
        float specular_reflection =
            Ks * pow( LN, n );

        float intensity =
            amibient_reflection + diffuse_reflection + specular_reflection;

        return intensity;
    }

//
// ─── COMPUTE COLOR ──────────────────────────────────────────────────────────────
//

    vec3 compute_color ( ) {
        float red =
            abs( sin( render_no ) );
        float green =
            abs( sin( render_no ) * cos( render_no ) * 0.3 ) * 0.4;
        float blue =
            abs( cos( render_no ) );

        return vec3( red, green, blue );
    }

//
// ─── MAIN ───────────────────────────────────────────────────────────────────────
//

    void main ( ) {
        float intensity =
            compute_phong_intensity( );
        vec3 color =
            compute_color( );

        gl_FragColor = vec4( color * intensity, 1.0 );
    }

// ────────────────────────────────────────────────────────────────────────────────
