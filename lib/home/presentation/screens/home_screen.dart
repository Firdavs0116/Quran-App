import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:quran_app/core/common/injection.dart';
import 'package:quran_app/core/common/utils/app_images.dart';
import 'package:quran_app/home/presentation/controller/provider/home_provider.dart';
import 'package:quran_app/home/presentation/utils/sections_list.dart';
import 'package:quran_app/home/presentation/widgets/grid_widgets.dart';
import 'package:quran_app/home/presentation/widgets/home_main_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    final homeProvider = getIt<HomeProvider>();
    homeProvider.getSurah();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 45.h,
          backgroundColor: Color.fromARGB(255, 96, 24, 220),
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                ZoomDrawer.of(context)?.toggle();
              },
              child: Image.asset(
                AppImages.quran,
                width: 35.w,
                height: 35.h,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset(
                AppImages.quran,
                width: 35.w,
                height: 35.h,
              ),
            ),
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF5F27EC),
                Color(0xFF10208B),
              ],
            ),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        height: 200.h,
                        AppImages.quran,
                        fit: BoxFit.contain,
                      ),
                      Image.asset(AppImages.quran),
                    ],
                  ),
                  const Home_main_widget(),
                ],
              ),
              Expanded(
                child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.all(15),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 20.h,
                    crossAxisSpacing: 40.w,
                    crossAxisCount: 2,
                  ),
                  itemCount: sections.length,
                  itemBuilder: (context, index) {
                    return GridItemWidget(
                      title: sections[index]["title"]!,
                      subtitle: sections[index]["subtitle"]!,
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => sections[index]["screen"],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
