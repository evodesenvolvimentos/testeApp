
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:getx_envia_retorna/app/controller/controlador_livros.dart';
import 'package:getx_envia_retorna/app/routes/app_rotas.dart';

class PaginaLivros extends StatelessWidget {
  final LivrosControlador _livrosControlador = Get.find<LivrosControlador>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.theme.primaryColor,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (){
              // TODO: CADASTRO LIVROS

              Get.toNamed(Rotas.DADOSLIVROS);
              //_livrosControlador.geraDadosLivro(6,'Josueldo','Didático');

              print ('passei aqui');

            },
          ),
          IconButton(
            icon: Icon(Icons.cancel),
            onPressed: (){
              Get.back();
            },
          ),
        ],
      ),

      // obx => Widget  deixa a lista observável, qualquer alteração a lista é refeita

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                TextFormField(
                  controller: _livrosControlador.controladorPesquisa,
                  onChanged: (filtro){
                    _livrosControlador.filtraLista(filtro);
                  },

                  autofocus: false,
                  decoration: InputDecoration(
                    hintText: 'Qual livro procura?',
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      color: Get.theme.primaryColor,
                      icon: Icon(Icons.filter_list),
                      onPressed: (){

                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Obx(()=>
              Expanded(
                child: ListView.builder(
                  itemCount: _livrosControlador.listaFiltrada.length,
                  itemBuilder: (_,index){
                    return Slidable(
                      actions: <Widget>[
                        IconSlideAction(
                          caption: 'Emprestado',
                          color: Colors.blue,
                          icon: Icons.archive,
                          onTap: () => Get.snackbar('Archive', 'Archive'),
                        ),
                        IconSlideAction(
                            caption: 'Alterar',
                            color: Colors.indigo,
                            icon: Icons.share,
                            onTap: () {
                              _livrosControlador.cliqueLivro(_livrosControlador.listaFiltrada[index],index);
                            }),

                      ],
                      secondaryActions: <Widget>[
                        IconSlideAction(
                          caption: 'Informações',
                          color: Colors.black45,
                          icon: Icons.more_horiz,
                          onTap: () => Get.snackbar('More','More'),
                        ),
                        IconSlideAction(
                          caption: 'Delete',
                          color: Colors.red,
                          icon: Icons.delete,
                          onTap: () => Get.snackbar('Delete','Delete'),
                        ),
                      ],
                      actionPane: SlidableDrawerActionPane(),
                      closeOnScroll: false,

                      child: Card(
                        margin: EdgeInsets.all(8),
                        elevation: 4,
                        child: Column(
                          children: [
                            ListTile(
                              title: Text('${_livrosControlador.listaFiltrada[index].nome}'.tr),
                              //_livrosControlador.livrosLista[index].nome),
                              leading: Image.network(
                                  'https://uploads.nerdstore.com.br/wp-content/uploads/2019/10/livro-protocolo-zumbi-03.jpg'),
                              subtitle: Text('${_livrosControlador.listaFiltrada[index].tipo}'.tr),
                              //_livrosControlador.livrosLista[index].tipo),
                              onTap: () {

                                _livrosControlador.cliqueLivro(_livrosControlador.listaFiltrada[index],index);

                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },

                ),
              ),
          ),
        ],
      ),

    );
  }
}
