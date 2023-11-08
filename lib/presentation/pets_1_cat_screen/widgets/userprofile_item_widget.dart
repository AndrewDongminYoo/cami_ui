import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget({
    Key? key,
    this.onTapView,
  }) : super(
          key: key,
        );

  VoidCallback? onTapView;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.v,
      width: 175.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 180.v,
              width: 175.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  12.h,
                ),
                border: Border.all(
                  color: appTheme.gray90003,
                  width: 1.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 112.v,
              width: 138.h,
              margin: EdgeInsets.only(bottom: 1.v),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgImage112x138,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {
                onTapView!.call();
              },
              child: Container(
                height: 32.v,
                width: 149.h,
                margin: EdgeInsets.only(bottom: 25.v),
                decoration: BoxDecoration(
                  color: appTheme.blue50,
                  borderRadius: BorderRadius.circular(
                    10.h,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 17.v),
              child: Text(
                "lbl125".tr,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 30.v),
              child: Text(
                "lbl126".tr,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
