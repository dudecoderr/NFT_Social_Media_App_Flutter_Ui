import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism/glassmorphism.dart';

import '../Constant File/List.dart';
import '../Constant File/home_id_horizontal_container_constant.dart';
import '../String File/text_string.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ///============= carousal slider var ==================
  int current = 0;
  final CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0Xff08080D),
      body: SingleChildScrollView(
        child: DefaultTabController(
          length: 3,
          initialIndex: 0,
          animationDuration: Duration(seconds: 1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 45, right: 20, left: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.drag_handle,
                      color: Colors.white70,
                      size: 28.sp,
                    ),
                    Spacer(),
                    Icon(
                      Icons.search,
                      color: Colors.white70,
                      size: 28.sp,
                    )
                  ],
                ),
              ),
              SizedBox(height: 25.h),

              ///________________________ HomeProfileHorizontal  ___________________

              const HomeProfileHorizontal(),
              SizedBox(height: 10.h),

              ///________________________ TitalHorizontal  ___________________
              Container(
                height: 48.h, width: MediaQuery.of(context).size.width,
                // padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color(0Xff08080D),
                    // color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10)),
                child: TabBar(
                  indicator: BoxDecoration(
                      color: Color(0Xff08080D),
                      borderRadius: BorderRadius.circular(5)),
                  labelColor: Colors.white,
                  labelStyle:
                      TextStyle(fontSize: 23.sp, fontWeight: FontWeight.w600),
                  unselectedLabelColor: Colors.white54,
                  tabs: const [
                    Tab(
                      text: "# trends",
                    ),
                    Tab(
                      text: top,
                    ),
                    Tab(
                      text: artist,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.h),

              ///________________________ CarouselSlider  ___________________
              Column(
                children: [
                  CarouselSlider.builder(
                    itemCount: items.length,
                    carouselController: carouselController,
                    options: CarouselOptions(
                        height: 485,
                        viewportFraction: 0.9,
                        autoPlay: false,
                        aspectRatio: 4,
                        enlargeCenterPage: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            current = index;
                          });
                        }),
                    itemBuilder: (context, index, realIdx) {
                      final imgList = items[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                        ),
                        child: Container(
                          // height: MediaQuery.of(context).size.height * 0.27,
                          height: 480,
                          width: 480,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(
                                imgList.urlImages,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),

                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: GlassmorphicContainer(
                              height: 130.h,
                              margin: EdgeInsets.all(8),
                              width: MediaQuery.of(context).size.width,
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
                                    padding: EdgeInsets.only(
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
                                                  BorderRadius.circular(20.r),
                                              child: Image.asset(
                                                imgList.profileImage.toString(),
                                                fit: BoxFit.cover,
                                                height: 50.h,
                                                width: 50.w,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5),
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
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 2.h),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
