import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran_app/core/common/utils/appcolorsstyle.dart';
import 'package:quran_app/core/widgets/custom_button.dart';
import 'package:quran_app/core/widgets/custom_text_field.dart';
import 'package:quran_app/features/auth/presentation/blocs/authbloc.dart';
import 'package:quran_app/features/auth/presentation/blocs/authevent.dart';
import 'package:quran_app/features/auth/presentation/blocs/authstate.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message), backgroundColor: Colors.red),
            );
          }
        },
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sign Up", style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold)),
                Divider(thickness: 2, color: Appcolorsstyle.darkBlue),
                SizedBox(height: 30.h),
                CustomTextField(controller: _emailController, hintText: "Email", icon: Icons.email),
                SizedBox(height: 20.h),
                CustomTextField(controller: _passwordController, hintText: "Password", icon: Icons.lock, isPassword: true),
                SizedBox(height: 20.h),
                CustomTextField(controller: _confirmPasswordController, hintText: "Confirm Password", icon: Icons.lock, isPassword: true),
                SizedBox(height: 30.h),
                CustomButton(
                  text: "Sign Up", onTap: () { 
                    if (_passwordController.text.trim() != _confirmPasswordController.text.trim()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Passwords do not match"), backgroundColor: Colors.red),
                      );
                      return;
                    }
                    context.read<AuthBloc>().add(
                      SignUpEvent(
                        email: _emailController.text.trim(),
                        password: _passwordController.text.trim(),
                      ),
                    );
                   },
                  
                ),
                SizedBox(height: 20.h),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Text("Already have an account? Sign In", style: TextStyle(color: Appcolorsstyle.darkBlue)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
