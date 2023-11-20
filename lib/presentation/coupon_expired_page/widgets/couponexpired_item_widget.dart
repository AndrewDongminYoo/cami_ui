import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CouponexpiredItemWidget extends StatelessWidget {
  const CouponexpiredItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "lbl_1002".tr,
          style: theme.textTheme.displaySmall,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 4.h,
            top: 8.v,
          ),
          child: Text(
            "lbl202".tr,
            style: theme.textTheme.headlineLarge,
          ),
        ),
      ],
    );
  }
}
