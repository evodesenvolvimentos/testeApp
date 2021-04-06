import 'package:get/get.dart';
import 'package:getx_envia_retorna/app/controller/controlador_dadosLivro.dart';

class DadosLivroLigacao implements Bindings{

  @override
  void dependencies() {
    Get.lazyPut<DadosLivroControlador>(() => DadosLivroControlador());
  }
}