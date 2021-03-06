import 'package:flutter/material.dart';
import 'package:gojek_clone/screens/chat_page.dart';
import 'package:gojek_clone/screens/home_page.dart';
import 'package:gojek_clone/screens/log_in.dart';
import 'package:gojek_clone/screens/orders.dart';
import 'package:gojek_clone/screens/promo_page.dart';
import 'package:gojek_clone/screens/signup_page.dart';
import 'package:gojek_clone/screens/starting_page.dart';
import 'package:gojek_clone/screens/tabs_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TabsScreen(),
      routes: {
        SignUp.routeName: (ctx) => const SignUp(),
        LogIn.routeName: (ctx) => const LogIn(),
        HomePage.routeName: (ctx) => const HomePage(),
        PromoPage.routeName: (ctx) => const PromoPage(),
        OrderPage.routeName: (ctx) => const OrderPage(),
        ChatPage.routeName: (ctx) => const ChatPage(),
      },
    );
  }
}
