import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppnavbarwidgetItemWidget extends StatelessWidget {
  const AppnavbarwidgetItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray50,
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: EdgeInsets.only(right: 3.h),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl56".tr,
                style: CustomTextStyles.bodyMediumBlack900_1,
              ),
              Container(
                width: 314.h,
                margin: EdgeInsets.only(
                  top: 10.v,
                  right: 2.h,
                ),
                child: Text(
                  "msg_1_explorer".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumBlack900_1.copyWith(
                    height: 2.00,
                  ),
                ),
              ),
              Text(
                "msg17".tr,
                style: CustomTextStyles.bodyMediumBlack900_1,
              ),
              Container(
                width: 307.h,
                margin: EdgeInsets.only(
                  top: 10.v,
                  right: 10.h,
                ),
                child: Text(
                  "msg_22".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumBlack900_1.copyWith(
                    height: 2.00,
                  ),
                ),
              ),
              Container(
                width: 304.h,
                margin: EdgeInsets.only(right: 12.h),
                child: Text(
                  "msg_32".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumBlack900_1.copyWith(
                    height: 2.00,
                  ),
                ),
              ),
            ],
          ),
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 29.v,
                right: 3.h,
                bottom: 8.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 317.h,
                    child: Text(
                      "msg18".tr,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumBlack900_1.copyWith(
                        height: 2.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24.v),
                    child: Text(
                      "lbl57".tr,
                      style: CustomTextStyles.bodyMediumBlack900_1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
