import 'package:flutter/material.dart';
import 'package:movil_go_trade/pantallas/tabs.dart';

void main() => runApp(
  const MyApp()
  
  );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: TabsPage()),
    );
  }
}