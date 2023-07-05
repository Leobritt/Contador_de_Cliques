import 'package:first_flutter_project/home_controller.dart';
import 'package:flutter/material.dart';
import 'home_controller.dart';

//boa praticar colocar o nome da class ...page quando for um widget q ocupa a tela inteira
class HomePage extends StatelessWidget {
  //construtor const e add uma key
  //key é um id da arvore widget n é obrigatorio passar
  const HomePage({super.key});

  @override
  //build context vai recuparar/acessar as infos do home_controller pai da home_page
  //context é da app inteira e eh oq tem construido ate o momento
  Widget build(BuildContext context) {
    //é possivel pega outras infos usando o
    var controller = HomeController.of(context);
    final size = MediaQuery.of(context).size;
    print(size);
    final navigation = Navigator.of(context);
    print(navigation);
    // ! avisando q pode ser null

    return Scaffold(
      appBar: AppBar(
          title: const Text("Contador de cliques"),
          backgroundColor: Color.fromARGB(255, 32, 31, 30)),
      backgroundColor: Color.fromARGB(255, 117, 117, 117),
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            controller.increment();
            // ignore_for_file: avoid_print
            print("clicou no botão de soma");
          },
        ),

        const SizedBox(height: 16), // Espaçamento entre os botões

        FloatingActionButton(
          child: const Icon(Icons.remove),
          onPressed: () {
            // ignore_for_file: avoid_print
            controller.decrement();
            print("clicou no botão de subtração");
          },
        ),

        FloatingActionButton(
          child: const Icon(Icons.circle),
          onPressed: () {
            // ignore_for_file: avoid_print
            controller.reset();
            print("clicou no botão de subtração");
          },
        ),
      ]),
      body: Center(child: Text('Quantidade de Cliques ${controller.cont}')),
    );
  }
}
