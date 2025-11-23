import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/core/constants/app_constants.dart';
import 'package:whatsapp_clone/core/constants/app_enums.dart';
import 'package:whatsapp_clone/features/chat/presentation/widgets/main_options_widget.dart';
import 'package:whatsapp_clone/features/home/presentation/providers/home_provider.dart';

class MainOptionsBar extends StatelessWidget {
  const MainOptionsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      color: Colors.grey.shade900,
      child: Consumer<HomeProvider>(
        builder: (context, homeProvider, _) {
          return Column(
            children: [
              MainOptionsWidget(
                svgUrl: AppConstants.chatsSvg,
                onTap: () => homeProvider.selectSection(MainSection.chats),
              ),
              SizedBox(height: 5.h),
              MainOptionsWidget(
                svgUrl: AppConstants.callsSvg,
                onTap: () => homeProvider.selectSection(MainSection.calls),
              ),
              SizedBox(height: 5.h),
              MainOptionsWidget(
                svgUrl: AppConstants.updatesSvg,
                onTap: () => homeProvider.selectSection(MainSection.updates),
              ),
              SizedBox(height: 5.h),
              Divider(color: Colors.white, thickness: .1.sp),
              SizedBox(height: 5.h),
              MainOptionsWidget(
                svgUrl: AppConstants.archiveSvg,
                onTap: () => homeProvider.selectSection(MainSection.archived),
              ),
              SizedBox(height: 5.h),
              MainOptionsWidget(
                svgUrl: AppConstants.starredSvg,
                onTap: () => homeProvider.selectSection(MainSection.starred),
              ),
              SizedBox(height: 5.h),
              Divider(color: Colors.white, thickness: .1.sp),
              SizedBox(height: 5.h),
              MainOptionsWidget(
                svgUrl: AppConstants.metaSvg,
                hasColor: true,
                onTap: () => homeProvider.selectSection(MainSection.meta),
              ),
              Spacer(),
              MainOptionsWidget(svgUrl: AppConstants.settingsSvg, onTap: () {}),
            ],
          );
        },
      ),
    );
  }
}
