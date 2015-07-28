bool mandelbrotConverges(vec2 z) {
  return length(z) < 2.0;
}

vec2 mandelbrotItr(vec2 z, vec2 c) {
  return vec2(z.x * z.x - z.y * z.y, 2.0 * z.x * z.y) + c;
}

bool mandelbrot(highp vec2 c) {

  vec2 z = vec2(0.0);

  for(int i=0; i<100; i++){
    z = mandelbrotItr(z,c);
  }

  return mandelbrotConverges(z);
}


//Do not change this line or the name of the above function
#pragma glslify: export(mandelbrot)
