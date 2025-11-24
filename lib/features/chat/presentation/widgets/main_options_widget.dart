import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp_clone/core/constants/app_enums.dart';
import 'package:whatsapp_clone/core/themes/app_colors.dart';

class MainOptionsWidget extends StatelessWidget {
  MainOptionsWidget({
    super.key,
    this.hasColor = false,
    this.onTap,
    required this.svgUrl,
    required this.isSelected,
  });

  final ValueNotifier<Color?> _color = ValueNotifier(null);
  final String svgUrl;
  final bool hasColor;
  final bool isSelected;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => _color.value = AppColors.cGrey800,
      onExit: (event) => _color.value = null,
      child: ValueListenableBuilder<Color?>(
        valueListenable: _color,
        builder: (_, color, _) {
          return GestureDetector(
            onTap: onTap,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: isSelected ? AppColors.cGrey800 : color,
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: SizedBox(
                width: 25,
                height: 25,
                child: SvgPicture.asset(
                  svgUrl,
                  colorFilter:
                      hasColor
                          ? null
                          : ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
