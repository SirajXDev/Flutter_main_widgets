import 'package:flutter/material.dart';

class TextFieldScreen extends StatelessWidget {
  TextFieldScreen({super.key});

  final TextEditingController emailController = TextEditingController();

  final psdController = TextEditingController();
  // final focus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: emailController,
            cursorColor: Colors.black,
            cursorHeight: 20,
            cursorWidth: 2,
            maxLength: 50, //FOR character length
            // maxLines: 3,
            keyboardType: TextInputType.emailAddress,
            // textDirection: TextDirection.rtl,
            textInputAction: TextInputAction
                .next, //to jump cursor from one textfield to other

            decoration: InputDecoration(
              hintText: 'sk3615148@gmail.com',
              fillColor: Colors.amber,//use to fill textfield with color
              filled: true,
              contentPadding: const EdgeInsets.symmetric(vertical: 30),
              helperStyle: const TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              label: const Text('Email'),
              labelStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w900),
              prefixIcon: const Icon(Icons.email),
              suffixIcon: const Icon(Icons.save),
              //focused border:make border arround textfield when textfield active
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 4, color: Colors.deepPurple),
                  borderRadius: BorderRadius.circular(40)
                  ),
              errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 4, color: Colors.red),
                  borderRadius: BorderRadius.circular(50)),
                  //enableborder make border arround textfield before active
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 4, color: Colors.red),
                  borderRadius: BorderRadius.circular(50)),
            ),
          ),
          TextField(
            controller: psdController,
            // focusNode: focus,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                hintText: '11221122',
                helperStyle: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                label: Text('password'),
                labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w900),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87, width: 2),
                )),
          ),
          Container(
            height: 40,
            width: 60,
            color: Colors.amber,
            child: TextButton(
              onPressed: () {
                if (emailController.text == 'Siraj' &&
                    psdController.text == '123') {
                 debugPrint('User is Authenticated');
                } else if (emailController.text.isEmpty ||
                    psdController.text.isEmpty) {
                  debugPrint(
                      'Email or Password is Empty'); //use debugPrint to remove error
                } else {
                  debugPrint('User is UnAutherised');
                }
              },
              child: const Text(
                'Login',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
