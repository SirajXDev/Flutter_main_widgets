import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/grid_view.dart';
import 'package:whatsapp_ui/radios_cheks.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Widget'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(

        semanticLabel: 'THis is drawer',
        child: ListView(
          children: [
            DrawerHeader(

              decoration: const BoxDecoration(
                color: Colors.brown,
              ),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: const BoxDecoration(
                      color: Colors.red,

                      shape: BoxShape.circle,
                      // image: DecorationImage(image: AssetImage('assets/camera.jpg')),
                      image: DecorationImage(
                          image: AssetImage('assets/Abdulwali.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                
                 const Text('\n siraj khan'),
                ],
              ),
            ),
            Column(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RadioAndCheckScreen(),
                        allowSnapshotting: true,
                        maintainState: true,
                        fullscreenDialog: true,
                      ),
                    );
                  },
                  title: const Text('Home'),
                  leading: const Icon(Icons.home),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const GridViewScreen(),
                        title: 'THis is Dash',
                        allowSnapshotting: true,
                        fullscreenDialog: true,
                      ),
                    );
                  },
                  title: const Text('Account'),
                  leading: const Icon(Icons.account_box),
                ),
               const  ListTile(
                  // onTap: () {
                  //   // Navigator.pushReplacementNamed(context, '/login',arguments: Container());
                  //   Navigator.pushNamed(context, '/login',arguments: Container());

                  //   // Navigator.pushNamed(
                  //   //   context,
                  //   //   MaterialPageRoute(
                  //   //     builder: (context) => const ListViewScreeen(),
                  //   //   ),
                  //   // );
                  // },
                  title: Text('Cart'),
                  leading: Icon(Icons.shopping_cart),
                ),
                const ListTile(
                  title: Text('logout'),
                  leading: Icon(Icons.logout),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
