import 'package:flutter/material.dart';
import 'package:register/Share/componants.dart';
import 'package:register/registerScreen.dart';

import 'AnimatedScreen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  bool isPassword = true;
  final formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: <Widget>[
                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    height: 230.0,
                    decoration: const BoxDecoration(
                      color: Color(0xff252121),
                    ),
                    child: const Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                MyTextFormFeild(
                  controller: emailController,
                  keybourdType: TextInputType.emailAddress,
                  lableText: 'Email',
                  prefixIcon: Icons.alternate_email,
                  padding: 20,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return ' Enter your email :) ';
                    } else if (emailController.text.contains('@') == false ||
                        emailController.text.contains('.') == false) {
                      return 'please enter  a correct email';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(cursorColor: Color(0xff252121),
                    controller: passwordController,
                    obscureText: isPassword,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'the password please --** ';
                      } else if (value.length < 8) {
                        return ' your Password is too Short';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color:Color(0xff252121),
                        )
                      ),
                      border: OutlineInputBorder(borderSide: BorderSide(color:Color(0xff252121), ),
                          borderRadius: BorderRadius.circular(15)),
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock_outline_rounded,color: Color(0xff252121)),
                      labelStyle: TextStyle(color:  Color(0xff252121)),
                      focusColor:  Color(0xff252121),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isPassword = !isPassword;
                          });
                        },
                        icon: isPassword
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),color: Color(0xff252121),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  height: 50,
                  width: 190,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        debugPrint(emailController.text);
                        debugPrint(passwordController.text);

                        Navigator.push(context,
                            MaterialPageRoute(builder: (builder) {
                          return AnimatedScreen();
                        }));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.black, width: .1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19)),
                      backgroundColor:Color(0xff252121),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  width: 190,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) {
                        return RegisterScreen();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.black, width: .1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19)),
                      backgroundColor: Colors.white,
                    ),
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff252121),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    final lowPoint = size.height - 20;
    final highPoint = size.height - 40;
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width / 4, highPoint, size.width / 2, lowPoint);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, lowPoint);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
