import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran_app/core/common/utils/app_icons.dart';

class Home_main_widget extends StatelessWidget {
  const Home_main_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 140.h,
      left: 15.w,
      right: 15.w,
      bottom: 0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 75, 148, 222),
              Color.fromARGB(255, 7, 70, 163),
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.2),
              blurRadius: 15,
              spreadRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
          color: Colors.blue.withOpacity(0.8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 10,
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.menu_book, color: Colors.white, size: 16),
                SizedBox(width: 5.w),
                Text(
                  "Oxirgi o'qilgan",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 5.h),
                      Text(
                        "Fotiha surasi",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 3.h),
                      Text(
                        "Oyat  No:1",
                        style: TextStyle(
                          letterSpacing: 1.5,
                          fontSize: 14.sp,
                          color: Colors.white70,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  Image.asset(
                    AppIcons.quraIcon,
                    width: 30.w,
                    height: 30.h,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
