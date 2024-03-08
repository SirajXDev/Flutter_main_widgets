import 'package:flutter/material.dart';

class ListViewScreeen extends StatelessWidget {
  const ListViewScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('listView'),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: ListView(
          // physics:const NeverScrollableScrollPhysics(),
          //   physics:const AlwaysScrollableScrollPhysics(),
          // physics:const  BouncingScrollPhysics(),
          //physics: const ClampingScrollPhysics(),
          //  scrollDirection: Axis.horizontal,

          children: [
            Container(
              height: 200,
              width: 200,
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(child: Text('first container')),
            ),
            Container(
              height: 200,
              width: 200,
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage('assets/camera.jpg'),
                      fit: BoxFit.cover)),
              child: const Center(
                  child: Text(
                'second container',
                style: TextStyle(color: Colors.amber),
              )),
            ),
            Container(
              height: 200,
              width: 200,
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(child: Text('third container')),
            ),
            Container(
              height: 200,
              width: 200,
              margin: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                  color: Colors.pink,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/camera.jpg'),
                      fit: BoxFit.cover)),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Container(
                height: 100,
                width: 100,
                margin: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                    color: Colors.pink,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/camera.jpg'),
                        fit: BoxFit.cover)),
              ),
              Container(
                height: 100,
                width: 100,
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Colors.pink,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/camera.jpg'),
                        fit: BoxFit.cover)),
              ),
              Container(
                height: 100,
                width: 100,
                margin: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                    color: Colors.pink,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/camera.jpg'),
                        fit: BoxFit.cover)),
              ),
              Container(
                height: 100,
                width: 100,
                margin: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                    color: Colors.pink,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/camera.jpg'),
                        fit: BoxFit.cover)),
              ),
              ],),
            )
          ],
        ));
  }
}
