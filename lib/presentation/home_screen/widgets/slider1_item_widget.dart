import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Slider1ItemWidget extends StatelessWidget {
  const Slider1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: theme.colorScheme.onPrimaryContainer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Container(
        height: 180.v,
        width: 337.h,
        decoration: AppDecoration.outlineBlueGrayB.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 15.v,
                ),
                child: Text(
                  "lbl64".tr,
                  style: CustomTextStyles.bodySmallGreen300,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 180.v,
                width: 321.h,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(
                          top: 107.v,
                          bottom: 15.v,
                        ),
                        child: IntrinsicWidth(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_n".tr,
                                    style:
                                        CustomTextStyles.bodySmallGray90002_2,
                                  ),
                                  Text(
                                    "msg23".tr,
                                    style:
                                        CustomTextStyles.bodySmallGray90002_2,
                                  ),
                                  Text(
                                    "msg_ebs".tr,
                                    style:
                                        CustomTextStyles.bodySmallGray90002_2,
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 1265.h,
                                  top: 38.v,
                                ),
                                child: Text(
                                  "lbl78".tr,
                                  style: CustomTextStyles.bodySmallGray90002_2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage180x168,
                      height: 180.v,
                      width: 168.h,
                      alignment: Alignment.centerRight,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(top: 39.v),
                        child: Text(
                          "lbl65".tr,
                          style: CustomTextStyles.bodyLargeGray90002,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
