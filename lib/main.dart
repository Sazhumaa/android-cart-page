import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/cart_provider.dart';
import 'home_page.dart';
import 'widgets/cart_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (ctx) => CartProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Keranjang Belanja',
      theme: ThemeData(
        primaryColor: Colors.amber[800],
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.amber[800],
          secondary: Colors.orangeAccent,
        ),
        scaffoldBackgroundColor: Colors.amber[50],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.amber[800],
          foregroundColor: Colors.white,
          elevation: 4,
          centerTitle: true,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber[700],
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        cardTheme: CardThemeData(
          color: Colors.white,
          shadowColor: Colors.amber.withOpacity(0.4),
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.amber[800],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.amber[200],
          showUnselectedLabels: true,
        ),
      ),
      home: const HomePage(),
      routes: {
        CartScreen.routeName: (ctx) => const CartScreen(),
      },
    );
  }
}
