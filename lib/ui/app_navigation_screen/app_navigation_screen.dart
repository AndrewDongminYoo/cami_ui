// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/routes/app_routes.dart';
import 'widgets/gateway_title.dart';
import 'widgets/screen_title.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: const GatewayTitle(),
        backgroundColor: Colors.white,
        body: SizedBox(
          width: 375.w,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  primary: true,
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: const Column(
                      children: [
                        ScreenTitle(
                          screenTitle: '반짝테스트',
                          routeName: AppRoutes.quickTestScreen,
                          status: DevStatus.DONE,
                        ),
                        ScreenTitle(
                          screenTitle: '삼칠이 작명소',
                          routeName: AppRoutes.namingScreen,
                          status: DevStatus.DONE,
                        ),
                        ScreenTitle(
                          screenTitle: '1:1 문의하기',
                          routeName: AppRoutes.contactUsRegisterScreen,
                          status: DevStatus.DONE,
                        ),
                        ScreenTitle(
                          screenTitle: '자주 묻는 질문',
                          routeName: AppRoutes.faqScreen,
                          status: DevStatus.ON_PROGRESS,
                        ),
                        ScreenTitle(
                          screenTitle: '강아지 등록하기',
                          routeName: AppRoutes.newDogScreen,
                        ),
                        ScreenTitle(
                          screenTitle: '고양이 등록하기',
                          routeName: AppRoutes.newCatScreen,
                        ),
                        ScreenTitle(
                          screenTitle: '메뉴바 (모바일)',
                          routeName: AppRoutes.menuBarScreen,
                          status: DevStatus.DONE,
                        ),
                        ScreenTitle(
                          screenTitle: '나의 반려친구 (정보없음)',
                          routeName: AppRoutes.petsEmptyScreen,
                          status: DevStatus.DONE,
                        ),
                        ScreenTitle(
                          screenTitle: '나의 반려친구 (정보있음)',
                          routeName: AppRoutes.petsOneCatScreen,
                          status: DevStatus.DONE,
                        ),
                        ScreenTitle(
                          screenTitle: '방문교육',
                          routeName: AppRoutes.solutionScreen,
                        ),
                        ScreenTitle(
                          screenTitle: '이메일 회원가입',
                          routeName: AppRoutes.signUpFormScreen,
                        ),
                        ScreenTitle(
                          screenTitle: '내 정보 수정',
                          routeName: AppRoutes.editProfileScreen,
                        ),
                        ScreenTitle(
                          screenTitle: '전화번호 인증',
                          routeName: AppRoutes.verifyScreen,
                        ),
                        ScreenTitle(
                          screenTitle: '마이페이지',
                          routeName: AppRoutes.myPageScreen,
                        ),
                        ScreenTitle(
                          screenTitle: '심리검사',
                          routeName: AppRoutes.checkUpListScreen,
                        ),
                        ScreenTitle(
                          screenTitle: '카미 홈화면',
                          routeName: AppRoutes.homeScreen,
                          status: DevStatus.DONE,
                        ),
                        ScreenTitle(
                          screenTitle: '반려묘 성격유형검사',
                          routeName: AppRoutes.checkupCatScreen,
                        ),
                        ScreenTitle(
                          screenTitle: '반려견 성격유형검사',
                          routeName: AppRoutes.checkupDogScreen,
                        ),
                        ScreenTitle(
                          screenTitle: '심리검사 홈',
                          routeName: AppRoutes.checkupOwnerScreen,
                        ),
                        ScreenTitle(
                          screenTitle: '404 찾을수없음',
                          routeName: AppRoutes.errorPage,
                          status: DevStatus.DONE,
                        ),
                        ScreenTitle(
                          screenTitle: '공지사항 상세',
                          routeName: AppRoutes.noticeDetailScreen,
                        ),
                        ScreenTitle(
                          screenTitle: '공지사항 전체',
                          routeName: AppRoutes.noticeScreen,
                        ),
                        ScreenTitle(
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
}
