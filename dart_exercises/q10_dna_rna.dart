import 'dart:io';

void main() {
  print('=== Transcrição de DNA para RNA ===');
  stdout.write('Digite uma sequência de DNA: ');
  String? sequenciaDNA = stdin.readLineSync();
  
  if (sequenciaDNA != null) {
    try {
      String sequenciaRNA = transcreverDNAparaRNA(sequenciaDNA);
      print('Sequência de DNA: $sequenciaDNA');
      print('Sequência de RNA: $sequenciaRNA');
    } catch (e) {
      print('Erro: $e');
    }
  }
  
  print('\nExemplos:');
  List<String> exemplos = ['GCTA', 'GCGC', 'TTAA'];
  
  for (String exemplo in exemplos) {
    try {
      String rna = transcreverDNAparaRNA(exemplo);
      print('$exemplo -> $rna');
    } catch (e) {
      print('$exemplo -> Erro: $e');
    }
  }
}

String transcreverDNAparaRNA(String dna) {
  Map<String, String> complemento = {
    'G': 'C',
    'C': 'G',
    'T': 'A',
    'A': 'U'
  };
  
  String rna = '';
  
  for (int i = 0; i < dna.length; i++) {
    String nucleotideo = dna[i].toUpperCase();
    
    if (!complemento.containsKey(nucleotideo)) {
      throw Exception('Nucleotídeo inválido: $nucleotideo');
    }
    
    rna += complemento[nucleotideo]!;
  }
  
  return rna;
}