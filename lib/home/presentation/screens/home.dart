import 'package:flutter/material.dart';
import 'package:quran_app/core/common/utils/app_images.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: 
    Center(child: Image.asset(AppImages.splash),),);
  }
}