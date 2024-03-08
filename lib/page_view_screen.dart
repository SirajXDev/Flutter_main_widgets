import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/grid_view.dart';
import 'package:whatsapp_ui/listview_screen.dart';
import 'package:whatsapp_ui/login_screen.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
   final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page View'),
      ),
      body: PageView(
        controller: _controller,
        pageSnapping: true,
        padEnds: true,
        allowImplicitScrolling: true,
        onPageChanged: (index) => log('$index'),
        children: [
          LoginScreen(),
          const GridViewScreen(),
          const ListViewScreeen(),
        ],
      ),
    
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          _controller.page == 2
              ? Container(
                  height: 50,
                  width: 50,
                  color: const Color.fromARGB(255, 2, 23, 63),
                  child: IconButton(
                    onPressed: () {
                      if (_controller.page != 2) {
                        _controller.nextPage(
                            duration: const Duration(seconds: 3),
                            curve: Curves.bounceOut);
                      }
                    },
                    icon: const Icon(
                      CupertinoIcons.back,
                      color: Colors.white,
                    ),
                  ),
                )
              : const SizedBox.shrink(),
          const SizedBox(
            width: 20,
          ),
          _controller.page == 0
              ? Container(
                  height: 50,
                  width: 50,
                  color: const Color.fromARGB(255, 2, 23, 63),
                  child: IconButton(
                    onPressed: () {
                      _controller.animateToPage(
                        _controller.initialPage,
                        duration: const Duration(seconds: 3),
                        curve: Curves.bounceIn,
                      );
                    },
                    icon: const Icon(
                      CupertinoIcons.forward,
                      color: Colors.white,
                    ),
                  ),
                )
              : const SizedBox.shrink(),
          const Spacer()
        ],
      ),
    
    );
  }
}
