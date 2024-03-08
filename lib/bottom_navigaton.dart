
import 'package:flutter/material.dart';
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation bar '),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body:
       BottomNavigationBar(items: const [
        
          BottomNavigationBarItem(icon: 
          Icon(Icons.home),
          label: 'home',
          
          ),
           BottomNavigationBarItem(icon: 
          Icon(Icons.call),
          label: 'call',
          
          ),
           BottomNavigationBarItem(icon: 
          Icon(Icons.message),
          label: 'message',
          
          ),
          
        ]
        
        
        ),
      
      
    );
  }
}

