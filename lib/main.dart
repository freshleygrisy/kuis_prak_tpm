import 'package:flutter/material.dart';
import 'package:kuis_prak_tpm/mobil/listmobil.dart';
import 'package:kuis_prak_tpm/mobil/detail.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListMobil(),
    );
  }
}
