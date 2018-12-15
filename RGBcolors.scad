 /*
   Código para generar colores RGB en función de número de bits n por canal
   Cambiar el número de bits y previsualizar (F5)
   José Pujol
   Noviembre de 2018
   */
    bits=1;     // numero de bits por canal
    n=pow(2,bits); // numero de colores por canal
    
for (i = [1 : abs(1) : n]) {
  translate([(1 + (i-1) * 10), 1, 1]){
    for (j = [1 : abs(1) : n]) {
      translate([0, (1 + (j-1) * 10), 0]){
          for (k = [1 : abs(1) : n]) {
              translate([0, 0, (1 + (k-1) * 10)]){
            color([((i-1)/(n-1)),((j-1)/(n-1)),((k-1)/(n-1))]) {
          cube([8, 8, 8], center=false);
        }
      }
      }
    }

  }
}
    }
