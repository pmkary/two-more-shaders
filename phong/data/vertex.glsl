
//
// ─── UNIFORMS ───────────────────────────────────────────────────────────────────
//

    uniform mat4 transform;
    uniform mat3 normalMatrix;
    uniform vec3 lightNormal;

//
// ─── ATTRIBUTES ─────────────────────────────────────────────────────────────────
//


    attribute vec4 position;
    attribute vec4 color;
    attribute vec3 normal;

//
// ─── VARYINGS ───────────────────────────────────────────────────────────────────
//

    varying vec4 vertex_color;
    varying vec3 vertex_normal;
    varying vec3 vertex_light_direction;

//
// ─── MAIN ───────────────────────────────────────────────────────────────────────
//

    void main ( ) {
        gl_Position =
            transform * position;
        vertex_color =
            color;
        vertex_normal =
            normalize( normalMatrix * normal );
        vertex_light_direction =
            -lightNormal;
    }

// ────────────────────────────────────────────────────────────────────────────────
