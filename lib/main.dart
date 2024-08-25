import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';
import 'home.dart';
import 'package:get/get.dart';

List<CameraDescription>? cameras;

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  cameras=await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {


  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    Wakelock.enable(); //mantiene la pantalla encendida
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Object Recognition',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
