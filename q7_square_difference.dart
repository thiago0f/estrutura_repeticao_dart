import 'dart:io';

void main() {
  stdout.write('Digite o valor de N: ');
  int n = int.parse(stdin.readLineSync() ?? '10');
  
  int soma = 0;
  for (int i = 1; i <= n; i++) {
    soma += i;
  }
  int quadradoDaSoma = soma * soma;
  
  int somaDosQuadrados = 0;
  for (int i = 1; i <= n; i++) {
    somaDosQuadrados += i * i;
  }
  
  int diferenca = quadradoDaSoma - somaDosQuadrados;
  
  print('\nPara os primeiros $n números naturais:');
  print('Soma: 1 + 2 + ... + $n = $soma');
  print('Quadrado da soma: $soma² = $quadradoDaSoma');
  print('Soma dos quadrados: 1² + 2² + ... + $n² = $somaDosQuadrados');
  print('Diferença: $quadradoDaSoma - $somaDosQuadrados = $diferenca');
  
  if (n == 10) {
    print('\nVerificação com o exemplo:');
    print('Quadrado da soma: 55² = 3025');
    print('Soma dos quadrados: 385');
    print('Diferença: 3025 - 385 = 2640');
  }
}