// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/gen/assets.gen.dart';
import '/ui/pets_empty_screen/widgets/my_pet_menu.dart';
import '/ui/pets_empty_screen/widgets/per_owner_register.dart';
import '/ui/pets_empty_screen/widgets/pet_avatar_profile.dart';
import '/ui/pets_empty_screen/widgets/user_avatar_profile.dart';
import '/ui/shared/cami_app_bar.dart';
import '/ui/shared/cami_app_footer.dart';

class PetsOneCatScreen extends StatelessWidget {
  const PetsOneCatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: const CamiAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            primary: true,
            child: Column(
              children: [
                SizedBox(height: 42.h),
                UserAvatarProfile(
                  imagePath: Assets.images.imgUserProfile.path,
                  name: 'Andrew',
                  mail: 'ydm2790@gmail.com',
                ),
                SizedBox(height: 42.h),
                const PetAvatarProfile(type: 'dog'),
                SizedBox(height: 16.h),
                PetAvatarProfile(
                  type: 'cat',
                  imagePath: Assets.images.imgCatProfile.path,
                  petName: '꼬리',
                  birthDay: '2018-08-12',
                  breeds: '코리안 숏 헤어'.tr(),
                  age: '5살 2개월'.tr(),
                  sex: '남아'.tr(),
                ),
                SizedBox(height: 16.h),
                _buildPetRegistration(context),
                SizedBox(height: 24.h),
                const MyPetMenu(),
                SizedBox(height: 120.h),
                const CamiAppFooter()
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPetRegistration(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PerOwnerRegister(type: 'dog'),
          PerOwnerRegister(type: 'cat'),
        ],
      ),
    );
  }
}
