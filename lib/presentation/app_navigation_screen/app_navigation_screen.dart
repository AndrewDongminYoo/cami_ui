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
                          screenTitle: "Quck Test".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.quckTestScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Naming".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.namingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Contact Us Register".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.contactUsRegisterScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "FAQ expanded".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.faqExpandedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "New Cat Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.newCatTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Menu Bar".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.menuBarScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pets Empty".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.petsEmptyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pets One Cat".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.petsOneCatScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Solution".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.solutionScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up Form".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpFormScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Edit Profile".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Verify".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.verifyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "My Page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.myPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Owner Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.ownerTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Checkup Owner Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.checkupOwnerTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "FourHundredFour".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.fourhundredfourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notice Detail".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.noticeDetailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notice".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.noticeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "FAQ collapsed".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.faqCollapsedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Log In".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.logInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "dabi - exam".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dabiExamScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "free product reciept".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.freeProductRecieptScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "coupon alert - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.couponAlertTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "edit my info".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editMyInfoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "edit my pet info".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editMyPetInfoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "about page".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aboutPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "add new dog page".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addNewDogPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "dds - exam".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.ddsExamScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "cades - exam".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cadesExamScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "dcsi-ii reciept".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dcsiIiRecieptScreen),
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
    required String screenTitle,
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
                  screenTitle,
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
