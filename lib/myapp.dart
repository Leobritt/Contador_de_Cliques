import 'package:first_flutter_project/home_controller.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

//codigo do principal widget
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //material app predefine oq ta acontecendo
    //widget que só será usado uma vez na aplicação
    return MaterialApp(
      //colocamos varias props nele
      //para pegar o item da home_controller precisa colocar ele entre o myapp e home_page
      // controller é pai do home_page para poder passar as info
      home: HomeController(child: HomePage()),
    );
  }
}
