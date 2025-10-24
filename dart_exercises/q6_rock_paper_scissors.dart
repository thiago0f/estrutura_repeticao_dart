import 'dart:io';
import 'dart:math';

void main() {
  print('=== PEDRA, PAPEL E TESOURA ===');
  
  List<String> opcoes = ['pedra', 'papel', 'tesoura'];
  
  Map<String, String> nomes = {
    'pedra': 'Pedra',
    'papel': 'Papel',
    'tesoura': 'Tesoura'
  };
  
  Map<String, String> emojis = {
    'pedra': '✊',
    'papel': '✋',
    'tesoura': '✌️'
  };
  
  print('Escolha uma opção:');
  print('1 - Pedra');
  print('2 - Papel');
  print('3 - Tesoura');
  
  stdout.write('Digite sua escolha (1, 2 ou 3): ');
  int escolhaUsuario = int.parse(stdin.readLineSync() ?? '1');
  
  String jogadaUsuario = opcoes[escolhaUsuario - 1];
  
  Random random = Random();
  String jogadaComputador = opcoes[random.nextInt(opcoes.length)];
  
  print('\nVocê escolheu: ${nomes[jogadaUsuario]} ${emojis[jogadaUsuario]}');
  print('Computador escolheu: ${nomes[jogadaComputador]} ${emojis[jogadaComputador]}');
  
  String resultado = determinarVencedor(jogadaUsuario, jogadaComputador);
  
  print('\n$resultado');
}

String determinarVencedor(String usuario, String computador) {
  if (usuario == computador) {
    return 'Empate!';
  }
  
  if ((usuario == 'pedra' && computador == 'tesoura') ||
      (usuario == 'papel' && computador == 'pedra') ||
      (usuario == 'tesoura' && computador == 'papel')) {
    return 'Você venceu! 🎉';
  } else {
    return 'Computador venceu! 🤖';
  }
}