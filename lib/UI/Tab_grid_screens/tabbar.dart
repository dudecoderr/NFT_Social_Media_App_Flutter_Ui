import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'collected_staired_image.dart';
import 'created_staired_grid_image.dart';

class AnalyzePage extends StatelessWidget {
  const AnalyzePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      animationDuration: Duration(seconds: 1),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Container(
              height: 45,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Color(0Xff08080D),
                  borderRadius: BorderRadius.circular(10)),
              child: TabBar(
                indicator: BoxDecoration(
                    color: Color(0Xff08080D),
                    borderRadius: BorderRadius.circular(5)),
                labelColor: Colors.white,
                labelStyle:
                    TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                unselectedLabelColor: Colors.white54,
                tabs: const [
                  Tab(
                    text: 'Created',
                  ),
                  Tab(
                    text: 'Collected',
                  ),
                ],
              ),
            ),
            SizedBox(
                // height: 200,
                height: 350.h,
                child: TabBarView(
                  children: [
                    CreatedPage(),
                    CollectedPage(),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
