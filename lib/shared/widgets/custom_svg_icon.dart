import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomSvgIcon extends StatelessWidget {
  const CustomSvgIcon({
    super.key,
    required this.svgUrl,
    this.width,
    this.height,
    this.color,
  });

  final String svgUrl;
  final double? width;
  final double? height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 20.r,
      height: height ?? 20.r,
      child: SvgPicture.asset(
        svgUrl,
        colorFilter: ColorFilter.mode(color ?? Colors.white, BlendMode.srcIn),
      ),
    );
  }
}
