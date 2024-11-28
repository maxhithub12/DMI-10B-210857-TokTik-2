import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik_210857/config/app_theme.dart';
import 'package:toktik_210857/presentation/providers/discover_provider.dart';
import 'package:toktik_210857/presentation/screens/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:  [ChangeNotifierProvider(
        lazy: false,
        create: (_)=> DiscoverProvider()..loadNextPage())],
      child: MaterialApp(
        title: 'TokTik 210542',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen()
    )
    );
  }
}