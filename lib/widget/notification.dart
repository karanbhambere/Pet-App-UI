import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pet_app/theme/color.dart';

class NotificationBox extends StatelessWidget {
  const NotificationBox({
    super.key,
    this.onTap,
    this.notifiedNumber = 0,
  });

  final GestureTapCallback? onTap;
  final int notifiedNumber;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.appBarColor,
          border: Border.all(color: Colors.grey.withOpacity(.3)),
        ),
        child: notifiedNumber > 0
            ? Badge(
                backgroundColor: AppColor.actionColor,
                child: SvgPicture.asset(
                  "assets/icons/bell.svg",
                  width: 25,
                  height: 25,
                ),
              )
            : SvgPicture.asset("assets/icons/bell.svg"),
      ),
    );
  }
}
