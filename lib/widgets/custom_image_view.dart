// 🎯 Dart imports:
import 'dart:io';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

// 🌎 Project imports:
import '/gen/assets.gen.dart';

/// 네트워크 이미지에서 이미지를 찾을 수 없는 경우 플레이스홀더 이미지를 표시하며,
/// SVG를 포함해 모든 유형의 이미지를 표시하는 데 사용할 수 있는 [CustomImageView] 위젯입니다.
class CustomImageView extends StatelessWidget {
  const CustomImageView({
    super.key,
    this.imagePath,
    this.height,
    this.width,
    this.color,
    this.fit,
    this.alignment,
    this.onTap,
    this.radius = BorderRadius.zero,
    this.margin = EdgeInsets.zero,
    this.border,
  });

  /// [imagePath]는 이미지 표시를 위한 필수 파라미터입니다.
  final String? imagePath;

  final double? height;
  final double? width;
  final Color? color;
  final BoxFit? fit;
  final Alignment? alignment;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry margin;
  final BorderRadius radius;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      padding: margin,
      child: InkWell(
        onTap: onTap,

        /// [radius] 파라미터 적용 시 원형으로 빌드합니다.
        child: ClipRRect(
          borderRadius: radius,

          /// [border] 적용 스타일로 테두리를 빌드합니다.
          child: Container(
            decoration: BoxDecoration(
              border: border,
              borderRadius: radius,
            ),
            child: _imageView,
          ),
        ),
      ),
    );
  }

  /// [ImageTypeExtension] 확장으로 이미지 타입 [imageType]을 체크해 상황에 따라 빌드합니다.
  Widget get _imageView {
    if (imagePath != null) {
      switch (imagePath!.imageType) {
        case ImageType.svg:
          return SizedBox(
            height: height,
            width: width,
            child: SvgPicture.asset(
              imagePath!,
              height: height,
              width: width,
              fit: fit ?? BoxFit.contain,
              // ignore: deprecated_member_use
              color: color,
            ),
          );
        case ImageType.file:
          return Image.file(
            File(imagePath!),
            height: height,
            width: width,
            fit: fit,
            color: color,
          );
        case ImageType.network:
          return CachedNetworkImage(
            height: height,
            width: width,
            fit: fit,
            imageUrl: imagePath!,
            color: color,
            placeholder: (context, url) => SizedBox(
              height: 30,
              width: 30,
              child: LinearProgressIndicator(
                color: Colors.grey.shade200,
                backgroundColor: Colors.grey.shade100,
              ),
            ),
            errorWidget: (context, url, error) {
              return Assets.images.imageNotFound.image(
                semanticLabel: error.toString(),
                height: height,
                width: width,
                fit: fit,
              );
            },
          );
        case ImageType.png:
        default:
          return Image.asset(
            imagePath!,
            height: height,
            width: width,
            fit: fit ?? BoxFit.cover,
            color: color,
          );
      }
    }
    return const SizedBox();
  }
}

/// [extension]에 이름을 적용하면 외부에서도 사용가능합니다.
extension /** ImageTypeExtension */ on String {
  ImageType get imageType {
    if (startsWith('http') || startsWith('https')) {
      return ImageType.network;
    } else if (endsWith('.svg')) {
      return ImageType.svg;
    } else if (startsWith('file://')) {
      return ImageType.file;
    } else {
      return ImageType.png;
    }
  }
}

enum ImageType { svg, png, network, file, unknown }
