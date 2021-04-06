import 'package:get/get.dart';
import 'package:getx_envia_retorna/app/controller/controlador_livros.dart';


class LivrosLigacao implements Bindings{

  @override
  void dependencies() {
    Get.lazyPut<LivrosControlador>(() => LivrosControlador());
  }
}