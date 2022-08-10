import 'dart:io';

void main() {
  int somaValoresDivisiveisPor3ou5 (int numero) {
    int somaTotal = 0;
    if (numero <= 0) {
      return 0;
    }
    for (int i = 0; i < numero; i++) {
      if (i % 3 == 0 || i % 5 == 0) {
        somaTotal = somaTotal + i;
      }
    }
    return somaTotal;
  }

  bool loop = true;
  int soma = 0;
  do {
    bool numeroEhValido = true;
    print('Digite o numero divisivel por 3 ou 5:\n');
    String? numeroDigitadoPeloUsuario = stdin.readLineSync();
    if (numeroDigitadoPeloUsuario != null) {
      try {
        soma = somaValoresDivisiveisPor3ou5(int.parse(numeroDigitadoPeloUsuario));
        if (soma == 0) {
          throw Exception();
        }
      } catch (e) {
        print('Número deve ser inteiro e maior que 0');
        numeroEhValido = false;
      }
      if (numeroEhValido) {
        print('Soma total de divisiveis por 3 ou 5: $soma\n');
      }
      print('Deseja fazer outro calculo? (y/n)\n');
      String? escolhaContinuar = stdin.readLineSync();
      if (escolhaContinuar == 'n') {
        loop = false;
      }
    }
  } while(loop);


}
