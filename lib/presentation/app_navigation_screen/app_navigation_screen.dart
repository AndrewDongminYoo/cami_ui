import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          userName: "Check Up / Details Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.checkUpDetailsTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Quck Test".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.quckTestScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Notices".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.noticesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Naming".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.namingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Contact Us / Register".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.contactUsRegisterScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Check Up / List".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.checkUpListScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Check Up / Details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.checkUpDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "FAQ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.faqScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Home".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "New Cat - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.newCatTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Menu Bar".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.menuBarScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Pets / Empty".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.petsEmptyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Pets / 1 Cat".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.pets1CatScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Solution".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.solutionScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Sign Up Form".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpFormScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Edit Profile".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Verify".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.verifyScreen),
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
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
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
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  userName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
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
