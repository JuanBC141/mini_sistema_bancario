void main() {
  List<int> numeros = List.generate(10, (indice) => indice * 4);
  int numero = 28;

  numeros.add(78);
  numeros.add(89);
  numeros.add(numero); //Esse que eu quero
  numeros.add(36); // Indice 13 largura - 1

  print(numeros);

  // Remover um elemento
  // 1 ° Forma
  // numeros.remove(numero);
  // print(numeros);

  // // //2° Forma
  // numeros.removeAt(12);
  // print(numeros);

  // Buscar um elemento
  // int numeroSelecionado = numeros[7]; // 8º elemento
  int numeroSelecionado = numeros.elementAt(7);
  // print(numeroSelecionado);

  // int ultimoIndice = numeros.length - 1;
  // int ultimoElemento = numeros.elementAt(ultimoIndice);
  // print(ultimoElemento);

  int ultimoElemento = numeros.last;
  // print(ultimoElemento);
  // filtrar elementos
  //where
  Iterable<int> numerosPares = numeros.where((numero) => numero % 2 == 0);
  Iterable<int> numerosImpares = numeros.where((numero) => numero % 2 == 1);
  print(numeros);
  print(numerosPares);
}
