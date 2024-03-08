import 'package:flutter/material.dart';
import 'package:whatsapp_ui/bottom_navigaton.dart';
//import 'package:whatsapp_ui/alert_dialog.dart';
//import 'package:whatsapp_ui/login_screen.dart';

//import 'package:whatsapp_ui/radios_cheks.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
    
        datePickerTheme:
            const DatePickerThemeData(headerBackgroundColor: Colors.amber),
      ),
      
       home:  const BottomNavigation(),
      //  initialRoute: '/page',
      // routes: {
      //   '/': (context) => const DrawerScreen(),
      //   '/login': (context) =>  LoginScreen(),
      //   '/page': (context) =>  const PageViewScreen(),
      //   '/1page': (context) =>  const PageViewScreen(),
      // },
    );
  }
}
