import 'dart:io';

void main() {
  print('=== Calculadora de Pontuação Scrabble ===');
  stdout.write('Digite uma palavra: ');
  String? palavra = stdin.readLineSync();
  
  if (palavra != null) {
    int pontuacao = calcularPontuacaoScrabble(palavra);
    print('A palavra "$palavra" vale $pontuacao pontos.');
    
    String exemplo = 'repolho';
    int pontuacaoExemplo = calcularPontuacaoScrabble(exemplo);
    print('\nExemplo: A palavra "$exemplo" vale $pontuacaoExemplo pontos.');
  }
}

int calcularPontuacaoScrabble(String palavra) {
  Map<String, int> pontos = {
    'A': 1, 'E': 1, 'I': 1, 'O': 1, 'U': 1, 'L': 1, 'N': 1, 'R': 1, 'S': 1, 'T': 1,
    'D': 2, 'G': 2,
    'B': 3, 'C': 3, 'M': 3, 'P': 3,
    'F': 4, 'H': 4, 'V': 4, 'W': 4, 'Y': 4,
    'K': 5,
    'J': 8, 'X': 8,
    'Q': 10, 'Z': 10
  };
  
  int total = 0;
  
  for (int i = 0; i < palavra.length; i++) {
    String letra = palavra[i].toUpperCase();
    if (pontos.containsKey(letra)) {
      total += pontos[letra]!;
    }
  }
  
  return total;
}