import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class FourhundredfourScreen extends StatelessWidget {
  const FourhundredfourScreen({Key? key})
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
            children: [
              _buildFrameSection(context),
              SizedBox(height: 62.v),
              Text(
                "lbl170".tr,
                style: CustomTextStyles.bodyLarge18,
              ),
              Text(
                "msg67".tr,
                style: CustomTextStyles.bodyLarge18,
              ),
              SizedBox(height: 38.v),
              SizedBox(
                height: 240.v,
                width: 307.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "lbl_404".tr,
                        style: CustomTextStyles.poppinsYellow100,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFrameBlack900142x78,
                      height: 142.v,
                      width: 78.h,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 42.v),
              CustomOutlinedButton(
                height: 52.v,
                width: 168.h,
                text: "lbl_go_home".tr,
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 8.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCar,
                    height: 20.v,
                    width: 18.h,
                  ),
                ),
                buttonStyle: CustomButtonStyles.outlineBlack,
                buttonTextStyle: CustomTextStyles.bodyMediumBlack90015,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: CustomImageView(
        imagePath: ImageConstant.imgFrame,
        height: 50.v,
        width: 361.h,
      ),
    );
  }
}
