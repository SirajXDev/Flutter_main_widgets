import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(padding: EdgeInsets.only(top: 120)),
            const SafeArea(
                child: Text(
              'Sign In',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            )),
            // const Padding(padding: EdgeInsets.only(bottom: 30)),
            //or
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Enter your email and password',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 90)),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                label: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('Email'),
                ),
              ),
            ),
            TextField(
              controller: passwordController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('Password'),
                ),
              ),
            ),

            Align(alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                },
                child: const Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: Colors.orange,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
           // const Padding(padding: EdgeInsets.only(top: 10)),
            TextButton(
              onPressed: () {
                if (emailController.text == 'sirajkhan' &&
                    passwordController.text == '1122') {
                  debugPrint('successfully login');
                } else {
                  debugPrint('email or password is incorrect');
                }
              },
              child: Container(
                height: 44,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: const Center(
                    child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Dont have an acount?  ',
                  style: TextStyle(fontSize: 16),
                ),
                TextButton(
                  onPressed: () {
                    debugPrint('sign up button is pressed');
                  },
                  child: const Text('Sign up',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      )),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 5)),
            const Text(
              'Sign In with ',
              style: TextStyle(fontSize: 16),
            ),
            const Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    debugPrint('login to facebook');
                  },
                  child: const Image(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/R.9d13eaaf6566b8bdf715bd38c110aec0?rik=rY2INEiHKMVz2w&riu=http%3a%2f%2f3.bp.blogspot.com%2f-KNqO9JuXUN8%2fTi2b1LHRquI%2fAAAAAAAAAIU%2fL6k8Wlzxj9k%2fs1600%2flogo_facebook.png&ehk=ziMr2C3oUEw31MWuloKmoKqzMBzkqgUnFMR%2bsHqWeHM%3d&risl=&pid=ImgRaw&r=0'),
                    height: 45,
                    width: 44,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 40)),
                TextButton(
                  onPressed: () {
                    debugPrint('login to linkdin');
                  },
                  child: const Image(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/R.3ffcfcb93b1527cb663e7da9ac9c0ea5?rik=9tOIpBbhMTi0tA&pid=ImgRaw&r=0'),
                    height: 45,
                    width: 44,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 40)),
                TextButton(
                  onPressed: () {
                    debugPrint('login to google');
                  },
                  child: const Image(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/R.d88d6002d6cfe1ee9c43711f3073ad7a?rik=jQOAYSPjq724yg&pid=ImgRaw&r=0'),
                    height: 45,
                    width: 44,
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 5)),
            Center(
                child: TextButton(
              onPressed: () {},
              child: const Text(
                'Skip now -->',
                style: TextStyle(fontSize: 16),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
