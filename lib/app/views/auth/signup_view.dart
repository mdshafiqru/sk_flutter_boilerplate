// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/constants/color_palatte.dart';

class SignupView extends StatelessWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 52.h),
                Text(
                  'Sign Up to Masterminds',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: darkTextColor,
                  ),
                ),
                SizedBox(height: 4.h),
                Wrap(
                  children: [
                    Text(
                      'Already have an account? ',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: lightTextColor,
                      ),
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: purpleColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                getTextField(hint: 'Full Name'),
                SizedBox(height: 16.h),
                getTextField(hint: 'Email'),
                SizedBox(height: 16.h),
                getTextField(hint: 'Password'),
                SizedBox(height: 16.h),
                getTextField(hint: 'Confirm Password'),
                SizedBox(height: 16.h),
                SizedBox(
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {},
                    color: purpleColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 14.h),
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                Row(
                  children: [
                    Expanded(child: Divider()),
                    SizedBox(width: 16.w),
                    Text(
                      'or sign up via',
                      style: TextStyle(
                        color: lightTextColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 16.w),
                    Expanded(child: Divider()),
                  ],
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: borderColor),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 14.h),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/images/google-logo.png",
                          width: 20.w,
                        ),
                        SizedBox(width: 5.w),
                        Text(
                          'Google',
                          style: TextStyle(
                            color: darkTextColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                Wrap(
                  children: [
                    Text(
                      'By Signing up to Mastermind you agree to our ',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: lightTextColor,
                      ),
                    ),
                    Text(
                      'Terms and conditions',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: purpleColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getTextField({required String hint}) => TextFormField(
        style: TextStyle(fontSize: 14.sp),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Colors.transparent, width: 0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Colors.transparent, width: 0),
          ),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
          filled: true,
          fillColor: textFieldColor,
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
}
