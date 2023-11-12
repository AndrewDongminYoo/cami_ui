// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
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
                        _buildScreenTitle(
                          context,
                          screenTitle: 'Quick Test',
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.quickTestScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: 'Naming',
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.namingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: 'Contact Us / Register',
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.contactUsRegisterScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: 'FAQ',
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.faqScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: 'New Cat - Tab Container',
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.newCatTab),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: 'Menu Bar',
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.menuBarScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: 'Pets / Empty',
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.petsEmptyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: 'Pets / 1 Cat',
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.pets1CatScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: 'Solution',
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.solutionScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: 'Sign Up Form',
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpFormScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: 'Edit Profile',
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: 'Verify',
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.verifyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: 'My Page',
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.myPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: 'Owner - Tab Container',
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.ownerTab),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: 'Home',
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: 'Checkup Cat',
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.checkupCatScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: 'Checkup Dog',
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.checkupDogScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: 'Checkup Owner - Tab Container',
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.checkupOwnerTab),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: 'FourHundredFour',
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.fourhundredfourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: 'Notice Detail',
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.noticeDetailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: 'Notice',
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.noticeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: 'Log In',
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
                'App Navigation',
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
                "Check your app's UI from the below demo screens of your app.",
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
    required String screenTitle,
    required VoidCallback onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: onTapScreenTitle,
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
                  screenTitle,
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
    context.go(routeName);
  }
}
