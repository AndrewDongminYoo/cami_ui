import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SolutionlistItemWidget extends StatelessWidget {
  const SolutionlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 179.v,
      width: 361.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 179.v,
              width: 361.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
                border: Border.all(
                  color: appTheme.gray300,
                  width: 1.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 161.v,
              width: 343.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgImage161x343,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
