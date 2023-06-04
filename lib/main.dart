import 'package:calculadora_imc/app/layers/presenter/screens/principal.dart';
import 'package:calculadora_imc/app/common/styles/cores.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.white,
      systemNavigationBarColor: const Color.fromRGBO(242, 242, 242, 1),
      statusBarBrightness: Brightness.dark,
      //Ícones superior e inferior
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            color: Cores.corPadrao,
            fontWeight: FontWeight.bold,
          ),
          centerTitle: true,
        ),
      ),
      home: const Principal(),
    );
  }
}
