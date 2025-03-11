import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:quran_app/core/common/utils/app_images.dart';
import 'package:quran_app/features/auth/service/auth_service.dart';
import 'package:quran_app/home/presentation/screens/home_screen.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        menuScreen: MenuScreen(),
        mainScreen: HomeScreen(),
        borderRadius: 30,
        showShadow: true,
        angle: -2,
        overlayBlur: 1.2,
        slideWidth: MediaQuery.of(context).size.width * 0.75,
        menuBackgroundColor: Color(0xff5E17EB),
        moveMenuScreen: true,
        drawerShadowsBackgroundColor: Color.fromARGB(255, 87, 135, 165));
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthService authService = AuthService();
    return Scaffold(
      backgroundColor: Color(0xff5E17EB).withOpacity(0.8),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: DrawerHeader(
                    curve: Curves.easeIn,
                    decoration: BoxDecoration(),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            AppImages.quran,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Text(
                          "Qur'on Karim",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.white,
                              letterSpacing: 1),
                        ),
                        Text(
                          "O'zbek foydalanuchilari uchun😊",
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: const Color.fromARGB(194, 255, 255, 255),
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1),
                          textAlign: TextAlign.center,
                        )
                      ],
                    )),
              ),
              ListTile(
                leading: const Icon(Icons.person_outline_rounded,
                    color: Colors.white),
                title: Text(
                  'Kirish',
                  style: TextStyle(color: Colors.white, fontSize: 16.sp),
                ),
                onTap: () {},
              ),
              ListTile(
                leading:
                    const Icon(Icons.star_half_outlined, color: Colors.white),
                title: Text('Baxolash',
                    style: TextStyle(color: Colors.white, fontSize: 16.sp)),
              ),
              ListTile(
                leading: Icon(Icons.menu_book, color: Colors.white),
                title: Text('Aloqa',
                    style: TextStyle(color: Colors.white, fontSize: 16.sp)),
              ),
              ListTile(
                leading: const Icon(Icons.info_outline, color: Colors.white),
                title: Text('Biz haiqimizda ',
                    style: TextStyle(color: Colors.white, fontSize: 16.sp)),
              ),
              ListTile(
                leading:
                    const Icon(Icons.settings_outlined, color: Colors.white),
                title: Text('Sozlamalar',
                    style: TextStyle(color: Colors.white, fontSize: 16.sp)),
              ),
              ListTile(
                onTap: () async {
                  await authService.signOut(context);
                },
                leading: const Icon(Icons.logout_rounded, color: Colors.white),
                title: Text('Chiqish',
                    style: TextStyle(color: Colors.white, fontSize: 16.sp)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
