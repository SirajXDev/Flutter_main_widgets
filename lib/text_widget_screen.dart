import 'package:flutter/material.dart';

class TextWidgetScreen extends StatelessWidget {
  const TextWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Text widget screen'),
        centerTitle: false,
        backgroundColor: Colors.teal,
        elevation: 0,
        scrolledUnderElevation:10,
        shadowColor: Colors.blue,
        toolbarHeight: 100,
          actions: const [

             Icon(Icons.camera_alt),
             SizedBox(width: 15,),
             Icon(Icons.message),
             SizedBox(width: 15,),
             Icon(Icons.more_vert),
          ],
      ),
      body: const Center(child: SingleChildScrollView(
        child: Text( '''This is Text 
        
        
        
     
                THis is how
                Performing hot reload...
Syncing files to device sdk phone x86...
Reloaded 1 of 691 libraries in 1,504ms (compile: 138 ms, reload: 454 ms, reassemble: 351 ms).

                
                ''',
          //maxLines: 5,
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,//right to left
          style: TextStyle(
            color: Colors.red,
            fontSize: 30,
            fontWeight: FontWeight.w800,
            letterSpacing: 3,
            wordSpacing: 5,
            fontStyle: FontStyle.italic,
            decoration:TextDecoration.underline,
            decorationColor: Colors.cyan,
            decorationStyle: TextDecorationStyle.dashed,
            decorationThickness: 2,

            shadows: [
              Shadow(
                color: Colors.blue,
                blurRadius: 20,
                offset: Offset(10, 10),
              ),
              Shadow(
                color: Colors.yellow,
                blurRadius: 20,
                offset: Offset(10, 10),
              )
              ],
            height: 2 //for line spacing

          ),
        ),
      )),
    );
  }
}
