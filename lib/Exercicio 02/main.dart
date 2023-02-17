import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  setupDI();
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final UseCase usecase;
  late final UseCase2 usecase2;

  @override
  void initState() {
    super.initState();
    usecase = GetIt.instance.get<UseCase>();
    usecase2 = GetIt.instance.get<UseCase2>();
  }

  @override
  Widget build(BuildContext context) {
    print(usecase());
    print(usecase2());

    return Container();
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

void setupDI() {
  final getIt = GetIt.instance;

  getIt.registerSingleton<Service>(
    Service(),
  );

  getIt.registerFactory(
    () => UseCase(
      getIt.get<Service>(),
    ),
  );

  getIt.registerFactory(
    () => UseCase2(
      getIt.get<Service>(),
    ),
  );
}
