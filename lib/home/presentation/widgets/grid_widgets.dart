import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran_app/core/common/utils/app_images.dart';

class GridItemWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const GridItemWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.2),
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: Offset(0, 4),
                ),
              ],
              image: DecorationImage(
                image: AssetImage(AppImages.quran),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(180, 75, 194, 249),
                      Color.fromARGB(180, 18, 61, 124),
                    ],
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: TextStyle(color: Colors.white, fontSize: 20.sp),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        subtitle,
                        style: TextStyle(color: Colors.white, fontSize: 18.sp),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 2.h,
            left: 2.w,
            child: CircleAvatar(
              backgroundColor: Color(0xff0C2165).withOpacity(0.2),
              radius: 20.w,
              child: IconButton(
                iconSize: 20.w,
                onPressed: onTap,
                icon:
                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
