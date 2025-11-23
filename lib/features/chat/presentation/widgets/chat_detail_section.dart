import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp_clone/core/constants/app_constants.dart';
import 'package:whatsapp_clone/core/themes/app_styles.dart';

class EmptyChatDetailSection extends StatelessWidget {
  const EmptyChatDetailSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 70.r,
            height: 70.r,
            child: SvgPicture.asset(
              AppConstants.whatsappSvg,
              colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
            ),
          ),
          SizedBox(height: 25.h),
          Text('WhatsApp for Mac', style: AppStyles.ts24W400cGrey),
        ],
      ),
    );
  }
}
