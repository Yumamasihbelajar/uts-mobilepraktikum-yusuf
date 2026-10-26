import 'package:flutter/material.dart';
import 'package:nusantara_coffee/pages/home_page.dart';
import 'package:nusantara_coffee/pages/menu_page.dart';
import 'package:nusantara_coffee/pages/detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nusantara Coffee',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
        scaffoldBackgroundColor: const Color(0xFFF8F5F2), // Warna background cream
        fontFamily: 'Poppins', // Kita akan pakai font default saja atau bisa ditambah nanti
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/menu': (context) => const MenuPage(),
        '/detail': (context) => const DetailPage(),
      },
    );
  }
}