import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(ModularApp(
    module: MainModule(),
    child: const MainWidget(),
  ));
}

class MainModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton(
          (i) => Service(),
        ),
        Bind.factory(
          (i) => UseCase(
            i.get(),
          ),
        ),
        Bind.factory(
          (i) => UseCase2(
            i.get(),
          ),
        ),
      ];
}

class MainWidget extends StatefulWidget {
  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  late final UseCase usecase01;
  late final UseCase2 usecase02;

  @override
  void initState() {
    super.initState();
    usecase01 = Modular.get<UseCase>();
    usecase02 = Modular.get<UseCase2>();
  }

  @override
  Widget build(BuildContext context) {
    print(usecase01());
    print(usecase02());

    return MaterialApp(
      home: Container(),
    ); //added by extension
  }
}

class Service {
  Service() {
    date = DateTime.now();
  }
  late final DateTime date;
  String call() => date.toString();
}

class UseCase {
  UseCase(this.service);
  final Service service;
  String call() => service();
}

class UseCase2 {
  UseCase2(this.service);
  final Service service;
  String call() => service();
}
