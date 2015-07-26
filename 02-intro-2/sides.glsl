void sideLengths(
  highp float hypotenuse,
  highp float angleInDegrees,
  out highp float opposite,
  out highp float adjacent) {

  //sohcahtoa
  opposite = sin( radians(angleInDegrees) ) * hypotenuse;
  adjacent = opposite/tan( radians(angleInDegrees) );
}

//Do not change this line
#pragma glslify: export(sideLengths)
