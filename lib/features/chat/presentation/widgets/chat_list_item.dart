import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/core/themes/app_styles.dart';

class ChatListItem extends StatelessWidget {
  ChatListItem({super.key});

  final ValueNotifier<Color?> _color = ValueNotifier(null);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => _color.value = Colors.grey.shade800,
      onExit: (event) => _color.value = null,
      child: ValueListenableBuilder(
        valueListenable: _color,
        builder: (_, color, _) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9.r),
              color: color,
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25.r,
                  backgroundImage: NetworkImage(
                    'https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250',
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Vignesh Jagannadhan',
                        style: AppStyles.ts14W500cWhite,
                      ),
                      Text('Hi there', style: AppStyles.ts12W300cGrey),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Yesterday', style: AppStyles.ts12W300cGrey),
                    SizedBox(height: 5.h),
                    CircleAvatar(
                      radius: 10.r,
                      backgroundColor: Colors.green,
                      child: Text('1', style: AppStyles.ts10W300cBlack),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
