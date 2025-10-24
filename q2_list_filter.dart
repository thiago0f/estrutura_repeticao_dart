void main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  
  print('Elementos da lista menores que 5:');
  
  for (int elemento in a) {
    if (elemento < 5) {
      print(elemento);
    }
  }
  
  print('\nUsando método where:');
  List<int> menoresQue5 = a.where((elemento) => elemento < 5).toList();
  print(menoresQue5);
}