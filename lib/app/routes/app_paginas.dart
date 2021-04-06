
import 'package:get/get.dart';
import 'package:getx_envia_retorna/app/UI/pagina_dados_livro.dart';
import 'package:getx_envia_retorna/app/UI/pagina_home.dart';
import 'package:getx_envia_retorna/app/UI/pagina_livros.dart';
import 'package:getx_envia_retorna/app/bindings/dadosLivro_ligacao.dart';
import 'package:getx_envia_retorna/app/bindings/home_ligacao.dart';
import 'package:getx_envia_retorna/app/bindings/livros_ligacao.dart';

import 'app_rotas.dart';

class AppPaginas{

  static final rotas = [

    GetPage(name: Rotas.HOME, page: () => PaginaHome(),binding: HomeLigacao()),
    GetPage(name: Rotas.CADASTROLIVROS, page: () => PaginaLivros(),binding: LivrosLigacao()),
    GetPage(name: Rotas.DADOSLIVROS, page: () => PaginaDadosLivro(),binding: DadosLivroLigacao()),

  ];

}