import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/assets/gradient_color.dart';

void main() {
  runApp(
    const LoginApp(),
  );
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData.dark(),
      home: const register_page(),
    );
  }
}

class register_page extends StatefulWidget {
  const register_page({super.key});

  @override
  State<register_page> createState() => _register_pageState();
}

class _register_pageState extends State<register_page> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        padding: const EdgeInsets.only(
          top: 50,
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [rg1, rg2],
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 120,
                  backgroundImage: AssetImage(
                    'lib/assets/image/register.jpg',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Welcome to ',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 25,
                            ),
                          ),
                          TextSpan(
                            text: 'Notes App',
                            style: TextStyle(
                              color: Colors.yellowAccent,
                              fontSize: 25,
                            ),
                          ),
                          TextSpan(
                            text: ' :)',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: email,
                        enableSuggestions: false,
                        keyboardType: TextInputType.emailAddress,
                        autofillHints: const [AutofillHints.email],
                        decoration: InputDecoration(
                          hintText: 'Email Address',
                          prefixIcon: const Icon(
                            Icons.account_circle,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: password,
                        enableSuggestions: false,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          prefixIcon: const Icon(
                            Icons.vpn_key_sharp,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                CupertinoButton(
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                      color: const Color(0xff662D8C),
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 3,
                          spreadRadius: 0,
                          color: Color.fromRGBO(
                            120,
                            37,
                            139,
                            0.25,
                          ),
                        ),
                      ],
                    ),
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  onPressed: () {},
                ),
                const Divider(
                  height: 20,
                  color: Colors.white30,
                  thickness: 1,
                  indent: 10,
                  endIndent: 10,
                ),
                const SizedBox(
                  height: 5,
                ),
                CupertinoButton(
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: const Text(
                      "Already an Account",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
