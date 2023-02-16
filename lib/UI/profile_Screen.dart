import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../String File/image_string.dart';
import '../String File/text_string.dart';
import 'Tab_grid_screens/tabbar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0Xff08080D),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45, right: 20, left: 20),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 28.sp,
                  ),
                ),
                SizedBox(width: 100.w),
                Text(
                  simonprofile,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  width: 80.w,
                  height: 80.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.5),
                    // color: Colors.yellow,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          15.r), // image: DecorationImage(
                      image: const DecorationImage(
                          image: AssetImage(
                            profile_5,
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      simonLee,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      simonLeeSub,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Row(
              children: [
                SizedBox(
                  height: 60.h,
                  width: 230.w,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.yellow.shade900,
                        Colors.yellow.shade900,
                        Colors.orange.shade400,
                        Colors.orange.shade400,
                      ]),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.transparent,
                        onSurface: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                      child: const Text(
                        follow,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: 60.h,
                  width: 75.w,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                      ),
                      child: Icon(
                        Icons.sms,
                        color: Colors.black,
                        size: 20.sp,
                      )),
                ),
              ],
            ),
          ),

          ///__________________ tab bar _________________________
          SizedBox(height: 15.h),
          AnalyzePage(),
        ],
      ),
    );
  }
}
