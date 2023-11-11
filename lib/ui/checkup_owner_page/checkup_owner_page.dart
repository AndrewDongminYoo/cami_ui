// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/ui/shared/cami_app_footer.dart';
import '/widgets/custom_image_view.dart';

class CheckupOwnerPage extends StatefulWidget {
  const CheckupOwnerPage({super.key});

  @override
  CheckupOwnerPageState createState() => CheckupOwnerPageState();
}

class CheckupOwnerPageState extends State<CheckupOwnerPage>
    with AutomaticKeepAliveClientMixin<CheckupOwnerPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24.h),
                Column(
                  children: [
                    CustomImageView(
                      imagePath: Assets.images.imgImage472x361.path,
                      height: 472.h,
                      width: 361.w,
                    ),
                    SizedBox(height: 24.h),
                    CustomImageView(
                      imagePath: Assets.images.imgImage683x361.path,
                      height: 683.h,
                      width: 361.w,
                    ),
                    SizedBox(height: 72.h),
                    CustomImageView(
                      imagePath: Assets.images.imgImage681x361.path,
                      height: 681.h,
                      width: 361.w,
                    ),
                    CustomImageView(
                      imagePath: Assets.images.imgImage1235x361.path,
                      height: 1235.h,
                      width: 361.w,
                    ),
                    CustomImageView(
                      imagePath: Assets.images.imgImage1056x361.path,
                      height: 1056.h,
                      width: 361.w,
                    ),
                    CustomImageView(
                      imagePath: Assets.images.imgImage719x361.path,
                      height: 719.h,
                      width: 361.w,
                    ),
                    CustomImageView(
                      imagePath: Assets.images.imgImage552x361.path,
                      height: 552.h,
                      width: 361.w,
                    ),
                    CustomImageView(
                      imagePath: Assets.images.imgImage1037x361.path,
                      height: 1037.h,
                      width: 361.w,
                    ),
                    SizedBox(height: 177.h),
                    const CamiAppFooter(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
