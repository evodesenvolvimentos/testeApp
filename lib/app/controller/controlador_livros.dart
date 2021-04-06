

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_envia_retorna/app/data/model/livro.dart';
import 'package:getx_envia_retorna/app/data/model/repository/livro_repository.dart';
import 'package:getx_envia_retorna/app/routes/app_rotas.dart';

class LivrosControlador extends GetxController{

  final LivroRepository _livroRepositorio = LivroRepository();


  Livro livro = Livro();
  RxBool indice = false.obs;

  // lista de livros observáveis
  RxList<Livro> listaLivros = <Livro>[].obs;
  RxList<Livro> listaFiltrada = <Livro>[].obs;

  TextEditingController controladorPesquisa = TextEditingController();

  @override
  void onInit() {
    for (int i=0;i < 6;i++){
     if (i == 0)
       carregaLivros(id: 1,nome: 'João e Maria',tipo: 'Literatura');
     else if (i==1)
       carregaLivros(id: 2, nome: 'Geografia todo dia', tipo: 'Didático');
     else if (i==2)
       carregaLivros(id:3 ,nome:'Educação Especial' ,tipo:'Professor' );
     else if (i==3)
       carregaLivros(id: 4, nome: 'Português 9º Ano', tipo: 'Didático');
     else if (i==4)
       carregaLivros(id: 5, nome: 'Branca de Neve e 7 anões', tipo: 'Literatura');

    }
    super.onInit();
  }


  void cliqueLivro([Livro livro, int index]) async{
    //livroClicado = livro;
    var retorno = await Get.toNamed(Rotas.DADOSLIVROS,arguments: livro);
    if (retorno != null){
      //livroTestando = retorno;
      atualizarListas(retorno,index);
      print('retorno ; ${retorno.tipo.toString()}');
      print('index ; ${index}');

    }
  }

  Future<void> atualizarListas(Livro livroAlterado, int index)async{

    listaLivros[index] = livroAlterado;
    controladorPesquisa.text = '';
    carregaListaFiltrada();

  }

  Future<void> carregaLivros({int id, String nome, String tipo}) async{

   listaLivros.add(await _livroRepositorio.criaLivro(id: id,nome: nome,tipo: tipo));
   if (listaLivros[3].nome != null)
    print(listaLivros[3].nome.toString());





     debugPrint('teste');
/*
    geraDadosLivro(1, 'João e Maria', 'Literatura');
    geraDadosLivro(2, 'Geografia todo dia', 'Didático');
    geraDadosLivro(3, 'Educação Especial', 'Professor');
    geraDadosLivro(4, 'Português 9º Ano', 'Didático');
    geraDadosLivro(5, 'Branca de Neve e 7 anões', 'Literatura');*/
    print('Entrei aqui');
    controladorPesquisa.text = '';
    carregaListaFiltrada();
  }

  void carregaListaFiltrada(){
    listaFiltrada.clear();
    listaFiltrada.addAll(listaLivros);
  }

  geraDadosLivro(int id, String nome, String tipo){
    livro = Livro(id: id,nome: nome,tipo: tipo);
    listaLivros.add(livro);
    //listaFiltrada.add(livro);
    //print('lista ${listaFiltrada.length}');
  }

  void filtraLista(String filtro){

    try {
      listaFiltrada.clear();
      listaFiltrada = listaLivros.where((pesquisa)=>pesquisa.nome.toLowerCase().contains(filtro) ||
          pesquisa.tipo.toLowerCase().contains(filtro)).toList().obs;

    }catch (e){
      print(e.toString());
    }
  }
}