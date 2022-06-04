import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(children: [
          SizedBox(
            // width: double.infinity,
            // height: double.infinity,
            child: Image.asset(
              "assets/images/login.png",
            ),
          ),
          const Text("Welcome To LETSCOOK"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              obscureText: false,
              decoration: const InputDecoration(labelText: "Username"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                obscureText: true,
                // controller: textController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                )),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                    fixedSize: const Size(150, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                // style: ButtonStyle(
                //     backgroundColor: MaterialStateProperty.all(Colors.amber),
                //     shape:MaterialStateProperty.all()),
                child: const Text(
                  "LOGIN",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              )),
          const Padding(padding: EdgeInsets.only(bottom: 40.0)),
          TextButton(
            child: const Text("GO BACK"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
        ]),
      ),
    );
  }
}
