// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher_string.dart';

// 🌎 Project imports:
import '/gen/assets.gen.dart';
import '/widgets/custom_image_view.dart';

class SocialLinkIcons extends StatelessWidget {
  const SocialLinkIcons({
    super.key,
    this.dark = true,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final mainAxisAlignment =
        dark ? MainAxisAlignment.start : MainAxisAlignment.center;
    final gap = SizedBox(width: dark ? 16.w : 32.w);
    final iconSize = dark ? 24.r : 21.r;
    final facebook = SocialViewModel(
      iconPath:
          dark ? Assets.svg.icoFacebookWhite.path : Assets.svg.icoFacebook.path,
      iconSize: iconSize,
      urlPath: 'https://www.facebook.com/camifromlove',
    );
    final instagram = SocialViewModel(
      iconPath: dark
          ? Assets.svg.icoInstagramWhite.path
          : Assets.svg.icoInstagram.path,
      iconSize: iconSize,
      urlPath: 'https://www.instagram.com/camifromlove',
    );
    final naverBlog = SocialViewModel(
      iconPath: dark
          ? Assets.svg.icoNaverBlogWhite.path
          : Assets.svg.icoNaverBlog.path,
      iconSize: iconSize,
      urlPath: 'https://blog.naver.com/camifromlove',
    );
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        facebook.widget,
        gap,
        instagram.widget,
        gap,
        naverBlog.widget,
      ],
    );
  }
}

class SocialViewModel {
  SocialViewModel({
    required this.iconPath,
    required this.iconSize,
    required this.urlPath,
  });

  final String iconPath;
  final double iconSize;
  final String urlPath;

  CustomImageView get widget {
    return CustomImageView(
      imagePath: iconPath,
      onTap: () => launchUrlString(urlPath),
      alignment: Alignment.center,
      height: iconSize,
      width: iconSize,
    );
  }
}
