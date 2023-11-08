import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget({
    Key? key,
    this.onTapRegisterDogButton,
  }) : super(
          key: key,
        );

  VoidCallback? onTapRegisterDogButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      decoration: AppDecoration.outlineOnSecondaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      width: 175.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 16.v),
          Text(
            "lbl125".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 25.v),
          SizedBox(
            height: 112.v,
            width: 149.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage112x138,
                  height: 112.v,
                  width: 138.h,
                  alignment: Alignment.center,
                ),
                CustomElevatedButton(
                  height: 32.v,
                  width: 149.h,
                  text: "lbl126".tr,
                  margin: EdgeInsets.only(bottom: 24.v),
                  buttonStyle: CustomButtonStyles.fillBlue,
                  buttonTextStyle: CustomTextStyles.bodyMediumBlack900,
                  onPressed: () {
                    onTapRegisterDogButton!.call();
                  },
                  alignment: Alignment.bottomCenter,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
