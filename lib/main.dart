//flutter pub run build_runner watch
//criar arquivo build.yaml para restringir criação do arquivo e tornar o processo mais rápido
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pomodoro_app/pages/pomodoro.dart';
import 'package:provider/provider.dart';
import './store/pomodoro.store.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.green,
      systemNavigationBarColor: Colors.green.shade900,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PomodoroStore>(create: (_) => PomodoroStore()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Pomorodo(),
      ),
    );
  }
}
