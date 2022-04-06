import 'package:flutter/material.dart';
import 'package:gojek_clone/widget/chat_screens/quick_actions.dart';

import 'package:google_fonts/google_fonts.dart';

class ChatPage extends StatelessWidget {
  static const routeName = '/chat';
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        title: Text(
            'Chat',
          style: GoogleFonts.dmSans(
            fontWeight: FontWeight.w700,
            fontSize: 28,
            color: Colors.black
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            QuickActions(),
          ],
        ),
      ),
    );
  }
}
