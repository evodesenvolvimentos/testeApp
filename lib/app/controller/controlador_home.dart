

import 'package:get/get.dart';
import 'package:getx_envia_retorna/app/routes/app_rotas.dart';

class HomeControlador extends GetxController{


  void acessaLivros(){
    Get.toNamed(Rotas.CADASTROLIVROS);
  }

}