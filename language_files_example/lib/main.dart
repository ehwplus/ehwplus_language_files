import 'dart:io';

import 'package:flutter/material.dart';

import 'arb_overview_page.dart';
import 'arb_repository.dart';

void main() {
  runApp(const ArbEditorApp());
}

class ArbEditorApp extends StatelessWidget {
  const ArbEditorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ARB Editor',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo), useMaterial3: true),
      home: const ArbOverviewPage(),
    );
  }
}
