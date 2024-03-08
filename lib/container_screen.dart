import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              //color: Colors.amber,
              margin: const EdgeInsets.only(
                top: 40,
                bottom: 20,
                left: 10,
                right: 10,
              ),
              //const EdgeInsets.symmetric(horizontal: 150),
              //EdgeInsets.all(105),
              padding: const EdgeInsets.only(left: 50),
              transform: Matrix4.rotationZ(0.1),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 20,
                      spreadRadius: 3,
                      //blurStyle: BlurStyle.inner,
                      // blurStyle: BlurStyle.outer,
                    )
                  ],
                  gradient: RadialGradient(colors: [
                    Colors.red,
                    Colors.yellow,
                    Colors.blue,
                  ])),

              child: const Icon(
                Icons.flutter_dash,
                color: Colors.black,
                size: 50,
              ),
            ),
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                color: Colors.blue,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.red,
                    Colors.yellowAccent,
                  ],
                ),
                //borderRadius: BorderRadius.all(Radius.circular(40)),
                // borderRadius: BorderRadius.circular(40),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              // color: Colors.cyan,
              child: const Icon(
                Icons.flutter_dash,
                color: Colors.white,
                size: 50,
              ),
            ),
            Container(
              height: 200,
              width: 200,

              // color: Colors.black,

              margin: const EdgeInsets.only(
                top: 10,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                color: Colors.black,
                image: DecorationImage(
                  opacity: 1,
                  
                    fit: BoxFit.cover,
                    // colorFilter: ColorFilter.mode(Colors.red, BlendMode.colorBurn),
                    //filterQuality: FilterQuality.low,
                    image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2023/10/30/16/54/sew-8353303_1280.jpg',
                      
                    )),
                // border: Border.symmetric(
                //   horizontal: BorderSide(color: Color.fromARGB(255, 16, 11, 17), width: 3),

                  // vertical:  BorderSide(
                  //     color: Colors.amber,
                  //     width: 3,
                  //   ),
                  // ),
                  // Border.all(
                  //   color: Colors.black,
                  //   width: 3,
                  //   style: BorderStyle.solid,
                  // )
                  
                // ),
              ),
              foregroundDecoration: BoxDecoration(
                color: Colors.amber.withOpacity(0.2),
                border: Border.all(color: Colors.black, width: 3),
                
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}
