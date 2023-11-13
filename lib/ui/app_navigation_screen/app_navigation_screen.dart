// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/gen/fonts.gen.dart';
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
                  primary: true,
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: '반짝테스트',
                          routeName: AppRoutes.quickTestScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: '삼칠이 작명소',
                          routeName: AppRoutes.namingScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: '1:1 문의하기',
                          routeName: AppRoutes.contactUsRegisterScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: '자주 묻는 질문',
                          routeName: AppRoutes.faqScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: '고양이 등록하기',
                          routeName: AppRoutes.newCatTab,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: '메뉴바 (모바일)',
                          routeName: AppRoutes.menuBarScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: '나의 반려친구 (정보없음)',
                          routeName: AppRoutes.petsEmptyScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: '나의 반려친구 (정보있음)',
                          routeName: AppRoutes.pets1CatScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: '방문교육',
                          routeName: AppRoutes.solutionScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: '이메일 회원가입',
                          routeName: AppRoutes.signUpFormScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: '내 정보 수정',
                          routeName: AppRoutes.editProfileScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: '전화번호 인증',
                          routeName: AppRoutes.verifyScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: '마이페이지',
                          routeName: AppRoutes.myPageScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: '심리검사',
                          routeName: AppRoutes.ownerTab,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: '카미 홈화면',
                          routeName: AppRoutes.homeScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: '반려묘 성격유형검사',
                          routeName: AppRoutes.checkupCatScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: '반려견 성격유형검사',
                          routeName: AppRoutes.checkupDogScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: '심리검사 홈',
                          routeName: AppRoutes.checkupOwnerTab,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: '404 찾을수없음',
                          routeName: AppRoutes.fourhundredfourScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: '공지사항 상세',
                          routeName: AppRoutes.noticeDetailScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: '공지사항 전체',
                          routeName: AppRoutes.noticeScreen,
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: '로그인하기',
                          routeName: AppRoutes.logInScreen,
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
              child: const Text(
                '앱 게이트웨이 (개발 프로세스)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: FontFamily.poppins,
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
              child: const Text(
                '아래 데모 화면에서 앱의 UI를 확인하세요.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF888888),
                  fontSize: 16,
                  fontFamily: FontFamily.poppins,
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
    required String routeName,
  }) {
    return GestureDetector(
      onTap: () => context.go(routeName),
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
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: FontFamily.poppins,
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
}
