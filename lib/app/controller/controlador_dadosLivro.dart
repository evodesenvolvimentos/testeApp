

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_envia_retorna/app/data/model/livro.dart';

class DadosLivroControlador extends GetxController{

  final Livro livro = Get.arguments;
  final Livro livroAlterado = Livro();

  TextEditingController controladorId = TextEditingController();
  TextEditingController controladorNome = TextEditingController();
  TextEditingController controladorTipo = TextEditingController();

  @override
  void onInit() {
    controladorId.text = livro.id.toString();
    controladorNome.text = livro.nome;
    controladorTipo.text = livro.tipo;
    super.onInit();
  }

  montarLivro(){
    livroAlterado.id = int.parse(controladorId.text);
    livroAlterado.nome = controladorNome.text;
    livroAlterado.tipo = controladorTipo.text;
  }

  Future<void> salvarAlteracoes() async{
    montarLivro();
    Get.back(result: livroAlterado);
}


}