import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTextField extends StatefulWidget {
  final TextEditingController controller;
  final Function(String)? onChanged;

  const SearchTextField({super.key, required this.controller, this.onChanged});

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: widget.onChanged,
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: "Qidiruv",
        hintStyle: TextStyle(color: Colors.white54, fontSize: 15.sp),
        filled: true,
        fillColor: Colors.transparent.withOpacity(0.2),
        suffixIcon: Icon(Icons.search_sharp, color: Colors.lightBlueAccent),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(color: Colors.blueAccent, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(color: Colors.blueAccent, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(color: Colors.blueAccent, width: 1),
        ),
      ),
      style: TextStyle(color: Colors.white),
    );
  }
}
