void main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  
  Set<int> conjuntoA = a.toSet();
  Set<int> conjuntoB = b.toSet();
  
  Set<int> elementosComuns = conjuntoA.intersection(conjuntoB);
  
  List<int> resultado = elementosComuns.toList();
  resultado.sort();
  
  print('Lista A: $a');
  print('Lista B: $b');
  print('Elementos comuns: $resultado');
  
  print('\nTeste com listas de tamanhos diferentes:');
  List<int> c = [1, 2, 3, 4, 5];
  List<int> d = [4, 5, 6, 7, 8, 9, 10, 11, 12];
  
  Set<int> conjuntoC = c.toSet();
  Set<int> conjuntoD = d.toSet();
  
  Set<int> comunsCD = conjuntoC.intersection(conjuntoD);
  List<int> resultadoCD = comunsCD.toList();
  resultadoCD.sort();
  
  print('Lista C: $c');
  print('Lista D: $d');
  print('Elementos comuns: $resultadoCD');
}