

import 'package:getx_envia_retorna/app/data/model/livro.dart';
import 'package:getx_envia_retorna/app/data/model/repository/livro_repository.dart';

class LivroProvider implements LivroRepository {

  Livro livro = Livro();


  @override
  Future<Livro> criaLivro({int id, String nome, String tipo})async {
    livro.id = id;
    livro.nome = nome;
    livro.tipo = tipo;
    return livro;
  }

  @override
  signSair() {

  }

  @override
  Future<Livro> excluirLivro({Livro livro}) {

  }

  @override
  Future<Livro> alteraLivro({Livro livro}) {

  }
}