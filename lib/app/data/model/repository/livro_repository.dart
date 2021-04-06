

import 'package:getx_envia_retorna/app/data/model/livro.dart';
import 'package:getx_envia_retorna/app/data/model/provider/livro_provider.dart';

class LivroRepository {

   final LivroProvider _livroProvider = LivroProvider();

   Future<Livro> criaLivro({int id, String nome, String tipo}){
     return _livroProvider.criaLivro(id: id, nome: nome, tipo: tipo);
   }

   /*Future<Livro> alteraLivro({Livro livro}){
     return _livroProvider.alterarLivro(livro);
   }

   Future<Livro> excluirLivro({Livro livro}){
     return _livroProvider.excluirLivro(livro);
   }

   signSair(){
     _livroProvider.signSair();
   }*/


}