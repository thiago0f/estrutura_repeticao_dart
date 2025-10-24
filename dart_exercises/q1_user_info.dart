import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Digite seu nome: ');
  String nome = stdin.readLineSync() ?? '';
  
  stdout.write('Digite sua idade: ');
  int idade = int.parse(stdin.readLineSync() ?? '0');
  
  print('Olá $nome, você tem $idade anos.');
  
  int anoAtual = DateTime.now().year;
  int anoNascimento = anoAtual - idade;
  print('Você nasceu em $anoNascimento.');
  
  print('\nSequência de anos:');
  for (int ano = anoNascimento; ano <= 2025; ano++) {
    int idadeNaqueleAno = ano - anoNascimento;
    if (ano == anoNascimento) {
      print('No ano de $ano você nasceu!');
    } else {
      print('No ano de $ano você tinha $idadeNaqueleAno anos.');
    }
  }
  
  int anosRestantes = 100 - idade;
  print('\nFaltam $anosRestantes anos para você completar 100 anos.');
}