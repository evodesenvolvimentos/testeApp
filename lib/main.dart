import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_envia_retorna/app/routes/app_paginas.dart';
import 'package:getx_envia_retorna/app/routes/app_rotas.dart';

void main(){
//async{
 // await GetStorage.init('getx_app');
  //GetStorage armazenamento = GetStorage('getx_app');

  runApp(
      GetMaterialApp(
        title: 'Getx na prática',
        debugShowCheckedModeBanner: false,
        getPages: AppPaginas.rotas,
        initialRoute: Rotas.HOME,
        themeMode: ThemeMode.system,
      )
  );
}