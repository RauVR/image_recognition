import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';
//import 'package:wakelock_plus/wakelock_plus.dart';
import 'home.dart';
import 'package:get/get.dart';

List<CameraDescription>? cameras;

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  cameras=await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {


  //const MyApp({super.key});
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    //WakelockPlus.enable(); //mantiene la pantalla encendida
    Wakelock.enable();
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
