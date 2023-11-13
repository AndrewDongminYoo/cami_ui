// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/gen/assets.gen.dart';
import '/ui/shared/cami_app_footer.dart';
import '/widgets/custom_image_view.dart';

class CheckupOwnerTab extends StatefulWidget {
  const CheckupOwnerTab({super.key});

  @override
  CheckupOwnerTabState createState() => CheckupOwnerTabState();
}

/// [AutomaticKeepAliveClientMixin]는 [AutomaticKeepAlive] 클라이언트를 위한 편의 메서드가 있는 믹스인입니다.
/// [State] 서브클래스와 함께 사용됩니다. 서브클래스는 [wantKeepAlive]를 구현해야 하며,
/// [build] 메서드는 (반환값은 무시해야 하지만) `super.build`를 호출해야 합니다.
/// 그런 다음, [wantKeepAlive]의 값이 변경될 때마다(또는 변경될 가능성이 있을 때마다) 서브클래스는 [updateKeepAlive]를 호출해야 합니다.
/// 유형 인자 `CheckupOwnerTab`는 이 클래스가 혼합되는 [CheckupOwnerTab]의 [StatefulWidget] 서브클래스의 유형입니다.
class CheckupOwnerTabState extends State<CheckupOwnerTab>
    with AutomaticKeepAliveClientMixin<CheckupOwnerTab> {
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
