import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:summerclass2025/home_page.dart';

import 'firebase_options.dart';
import 'new_movie.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(

    options: DefaultFirebaseOptions.currentPlatform,

  );
  runApp(const MyApp()); // runApp roda a classe MyApp que retorna MaterialApp

}

class MyApp extends StatelessWidget { // StatelessWidget: widget sem estado
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { // monta interface com árvore de widgets
    return MaterialApp( // função de configuração do aplicativo
      title: 'Summerclass 2025',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const MyHomePage(), //muda o texto na app bar (app bar é como se fosse o header)
      routes: {
        "/new": (context) =>const NewMoviePage(),
      },
    );
  }
}
