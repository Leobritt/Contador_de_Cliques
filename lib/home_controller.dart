import 'package:flutter/material.dart';

//para ser reativo
class HomeController extends InheritedNotifier<ValueNotifier<int>> {
  //necessarios para a construcao do InheritedWidget
  //passar um widget para o filho dele
  //iniciando a reatividade com notifier: ValueNotifier(0)
  HomeController({Key? key, required Widget child})
      : super(key: key, child: child, notifier: ValueNotifier(0));

  //armazenando o valor do notifer
  //lembrar de garantir que usando a ! pode ser null
  int get cont => notifier!.value;

  //conreole de estado gerenciar o widget
  static HomeController of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<HomeController>()!;
  }

  increment() {
    notifier!.value++;
  }

  decrement() {
    notifier!.value--;
  }

  reset() {
    notifier!.value = 0;
  }

  /*se pode atualizar os filhos com o uso InheritedNotifie ele n precisa mais ser usado
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }*/
}
