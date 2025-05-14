import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StartUpScreen extends StatelessWidget {
  const StartUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 550.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/img.png"),
                  fit: BoxFit.cover
              ),
            ),
            child: SizedBox(height: 20.h,),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start, // vertical alignement
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisSize: MainAxisSize.min,
              children: [
                  Text(
                    "Welcome",
                    style: TextStyle(fontSize: 40.sp, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                SizedBox(height: 16.h,),
                SizedBox(
                  width: 309.w,
                    height: 40.h,
                    child: Text(
                        "Lorem ipsum dolor sit amet consectetur. Lorem id sit ",
                    style: TextStyle(color: Colors.grey[500], fontSize: 14.sp),
                    maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                ),
                SizedBox(height: 85.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Continue", style: TextStyle(color: Colors.grey[500], fontSize: 14.sp),),
                    SizedBox(width: 8.w,),
                    TextButton(
                      onPressed: (){},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 15.w,
                            height: 2.h,
                            color: Color(0xFFFF8383),
                          ),
                          SizedBox(width: 2.w,),
                          Container(
                            width: 36.w,
                            height: 36.w,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFFF8383)
                            ),
                            child: Icon(Icons.arrow_forward, color: Colors.white,size: 20.r,),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
