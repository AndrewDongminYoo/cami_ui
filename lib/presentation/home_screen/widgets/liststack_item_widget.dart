import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListstackItemWidget extends StatelessWidget {
  const ListstackItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 331.v,
        width: 337.h,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 331.v,
                width: 337.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20.h,
                  ),
                  border: Border.all(
                    color: appTheme.gray200,
                    width: 1.h,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 159.v,
                width: 335.h,
                margin: EdgeInsets.only(top: 1.v),
                decoration: BoxDecoration(
                  color: appTheme.blueGray10001,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 159.v,
                width: 335.h,
                margin: EdgeInsets.only(top: 1.v),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgImage159x335,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 24.v,
                width: 51.h,
                margin: EdgeInsets.only(
                  left: 15.h,
                  bottom: 133.v,
                ),
                decoration: BoxDecoration(
                  color: appTheme.gray90004,
                  borderRadius: BorderRadius.circular(
                    8.h,
                  ),
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVectorGray700,
              height: 7.v,
              width: 4.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(
                left: 78.h,
                bottom: 20.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
