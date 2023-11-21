// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/ui/shared/cami_app_bar.dart';
import '/ui/shared/cami_app_footer.dart';
import 'widgets/my_pet_menu.dart';
import 'widgets/per_owner_register.dart';
import 'widgets/pet_avatar_profile.dart';
import 'widgets/user_avatar_profile.dart';

class PetsEmptyScreen extends StatelessWidget {
  const PetsEmptyScreen({super.key});

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
                const UserAvatarProfile(
                  name: 'Andrew',
                  mail: 'ydm2790@gmail.com',
                ),
                SizedBox(height: 42.h),
                const PetAvatarProfile(type: '반려견'),
                SizedBox(height: 16.h),
                const PetAvatarProfile(type: '반려묘'),
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
          PerOwnerRegister(type: '반려견'),
          PerOwnerRegister(type: '반려묘'),
        ],
      ),
    );
  }
}
