
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_envia_retorna/app/controller/controlador_home.dart';

class PaginaHome extends StatelessWidget {

  final HomeControlador _homeControlador = Get.find<HomeControlador>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Página Home'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.library_books),
          onPressed: _homeControlador.acessaLivros,
        ),
      ],),

      body: Center(
        child: Container(
          child: Text('Pagina Home'),
        ),
      ),
    );

  }
}

