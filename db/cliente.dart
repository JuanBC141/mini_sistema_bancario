import 'dart:html';
import '../pessoa.dart';

class Clientes {
  static List<Pessoa> _clientes = [];

  void cadastrar(Pessoa cliente) {
    _clientes.add(cliente);
  }

  Iterable<Pessoa> buscar(String email) {
    return _clientes.where((objCliente) => objCliente.email == email);
  }

  List<Pessoa> listar() {
    return _clientes;
  }

  void remover(String email) {
    Iterable listaDeClientes = buscar(email);
    listaDeClientes.forEach((cliente) {
      _clientes.remove(cliente);
    });
  }

  void editar(Pessoa objPessoa) {
    Iterable<Pessoa> listaDePessoas = buscar(objPessoa.email??"");

    listaDePessoas.forEach((antigoPessoa) {
      antigoPessoa = objPessoa;
    });
  }
}
