// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/widgets/custom_image_view.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, window) {
        final isWide = window.maxWidth >= 425.0;
        final main = isWide ? FIGMA_WIDTH : window.maxWidth;
        final sub = isWide ? window.maxWidth - FIGMA_WIDTH : window.maxWidth;
        final height = window.maxHeight;
        return Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Visibility(
              visible: isWide,
              child: Scaffold(
                extendBody: true,
                extendBodyBehindAppBar: true,
                body: Container(
                  width: window.maxWidth,
                  height: height,
                  color: const Color(0xFFFFFF50),
                  child: CustomImageView(
                    alignment: Alignment.bottomCenter,
                    imagePath: Assets.images.imgMainBackground.path,
                    width: window.maxWidth * 0.71,
                    height: window.maxWidth * 0.29,
                  ),
                ),
              ),
            ),
            Builder(
              builder: (context) {
                ScreenUtil.configure(
                  data: MediaQueryData(size: Size(main, height)),
                  designSize: figmaFrameSize,
                  minTextAdapt: true,
                  splitScreenMode: true,
                );
                ScreenUtil.registerToBuild(context, true);
                return Padding(
                  padding: EdgeInsets.only(left: sub * 0.7, right: sub * 0.3),
                  child: SizedBox(
                    width: main,
                    child: child,
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
