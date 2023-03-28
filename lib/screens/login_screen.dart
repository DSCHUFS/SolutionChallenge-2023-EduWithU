import 'package:eduwithu/screens/home.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5F7F1),
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Educate and Challenge!',
                    style: TextStyle(fontSize: 20, color: Color(0xff94E1D4)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 350,
                height: 55,
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/google_icon.png',
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Sign in with Google',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // Row(
              //   children: [
              //     Expanded(
              //       child: new Container(
              //         margin: const EdgeInsets.only(left: 10.0, right: 20.0),
              //         child: Divider(
              //           color: Color(0xFFA3EDD7),
              //           height: 36,
              //           thickness: 1,
              //         ),
              //       ),
              //     ),
              //     Text(
              //       'or Sign in with Email',
              //       style: TextStyle(color: Color(0xFF94E1D4)),
              //     ),
              //     Expanded(
              //       child: new Container(
              //         margin: const EdgeInsets.only(left: 20.0, right: 10.0),
              //         child: Divider(
              //           color: Color(0xFFA3EDD7),
              //           height: 36,
              //           thickness: 1,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Text(
              //       'Email',
              //       style: TextStyle(
              //         fontSize: 25,
              //       ),
              //     ),
              //   ],
              // ),
              // Container(
              //   width: 350,
              //   height: 55,
              //   padding: EdgeInsets.symmetric(
              //     vertical: 10,
              //     horizontal: 10,
              //   ),
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.circular(30),
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: [
              //       Text(
              //         'mail@website.com',
              //         style: TextStyle(
              //           fontSize: 18,
              //           color: Color(0xffA3EDD7),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Text(
              //       'Password',
              //       style: TextStyle(
              //         fontSize: 25,
              //       ),
              //     ),
              //   ],
              // ),
              // Container(
              //   width: 350,
              //   height: 55,
              //   padding: EdgeInsets.symmetric(
              //     vertical: 10,
              //     horizontal: 10,
              //   ),
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.circular(30),
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: [
              //       Text(
              //         'Min. 8 character',
              //         style: TextStyle(
              //           fontSize: 18,
              //           color: Color(0xffA3EDD7),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Container(
                  width: 350,
                  height: 55,
                  decoration: BoxDecoration(
                    color: const Color(0xFFA3EDD7),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
