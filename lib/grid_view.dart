import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  State<GridViewScreen> createState() => __GridViewScreenStateState();
}
class __GridViewScreenStateState extends State<GridViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          centerTitle: true,
          title: const Text('Grid View Screen',style: TextStyle(color: Colors.black),),
        ),
        body: GridView(
          scrollDirection: Axis.horizontal,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10,mainAxisSpacing: 4),
          children: const [
            Image(
              image: NetworkImage(
                  'https://th.bing.com/th/id/OIP.kVVWYJbqPc6WJpRrScsBswHaE7?rs=1&pid=ImgDetMain'),
            ),
            Image(
                image: NetworkImage(
                    'https://th.bing.com/th/id/OIP.kVVWYJbqPc6WJpRrScsBswHaE7?rs=1&pid=ImgDetMain')),
            Image(
                image: NetworkImage(
                    'https://th.bing.com/th/id/OIP.kVVWYJbqPc6WJpRrScsBswHaE7?rs=1&pid=ImgDetMain')),
                    Image(
                image: NetworkImage(
               'https://th.bing.com/th/id/OIP.kVVWYJbqPc6WJpRrScsBswHaE7?rs=1&pid=ImgDetMain')),
            
          ],  
        ));
  }
}
