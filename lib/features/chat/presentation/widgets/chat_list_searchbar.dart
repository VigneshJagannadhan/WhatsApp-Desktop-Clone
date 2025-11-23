import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/core/themes/app_styles.dart';

class ChatListSearchbar extends StatelessWidget {
  const ChatListSearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: TextFormField(
        cursorColor: Colors.white,
        cursorHeight: 15.h,
        cursorWidth: 0.5.w,
        style: AppStyles.ts12cWhite,
        decoration: InputDecoration(
          hintText: 'Ask Meta AI or Search',
          hintStyle: AppStyles.ts12cGrey600,

          isDense: true,
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            child: Icon(Icons.search, size: 16.sp, color: Colors.grey.shade600),
          ),
          prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
          contentPadding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),

          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 0.1),
            borderRadius: BorderRadius.circular(8.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue.shade700, width: 2),
            borderRadius: BorderRadius.circular(8.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 0.1),
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
      ),
    );
  }
}
