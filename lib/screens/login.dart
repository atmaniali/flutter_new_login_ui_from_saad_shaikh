import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screen_login_from_saad_shaikh/screens/sign_up.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 418.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/img.png"),
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 355.h, left: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign in",
                    style: TextStyle(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(width: 74.w, height: 2.h, color: Color(0xFFFF8383)),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w),
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
                    hintText: "at least 8 characters",
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: CheckboxListTile(
                        // tileColor: Colors.red,
                        title: const Text('Remember Me'),
                        value: true,
                        onChanged: (bool? value) {},
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Color(0xFFFF8383),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 88.h,),
                SizedBox(
                  height: 49.w,
                  width: 343.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFF8383),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.r)
                      )
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen()));
                    }, child: Text("Sign up")),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

