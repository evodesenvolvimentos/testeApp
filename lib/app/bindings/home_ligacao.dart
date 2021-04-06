import 'package:get/get.dart';
import 'package:getx_envia_retorna/app/controller/controlador_home.dart';

class HomeLigacao implements Bindings{

  @override
  void dependencies() {
    Get.lazyPut<HomeControlador>(() => HomeControlador());
  }
}