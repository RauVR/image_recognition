# image_recognition

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Cambiar la la version de sdk a 34 
minima version lo dejamos en 21
esto lo hacemos en la siguiente ruta
/home/raul/.pub-cache/hosted/pub.dev/tflite-1.1.2/android
o tambien en /home/raul/.pub-cache/hosted/pub.dev/tflite_v2-1.0.0/android
modificamos el archivo build.gradle

modificamos el archivo build.gradle dentro de la carpeta de nuestro proyecto
/home/raul/Escritorio/UPC/Moviles/Projects/Flutter/image_recognition/android/app
le ponemos 34
y version minima 21

luego ejecutamos en la terminar los siguientes comandos
flutter build 
flutter run

actualizar kotlin
en android/build.gradle  poner :
ext.kotlin_version = '1.8.22' // Usa la versión más reciente
luego guardar archivo y sincronizar gradle
File > Sync Project with Gradle Files.