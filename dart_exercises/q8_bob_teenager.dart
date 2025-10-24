import 'dart:io';

void main() {
  print('=== Conversando com Bob ===');
  print('Digite uma frase para Bob (ou "sair" para encerrar):');
  
  while (true) {
    stdout.write('> ');
    String? entrada = stdin.readLineSync();
    
    if (entrada == null || entrada.toLowerCase() == 'sair') {
      print('Até logo!');
      break;
    }
    
    String resposta = responderBob(entrada);
    print('Bob: $resposta\n');
  }
}

String responderBob(String frase) {
  String fraseTratada = frase.trim();
  
  if (fraseTratada.isEmpty) {
    return 'Tudo bem. Seja desse jeito!';
  }
  
  bool ehGrito = fraseTratada == fraseTratada.toUpperCase() && 
                 RegExp(r'[A-Z]').hasMatch(fraseTratada);
  
  bool ehPergunta = fraseTratada.endsWith('?');
  
  if (ehGrito && ehPergunta) {
    return 'Calma, eu sei o que estou fazendo!';
  } else if (ehGrito) {
    return 'Uau, relaxe!';
  } else if (ehPergunta) {
    return 'Ok.';
  } else {
    return 'Tanto faz';
  }
}