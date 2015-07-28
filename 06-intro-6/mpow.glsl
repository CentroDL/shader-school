mat2 matrixPower(highp mat2 m, int n) {

  // highp mat2 result = mat2(1.0) * m;

  // for(int i=0; i < n;i++){
  //    result = matrixCompMult(result,m);
  // }

  // return result;
    highp mat2 p = mat2(1.0) * m;
  for(int i = 1; i < 16; i++) {
    if (i == n) return p;
    p *= m;
  }

  return p;

}

//Do not change this line or the name of the above function
#pragma glslify: export(matrixPower)
