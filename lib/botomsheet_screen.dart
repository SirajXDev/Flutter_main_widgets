
import 'package:flutter/material.dart';

class DialagueScreen extends StatefulWidget {
  const DialagueScreen({super.key});

  @override
  State<DialagueScreen> createState() => _DialagueScreenState();
}

class _DialagueScreenState extends State<DialagueScreen> {
  DateTime? date = DateTime.now();
  TimeOfDay? time = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('botoom sheet'),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
                color: Colors.amber,
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      backgroundColor:  Colors.red,
                      elevation: 50,
                      builder: (context) {
                        return const Center(
                          child: Column(
                            children: [
                              Text('This is Bottom Sheet'),
                              Divider(
                                thickness: 5,
                                color: Colors.amber,
                              ),
                              Text('After Open Sheet'),
                            ],
                          ),
                        );
                      });
                },
                child: const Text('Tap me')),
            const SizedBox(
              height: 20,
            ),
            Text(date.toString()),
            Text(time.toString()),
            ElevatedButton(
                onPressed: () async {
                  date = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2023, 30, 12));
                    
                  setState(() {});
                },
                child: const Text('date pick')),
                const SizedBox(height: 20,),
                 ElevatedButton(
                onPressed: () async {
                  time = await showTimePicker(
                      context: context,
                      initialTime:TimeOfDay.now(),
                  );   
                  setState(() {});
                },
                child: const Text('time pick')),
          ],
        )));
  }
}
