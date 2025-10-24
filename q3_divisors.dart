import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Digite um número: ');
  int numero = int.parse(stdin.readLineSync() ?? '1');
  
  List<int> divisores = [];
  
  for (int i = 1; i <= numero; i++) {
    if (numero % i == 0) {
      divisores.add(i);
    }
  }
  
  print('Os divisores de $numero são: $divisores');
  
  print('\nDivisores encontrados de forma mais eficiente:');
  List<int> divisoresEficiente = [];
  
  for (int i = 1; i <= sqrt(numero).toInt(); i++) {
    if (numero % i == 0) {
      divisoresEficiente.add(i);
      if (i != numero ~/ i) {
        divisoresEficiente.add(numero ~/ i);
      }
    }
  }
  
  divisoresEficiente.sort();
  print(divisoresEficiente);
}