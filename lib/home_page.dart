import 'package:flutter/material.dart';

/*boa praticar colocar o nome da class ...page quando for um widget q ocupa a tela inteira*/

//Quando For StatefulWidget criar outra class privada isso é um principio do solid
//chamado singleResponsability
class HomePage extends StatefulWidget {
  //construtor const e add uma key é uma id da arvore widget n é obrigatorio passar
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var counterAdd = 0;

  /*chamado quando o widget for construido
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  //chamado quando o widget for destruido
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  */

  /*build context vai recuparar/acessar as infos do home_controller pai da home_page
  context é da app inteira e eh oq tem construido ate o momento
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador de cliques"),
        backgroundColor: Color.fromARGB(134, 61, 187, 255),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
              if (counterAdd == 0) {
              } else {
                setState(() {
                  counterAdd--;
                });
              }
            },
          ),

          //const SizedBox(width: 20), Espaçamento entre os botões

          FloatingActionButton(
            child: const Icon(Icons.circle),
            onPressed: () {
              setState(() {
                counterAdd = 0;
              });
            },
          ),
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              setState(() {
                counterAdd++;
              });
            },
          ),
        ],
      ),
      body: Center(child: Text('Quantidade de Cliques ${counterAdd}')),
    );
  }
}
