import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

import '../String File/image_string.dart';
import '../String File/text_string.dart';
import '../UI/dashboard_screen.dart';

int selectedIndex = 0;

class HomeProfileHorizontal extends StatelessWidget {
  const HomeProfileHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 114.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: profile_4,
            image_caption: add,
          ),
          Category(
            image_location: profile_5,
            image_caption: marko,
          ),
          Category(
            image_location: profile_3,
            image_caption: simon,
          ),
          Category(
            image_location: profile_1,
            image_caption: elia,
          ),
          Category(
            image_location: profile_2,
            image_caption: rashMika,
          ),
          Category(
            image_location: profile_6,
            image_caption: marko,
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String? image_location;

  final String? image_caption;

  Category({
    this.image_location,
    this.image_caption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rightToLeft,
                    duration: const Duration(milliseconds: 200),
                    child: DashboardScreen()));
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => DashboardScreen()));
          },
          child: Column(
            children: [
              Container(
                width: 80.w,
                height: 80.h,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.orange, width: 1.5),
                  // color: Colors.yellow,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(15.r), // image: DecorationImage(
                    image: DecorationImage(
                        image: AssetImage(
                          image_location!,
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                image_caption!,
                style: TextStyle(color: Colors.white, fontSize: 16.sp),
              )
            ],
          )),
    );
  }
}
