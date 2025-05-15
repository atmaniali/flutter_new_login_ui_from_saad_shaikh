import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screen_login_from_saad_shaikh/screens/login.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 283.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/img.png"),
                    fit: BoxFit.cover,
                  alignment: Alignment.bottomLeft,
                ),
              ),
              child: Padding(
                  padding: EdgeInsets.only(left:24.w, top: 150.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "Sign Up",
                      style: TextStyle(
                        fontSize: 40.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(
                      width: 74.h,
                      height: 2.h,
                      color: Color(0xffff8383),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left:24.w, right: 24.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      label: Text("Email"),
                      icon: Icon(
                        Icons.email_outlined,
                        size: 20.r,
                        color: Colors.grey[400],
                      ),
                      hintText: "demo@email.com",
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.center,
                  ),
                  SizedBox(height: 24.h),
                  TextField(
                    decoration: InputDecoration(
                      label: Text("Phone no"),
                      icon: Icon(
                        Icons.email_outlined,
                        size: 20.r,
                        color: Colors.grey[400],
                      ),
                      hintText: "+ 00 000-0000-000",
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.phone,
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.center,
                  ),
                  SizedBox(height: 24.h),
                  TextField(
                    autocorrect: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      label: Text("Password"),
                      icon: Icon(
                        Icons.key_outlined,
                        size: 20.r,
                        color: Colors.grey[400],
                      ),
                      hintText: "enter your password",
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      suffixIcon: IconButton(
                        onPressed: () {
                          // _passwordVisible = !_passwordVisible;
                        },
                        icon: Icon(Icons.visibility),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                  SizedBox(height: 24.h),
                  TextField(
                    autocorrect: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      label: Text("Confirm Password"),
                      icon: Icon(
                        Icons.key_outlined,
                        size: 20.r,
                        color: Colors.grey[400],
                      ),
                      hintText: "Confirm your password",
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      suffixIcon: IconButton(
                        onPressed: () {
                          // _passwordVisible = !_passwordVisible;
                        },
                        icon: Icon(Icons.visibility),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                  SizedBox(height: 93.h,),
                  SizedBox(
                    width: 343.w,
                    height: 49.h,
                    child: ElevatedButton(
                        onPressed: (){}, 
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffff8383),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r)
                          )
                        ),
                        child: Text("Create Account",
                          style: TextStyle(
                              color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("Already have an Account? ",
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                    TextButton(
                        onPressed: (){
                          Navigator
                              .of(context)
                              .push(
                              MaterialPageRoute(builder: (context)=> LoginScreen()));
                        },
                        child: Text("Login",
                          style: TextStyle(
                            color: Color(0xffff8383)
                          ),
                        )
                    )
                  ],)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
