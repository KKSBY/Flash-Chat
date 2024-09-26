import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Import the firebase_core package
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: 'AIzaSyBvEVmSKLlG4ZuRAd2LS4O0Y-YYtAAdO78',
          appId: '1:814084182228:android:9805b3037201131969ab41',
          messagingSenderId: '814084182228',
          projectId: 'flash-chat-e6d0a')); // Initialize Firebase
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black54),
        ),
        //input text color
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
