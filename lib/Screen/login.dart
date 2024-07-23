// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896), // Set the design size of your screen
      builder: (context, child) {
        return MaterialApp(
          home: Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 42.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 122.r, left: 100.r),
                      child: SvgPicture.asset(
                        'assets/insta.svg', // Path to your SVG image
                        width: 204.w,
                        height: 60.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 107.r),
                      child: Container(
                        height: 46.h,
                        width: 330.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 71, 91, 205),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 40.r),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/FB.svg', // Path to your SVG image
                                width: 32.w,
                                height: 32.w,
                              ),
                              SizedBox(
                                width: 24.w,
                              ),
                              Text(
                                'Login with Facebook yes log in',
                                style: TextStyle(
                                  fontSize: 18.h,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Padding(padding: EdgeInsets.only(bottom: 40.w)),
                        Container(
                          width: 120.w,
                          height: 3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromARGB(255, 203, 203, 207),
                          ),
                        ),
                        Text("OR"),
                        Container(
                          width: 120.w,
                          height: 3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromARGB(255, 203, 203, 207),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: Color.fromARGB(100, 194, 185, 188)),
                        ),
                        labelText: 'phone number,username, or email',
                        labelStyle: TextStyle(
                          fontSize: 16.h,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                          fontFamily: 'Roboto',
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 148, 147, 147)),
                        ),
                        fillColor: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: Color.fromARGB(100, 194, 185, 188)),
                        ),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          fontSize: 16.h,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                          fontFamily: 'Roboto',
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 148, 147, 147)),
                        ),
                        fillColor: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 208),
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: Color.fromARGB(255, 60, 107, 217),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                        height: 46.h,
                        width: 330.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 71, 91, 205),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            fontSize: 18.h,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Roboto',
                          ),
                        )),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 97.w),
                        child: Text(
                          "Don’t have an account? sign up",
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                          ),
                        )),
                    SizedBox(
                      height: 20.h,
                    ),Padding(
                        padding: EdgeInsets.only(left: 140.r),
                        child: Text("    from\nFACEBOOK")),
                    
                  ]),
            ),
          ),
        );
      },
    );
  }
}
