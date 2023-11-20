import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';

class MenuBarScreen extends StatelessWidget {
  const MenuBarScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgAppNavBar,
                height: 50.v,
                width: 393.h,
              ),
              SizedBox(height: 39.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "lbl".tr,
                  style: CustomTextStyles.bodyLarge18,
                ),
              ),
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "lbl115".tr,
                  style: CustomTextStyles.bodyLarge18,
                ),
              ),
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "lbl18".tr,
                  style: CustomTextStyles.bodyLarge18,
                ),
              ),
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "lbl116".tr,
                  style: CustomTextStyles.bodyLarge18,
                ),
              ),
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "lbl117".tr,
                  style: CustomTextStyles.bodyLarge18,
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgImage84x393,
                height: 84.v,
                width: 393.h,
              ),
              SizedBox(height: 32.v),
              CustomImageView(
                imagePath: ImageConstant.imgSocial,
                height: 21.v,
                width: 122.h,
                alignment: Alignment.center,
              ),
              SizedBox(height: 24.v),
            ],
          ),
        ),
      ),
    );
  }
}
