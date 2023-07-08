import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:register/Share/componants.dart';
import 'LoginScreen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isPassword = true;
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passswordController = TextEditingController();
  final cpasswordController = TextEditingController();
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
          child: Column(
            children: <Widget>[
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: 230.0,
                  decoration: BoxDecoration(
                    color: Color(0xff252121),
                  ),
                  child: Center(
                    child: Text(
                      'Register',
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
                height: 40,
              ),
              MyTextFormFeild(
                  controller: fullNameController,
                  lableText: 'Full Name',
                  prefixIcon: Icons.man,
                  padding: 10,
                  keybourdType: TextInputType.name,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Say My Name ';
                    }
                  }),
              MyTextFormFeild(
                  controller: emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Say My Name ';
                    }
                  },
                  lableText: 'Email',
                  prefixIcon: Icons.mail,
                  padding: 10,
                  keybourdType: TextInputType.emailAddress),
              MyTextFormFeild(
                controller: phoneController,
                lableText: 'Phone',
                prefixIcon: Icons.phone,
                padding: 10,
                keybourdType: TextInputType.phone,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Say My Name ';
                  }
                },
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 11),
                child: TextFormField(
                  controller: passswordController,
                  obscureText: isPassword,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Color(0xff252121))
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Color(0xff252121)),
                    prefixIcon: Icon(Icons.lock_outline_rounded,color: Color(0xff252121),),
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
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(11),
                child: TextFormField(
                  controller: cpasswordController,
                  obscureText: isPassword,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Color(0xff252121))
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(
                      color: Color(0xff252121)
                    ),
                    prefixIcon: Icon(Icons.lock_outline_rounded,color: Color(0xff252121)),
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
              // Yes it's Sized box again
              SizedBox(
                height: 50,
              ),

              Container(
                height: 55,
                width: 190,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) {
                          return LoginScreen();
                        }));
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff252121),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Container(
                height: 55,
                width: 190,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) {
                      return LoginScreen();
                    }));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff252121),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Colors.black, width: .3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    backgroundColor: Colors.white,
                    shadowColor: Colors.black,
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),
            ],
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
