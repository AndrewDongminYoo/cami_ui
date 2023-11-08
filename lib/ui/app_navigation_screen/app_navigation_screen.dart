// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/localization/app_localization.dart';
import '/routes/app_routes.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          width: 375.w,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(
                      children: [
                        _buildScreenTitle(context,
                            userName: 'Quick Test'.tr,
                            onTapScreenTitle: () => onTapScreenTitle(
                                context, AppRoutes.quickTestScreen)),
                        _buildScreenTitle(
                          context,
                          userName: 'Naming'.tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.namingScreen),
                        ),
                        _buildScreenTitle(context,
                            userName: 'Contact Us / Register'.tr,
                            onTapScreenTitle: () => onTapScreenTitle(
                                context, AppRoutes.contactUsRegisterScreen)),
                        _buildScreenTitle(
                          context,
                          userName: 'FAQ'.tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.faqScreen),
                        ),
                        _buildScreenTitle(context,
                            userName: 'New Cat - Tab Container'.tr,
                            onTapScreenTitle: () =>
                                onTapScreenTitle(context, AppRoutes.newCatTab)),
                        _buildScreenTitle(context,
                            userName: 'Menu Bar'.tr,
                            onTapScreenTitle: () => onTapScreenTitle(
                                context, AppRoutes.menuBarScreen)),
                        _buildScreenTitle(context,
                            userName: 'Pets / Empty'.tr,
                            onTapScreenTitle: () => onTapScreenTitle(
                                context, AppRoutes.petsEmptyScreen)),
                        _buildScreenTitle(context,
                            userName: 'Pets / 1 Cat'.tr,
                            onTapScreenTitle: () => onTapScreenTitle(
                                context, AppRoutes.pets1CatScreen)),
                        _buildScreenTitle(context,
                            userName: 'Solution'.tr,
                            onTapScreenTitle: () => onTapScreenTitle(
                                context, AppRoutes.solutionScreen)),
                        _buildScreenTitle(context,
                            userName: 'Sign Up Form'.tr,
                            onTapScreenTitle: () => onTapScreenTitle(
                                context, AppRoutes.signUpFormScreen)),
                        _buildScreenTitle(context,
                            userName: 'Edit Profile'.tr,
                            onTapScreenTitle: () => onTapScreenTitle(
                                context, AppRoutes.editProfileScreen)),
                        _buildScreenTitle(
                          context,
                          userName: 'Verify'.tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.verifyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: 'My Page'.tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.myPageScreen),
                        ),
                        _buildScreenTitle(context,
                            userName: 'Owner - Tab Container'.tr,
                            onTapScreenTitle: () =>
                                onTapScreenTitle(context, AppRoutes.ownerTab)),
                        _buildScreenTitle(
                          context,
                          userName: 'Home'.tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(context,
                            userName: 'Checkup Cat'.tr,
                            onTapScreenTitle: () => onTapScreenTitle(
                                context, AppRoutes.checkupCatScreen)),
                        _buildScreenTitle(context,
                            userName: 'Checkup Dog'.tr,
                            onTapScreenTitle: () => onTapScreenTitle(
                                context, AppRoutes.checkupDogScreen)),
                        _buildScreenTitle(
                          context,
                          userName: 'Checkup Owner - Tab Container'.tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.checkupOwnerTab),
                        ),
                        _buildScreenTitle(context,
                            userName: 'FourHundredFour'.tr,
                            onTapScreenTitle: () => onTapScreenTitle(
                                context, AppRoutes.fourhundredfourScreen)),
                        _buildScreenTitle(context,
                            userName: 'Notice Detail'.tr,
                            onTapScreenTitle: () => onTapScreenTitle(
                                context, AppRoutes.noticeDetailScreen)),
                        _buildScreenTitle(
                          context,
                          userName: 'Notice'.tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.noticeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: 'Log In'.tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.logInScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          SizedBox(height: 10.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'App Navigation'.tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF888888),
                  fontSize: 16.sp,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.h),
          Divider(
            height: 1.h,
            thickness: 1.h,
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String userName,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  userName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(height: 5.h),
            Divider(
              height: 1.h,
              thickness: 1.h,
              color: const Color(0xFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
