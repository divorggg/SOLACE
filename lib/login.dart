import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController textControllerUsername = TextEditingController();
  TextEditingController textControllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('assets/image/login.png'),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(
                    color: Colors.red,
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi Welcome to SOLACE',
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                          Text('Submit your Username',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Text('Log in',
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                              child: TextFormField(
                                controller: textControllerUsername,
                                style: TextStyle(color: Colors.black),
                                decoration: const InputDecoration(
                                  hintText: 'Username',
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                              child: TextFormField(
                                controller: textControllerPassword,
                                style: TextStyle(color: Colors.black),
                                obscureText: true,
                                decoration: const InputDecoration(
                                    hintText: 'Password',
                                    hintStyle: TextStyle(color: Colors.grey)),
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: 200,
                            height: 40,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.yellow),
                              onPressed: () {
                                if (textControllerPassword.text == 'admin') {
                                  Navigator.pushNamed(context, '/dashboard',
                                      arguments: textControllerUsername.text);
                                }
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 50),
                      child: Column(
                        children: [
                          Text(
                            'By signing up, you agree to our Terms of Use and Privacy Policy',
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
