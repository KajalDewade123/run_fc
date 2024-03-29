
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:run_fc/screens/chat_screen.dart';
import 'package:run_fc/screens/login_screen.dart';
import 'package:run_fc/screens/registration_screen.dart';
import 'package:run_fc/screens/welcome_screen.dart';


import 'firebase_options.dart';




//void main() => runApp(FlashChat());
void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
