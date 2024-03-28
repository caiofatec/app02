// ignore_for_file: prefer_const_constructors

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrincipalView(),
    );
  }
}

class PrincipalView extends StatelessWidget {
  const PrincipalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra de Título
      appBar: AppBar(
        title: Text(
          'App',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        // Alinhamento EIXO Principal
        mainAxisAlignment: MainAxisAlignment.center,
        // Alinhamento EIXO Secundário
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(width: 100, height: 100, color: Colors.red),
          Row(
            // Alinhamento EIXO Principal
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(width: 100, height: 100, color: Colors.green),
              Container(width: 100, height: 100, color: Colors.yellow),
            ],
          ),
          Row(
            children: [
              Container(width: 100, height: 100, color: Colors.purple),
              Row(
                children: const [
                  Column(
                    children: [
                      Icon(Icons.adb_sharp, size: 50.0, color: Colors.green),
                      Icon(
                        Icons.apple_sharp,
                        size: 50.0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.apple_sharp, size: 50.0, color: Colors.black),
                      Icon(
                        Icons.adb_sharp,
                        size: 50.0,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
