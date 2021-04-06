
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_envia_retorna/app/controller/controlador_dadosLivro.dart';
import 'package:getx_envia_retorna/app/routes/app_rotas.dart';

class PaginaDadosLivro extends StatelessWidget {

  final DadosLivroControlador _dadosLivroControlador = Get.find<DadosLivroControlador>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Página DadosLivro')),
      body: Center(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: //Obx(()=>
                Column(
              children: [
                    TextFormField(
                      controller: _dadosLivroControlador.controladorId,
                      autofocus: false,
                      decoration: InputDecoration(
                        hintText: 'ID',
                        labelText: 'Id',
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                    ),
               // ),
                SizedBox(height: 8,),
               // Obx(()=>
                    TextFormField(
                      controller: _dadosLivroControlador.controladorNome,
                      autofocus: false,
                      decoration: InputDecoration(
                        hintText: 'Nome do Livro',
                        labelText: 'Nome',
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                    ),
               // ),
                SizedBox(height: 8,),
              //  Obx(()=>
                    TextFormField(
                      controller: _dadosLivroControlador.controladorTipo,
                      autofocus: false,
                      decoration: InputDecoration(
                        hintText: 'Tipo: Literatura, Didático, ...',
                        labelText: 'Tipo',
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                    ),
               // ),
                Row(
                  children: [
                    Expanded(
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        color: Colors.blueAccent,
                        child: Text('Salvar'),
                        onPressed: _dadosLivroControlador.salvarAlteracoes,
                          //_livrosControlador.geraDadosLivro(int.parse(_livrosControlador.controladorId.text), _livrosControlador.controladorNome.text, _livrosControlador.controladorTipo.text);
                          //_dadosLivrosControlador.limparDados();
//                          debugPrint('testando  ${_livrosControlador.livroTestando.value.nome}');
//                          Get.toNamed(Rotas.CADASTROLIVROS);


                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        color: Colors.yellow,
                        child: Text('Limpar'),
                        onPressed: (){
                          //_dadosLivrosControlador.limparDados();
                        },
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Text('Cancelar'),
                        color: Colors.red,
                        onPressed: (){
                          //_dadosLivrosControlador.limparDados();
                          Get.toNamed(Rotas.CADASTROLIVROS);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ),
          ),
        ),
     // ),
    );

  }
}

