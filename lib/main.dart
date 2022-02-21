import 'package:flutter/material.dart';
import 'package:gojek_clone/screens/chat.dart';
import 'package:gojek_clone/screens/home_page.dart';
import 'package:gojek_clone/screens/log_in.dart';
import 'package:gojek_clone/screens/orders.dart';
import 'package:gojek_clone/screens/promo_page.dart';
import 'package:gojek_clone/screens/signup_page.dart';
import 'package:gojek_clone/screens/starting_page.dart';
import 'package:gojek_clone/screens/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const StartingPage(),
      routes: {
        SignUp.routeName: (ctx) => const SignUp(),
        LogIn.routeName: (ctx) => const LogIn(),
        TabsScreen.routeName: (ctx) => const TabsScreen(),
        HomePage.routeName: (ctx) => const HomePage(),
        PromoPage.routeName: (ctx) => const PromoPage(),
        OrderPage.routeName: (ctx) => const OrderPage(),
        ChatPage.routeName: (ctx) => const ChatPage(),
      },
    );
  }
}
