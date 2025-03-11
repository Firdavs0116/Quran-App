import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/core/common/injection.dart';
import 'package:quran_app/core/common/utils/app_icons.dart';
import 'package:quran_app/core/common/utils/app_images.dart';
import 'package:quran_app/core/common/utils/appcolorsstyle.dart';
import 'package:quran_app/home/presentation/controller/provider/home_provider.dart';
import 'package:quran_app/home/presentation/screens/surah_details_screen.dart';
import 'package:quran_app/home/presentation/widgets/text_controller_widget.dart';

class SurahScreen extends StatefulWidget {
  const SurahScreen({
    super.key,
  });

  @override
  State<SurahScreen> createState() => _SurahScreenState();
}

class _SurahScreenState extends State<SurahScreen> {
  final searchSurahcontroller = TextEditingController();

  @override
  void initState() {
    super.initState();
    final homeProvider = getIt<HomeProvider>();
    homeProvider.getSurah();
  }

  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeProvider>(context);

    return DefaultTabController(
      length: 2,
      child: SafeArea(
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
                          width: MediaQuery.of(context).size.width * 0.90,
                          AppImages.quran,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: SearchTextField(
                        controller: searchSurahcontroller,
                        onChanged: (vale) {
                          homeProvider.searchSurah(vale);
                        },
                      ),
                    ),
                  ],
                ),
                TabBar(
                  labelColor: Appcolorsstyle.darkBlue,
                  unselectedLabelColor: Colors.white60,
                  indicatorColor: Appcolorsstyle.darkBlue,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: <Widget>[
                    Tab(text: "Sura"),
                    Tab(text: "Pora"),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Consumer<HomeProvider>(
                        builder: (context, homeProvider, child) {
                          if (homeProvider.isloading) {
                            return Center(
                              child: CupertinoActivityIndicator(
                                color: Colors.white,
                              ),
                            );
                          }
                          if (homeProvider.allSurah?.data?.isEmpty ?? true) {
                            return Center(
                              child: Text("Suralar Topilmadi"),
                            );
                          }
                          return Center(
                              child: ListView.builder(
                            keyboardDismissBehavior:
                                ScrollViewKeyboardDismissBehavior.onDrag,
                            physics: BouncingScrollPhysics(),
                            itemCount: homeProvider.filteredSurah?.length ?? 0,
                            itemBuilder: (context, index) {
                              final surah = homeProvider.filteredSurah?[index];
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        if (surah != null) {
                                          Navigator.push(
                                              context,
                                              CupertinoPageRoute(
                                                builder: (context) =>
                                                    SurahDetailsScreen(
                                                        surahId: surah.number),
                                              ));
                                        }
                                      },
                                      child: Container(
                                        color:
                                            Colors.transparent.withOpacity(0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          Image.asset(
                                                            AppIcons
                                                                .phone,
                                                            width: 45.w,
                                                            height: 45.h,
                                                          ),
                                                          Text(
                                                            surah!.number
                                                                .toString(),
                                                            style: TextStyle(
                                                                color: Appcolorsstyle.
                                                                    darkBlue,
                                                                fontSize: 14.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          )
                                                        ]),
                                                  ),
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        surah.englishName
                                                            .toString(),
                                                        style: TextStyle(
                                                            color: Appcolorsstyle.darkBlue,
                                                            fontSize: 16.sp,
                                                            letterSpacing: 1),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            surah.revelationType
                                                                .toString(),
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xffBBC4CE),
                                                                fontSize:
                                                                    13.sp),
                                                          ),
                                                          Text(
                                                            " •${surah.numberOfAyahs.toString()} OYAT",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xffBBC4CE),
                                                                fontSize:
                                                                    13.sp),
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                            Text(
                                              surah.name.toString(),
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                  color: Appcolorsstyle.darkBlue
                                                      ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Divider(
                                      thickness: 0,
                                      color: Color(0xffBBC4CE),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ));
                        },
                      ),
                      Center(
                          child: Text("Pora",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
