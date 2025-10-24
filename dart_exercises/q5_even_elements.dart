void main() {
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  
  List<int> pares = [];
  
  for (int elemento in a) {
    if (elemento % 2 == 0) {
      pares.add(elemento);
    }
  }
  
  print('Lista original: $a');
  print('Elementos pares: $pares');
  
  print('\nUsando método where:');
  List<int> paresWhere = a.where((elemento) => elemento % 2 == 0).toList();
  print('Elementos pares: $paresWhere');
}