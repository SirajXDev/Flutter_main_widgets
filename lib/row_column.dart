import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Gallery'),
        centerTitle: true,
      
      ),
      body: const   Column(
       
        children: [
          Row(

            children: [
              Image(
                height: 200,
                  image: AssetImage(
                'assets/camera.jpg',
              )),
              Image(
                height: 200,
                width: 200,
                  image: AssetImage(
                'assets/camera.jpg',
              )),
              Image(
                  height: 200,
                  width: 200,
                  image: AssetImage(
                    'assets/camera.jpg',
                  )),


            ],
          ),
           Row(
             children: [
              Image(
                height: 200,
                width: 200,
                  image: AssetImage(
                'assets/camera.jpg',
              )),
              Image(
                height: 200,
                width: 200,
                  image: AssetImage(
                'assets/camera.jpg',
              )),


            ],
          ),
          Row(


            children: [
              Image(
                  height: 200,
                  image: AssetImage(
                    'assets/camera.jpg',
                  )),
              Image(
                  height: 200,
                  width: 200,
                  image: AssetImage(
                    'assets/camera.jpg',
                  )),


            ],
          ),
           
        ],
      ),
    );
  }
}
