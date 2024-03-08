import 'package:flutter/material.dart';

class AlertDialogeScreen extends StatefulWidget {
  const AlertDialogeScreen({super.key});

  @override
  State<AlertDialogeScreen> createState() => _AlertDialogeScreenState();
}

class _AlertDialogeScreenState extends State<AlertDialogeScreen> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert dailogue'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showAdaptiveDialog(
                      context: (context),
                      builder: (context) => AlertDialog.adaptive(
                        backgroundColor: Colors.white,
                            title: const Text('Are you want to delete'),
                            titleTextStyle:const TextStyle(color: Colors.black,fontSize: 20),
                            content:const Text('select catagorey'),
                            
                            actions: [
                              Column(
                                children: [
                                   TextButton(
                                  onPressed: () {
                                   debugPrint('message deleted');
                                  },
                                  child: const Text('delete for all')),
                                  TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: const Text('delete for me')),
                                       TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text('cancel')),
                                ],
                              ),
                                 
                            ],
                          ));
                },
                child: const Text('this is button')),
          ],
        ),
      ),
    );
  }
}
