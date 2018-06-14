
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

    varying vec4 vertColor;
    varying vec3 vertNormal;
    varying vec3 vertLightDir;

//
// ─── MAIN ───────────────────────────────────────────────────────────────────────
//

    void main() {
        gl_Position =
            transform * position;
        vertColor =
            color;
        vertNormal =
            normalize( normalMatrix * normal );
        vertLightDir =
            -lightNormal;
    }

// ────────────────────────────────────────────────────────────────────────────────
