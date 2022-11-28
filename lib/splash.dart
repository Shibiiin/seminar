import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: const NatiSpl(title: 'Native Splash'),
    );
  }
}

class NatiSpl extends StatefulWidget {
  const NatiSpl({super.key, required this.title});

  final String title;

  @override
  State<NatiSpl> createState() => _NatiSplState();
}

class _NatiSplState extends State<NatiSpl> {

  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    Future.delayed(const Duration(seconds: 30));
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: const Center(
    child: Text('Welcome', style: TextStyle(fontSize: 30), textAlign: TextAlign.center,),
      ),
    );
  }
}