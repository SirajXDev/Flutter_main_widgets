import 'package:flutter/material.dart';

class RadioAndCheckScreen extends StatefulWidget {
  const RadioAndCheckScreen({super.key});

  @override
  State<RadioAndCheckScreen> createState() => _RadioAndCheckScreenState();
}

class _RadioAndCheckScreenState extends State<RadioAndCheckScreen> {
  String gender = '';
  List<String> language = ['c++'];
  bool java = false;
  bool python = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Buttons and check box'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppButton(
                text: 'helo',
                onTap: () {
                  debugPrint('helo is presed');
                }),
            Text('Gender: $gender'),
            Row(
              children: [
                Radio(
                  value: 'Male',
                  groupValue: gender,
                  onChanged: (value) {
                    gender = value.toString();
                    setState(() {});
                    debugPrint(gender);
                  },
                ),
                const Text('<Male>'),
                Radio(
                  value: 'FeMale',
                  groupValue: gender,
                  fillColor: MaterialStateProperty.all(Colors.green),
                  focusColor: Colors.purple,
                  activeColor: Colors.amber,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  splashRadius: 50,
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                    });
                    debugPrint(gender);
                  },
                ),
                const Text('<FeMale>')
              ],
            ),
            Text('Language: ${language.toString()}'),
            Checkbox(
              value: language.contains('c++'),
              onChanged: (value) {
                if (value == true) {
                  language.add('c++');
                } else {
                  language.remove('c++');
                }

                setState(() {});
               debugPrint('language');
              },
               
            ),
            const Text('c++'),
             Checkbox(
              value: language.contains('java'),
              onChanged: (value) {
                if (value == true) {
                  language.add('java');
                } else {
                  language.remove('java');
                }

                setState(() {});
                debugPrint('language');
              },
            ),
            const Text('java'),
             Checkbox(
              value: language.contains('python'),
              onChanged: (value) {
                if (value == true) {
                  language.add('python');
                } else {
                  language.remove('python');
                }

                setState(() {});
               debugPrint('language');
              },
            ),
            const Text('python'),
            InkWell(
              onTap: () {
                debugPrint('ontap ');
              },
              onDoubleTap: () {
                debugPrint('on doubble tap');
              },
              onLongPress: () {
                debugPrint('onlong presss');
              },
              child: Container(
                height: 50,
                width: 100,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
                child: const Center(
                    child: Text(
                  'login',
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
            AppButton(
                text: 'simple',
                onTap: () {
                  debugPrint('simple is presed');
                }),
          ],
        ),
      ),
    );
  }
}

//custom button
class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 100,
        decoration: const BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
