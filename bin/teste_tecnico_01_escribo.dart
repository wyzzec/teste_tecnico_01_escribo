import 'dart:io';

void main() {
  int somaValoresDivisiveisPor3 (int numero) {
    int somaTotal = 0;
    if (numero == 0){
      return 0;
    }
    for (int i = 0; i < numero; i++){
      if (i % 3 == 0 || i % 5 == 0){
        somaTotal = somaTotal + i;
      }
    }
    return somaTotal;
  }

  bool loop = true;
  do {
    print('Digite o numero divisivel por 3 ou 5:\n');
    String? numeroDigitadoPeloUsuario = stdin.readLineSync();
    if (numeroDigitadoPeloUsuario != null){
      print('Soma total de divisiveis por 3 ou 5: ${somaValoresDivisiveisPor3(int.parse(numeroDigitadoPeloUsuario))}\n');
      print('Deseja fazer outro calculo? (y/n)\n');
      String? escolhaContinuar = stdin.readLineSync();
      if (escolhaContinuar == 'n'){
        loop = false;
      }
    }
  } while(loop);


}
