import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:nft_social_media_flutter_ui/UI/profile_Screen.dart';
import 'package:page_transition/page_transition.dart';

import '../Constant File/List.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int current = 0;
  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0Xff08080D),
      body: Stack(
        children: [
          Column(
            children: [
              CarouselSlider.builder(
                itemCount: items.length,
                carouselController: carouselController,
                options: CarouselOptions(
                    height: MediaQuery.of(context).size.height,
                    viewportFraction: 1,
                    autoPlay: false,
                    aspectRatio: 9,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        current = index;
                      });
                    }),
                itemBuilder: (context, index, realIdx) {
                  final imgList = items[index];

                  return Container(
                    height: MediaQuery.of(context).size.height,
                    width: 490,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          imgList.urlImages,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
//______________________navigat ProfileScreen ____________________
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      duration:
                                          const Duration(milliseconds: 400),
                                      child: ProfileScreen()));
                            },
                            child: GlassmorphicContainer(
                              height: 130.h,
                              width: 330.w,
                              borderRadius: 25.sp,
                              blur: 8,
                              alignment: Alignment.bottomCenter,
                              border: 2,
                              linearGradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    const Color(0xFFffffff).withOpacity(0.1),
                                    const Color(0xFFFFFFFF).withOpacity(0.05),
                                  ],
                                  stops: const [
                                    0.1,
                                    1
                                  ]),
                              borderGradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.transparent,
                                  Colors.transparent
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 15, left: 15, top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          imgList.itemName,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(height: 5.h),
                                        Row(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15.r),
                                              child: Image.asset(
                                                imgList.profileImage.toString(),
                                                fit: BoxFit.cover,
                                                height: 50.h,
                                                width: 50.w,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    imgList.Name.toString(),
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18.sp,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Text(
                                                    imgList.subName.toString(),
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16.sp,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 10.h),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.webhook,
                                              color: Colors.white,
                                            ),
                                            SizedBox(width: 8.w),
                                            Text(
                                              imgList.etf.toString(),
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18.sp,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(width: 100.w),
                                            Text(
                                              imgList.time.toString(),
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18.sp,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          ///_______________________ 2nd container ____________________________
                          GlassmorphicContainer(
                            height: 80.h,
                            margin: EdgeInsets.all(8),
                            width: 330.w,
                            borderRadius: 25.sp,
                            blur: 8,
                            alignment: Alignment.bottomCenter,
                            border: 2,
                            linearGradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  const Color(0xFFffffff).withOpacity(0.1),
                                  const Color(0xFFFFFFFF).withOpacity(0.05),
                                ],
                                stops: const [
                                  0.1,
                                  1
                                ]),
                            borderGradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.transparent, Colors.transparent],
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 8),
                                  child: Container(
                                    height: 75.h,
                                    width: 75.w,
                                    decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          colors: [
                                            Colors.orange,
                                            Colors.orange,
                                            Colors.yellow
                                          ],
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.r)),
                                    child: Icon(
                                      Icons.keyboard_double_arrow_right,
                                      color: Colors.white70,
                                      size: 25.sp,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 50.w),
                                Text(
                                  "Place a bid",
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 18.sp),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 45, right: 20, left: 20),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 45.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 28.sp,
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  height: 45.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(15.r)),
                  child: Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                    size: 28.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
