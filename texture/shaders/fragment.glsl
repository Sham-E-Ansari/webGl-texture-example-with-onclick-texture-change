precision mediump float;
//Instead of assigning a color value to the fragment's color, the fragment's color is computed by fetching the texel (that is, the pixel within the texture) based on the value of vTextureCoord which like the colors is interpolated bewteen vertices.
uniform sampler2D uSampler;


//We need to replace the vertex shader so that instead of fetching color data, it instead fetches the texture coordinate data.
//The key change here is that instead of fetching the vertex color, we're fetching the texture coordinates and passing them to the vertex shader; this will indicate the location within the texture corresponding to the vertex.
varying vec2 vTextCoord;

void main() {
  gl_FragColor = texture2D(uSampler, vTextCoord);
}
