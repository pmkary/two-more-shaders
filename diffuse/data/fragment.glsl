
//
// Copyright 2018-preset by Pouya Kary <pouya@kary.us>
//

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

    varying vec4 vertColor;
    varying vec3 vertNormal;
    varying vec3 vertLightDir;

//
// ─── MAIN ───────────────────────────────────────────────────────────────────────
//

    void main() {
        float intensity =
            max( 0.0, dot( vertLightDir, vertNormal ) );
        vec4 color =
            vec4( abs( sin( render_no ) ) * intensity, abs( ( intensity * sin( render_no ) ) * cos( render_no ) * 0.3 ) * 0.4, abs( cos( render_no ) ) * intensity, 1.0 );
        gl_FragColor = color * vertColor * 1.0;
    }

// ────────────────────────────────────────────────────────────────────────────────
