// 📦 Package imports:
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/core/utils/logger.dart';
import '/ui/app_navigation_screen/app_navigation_screen.dart';
import '/ui/check_up_list/check_up_list_screen.dart';
import '/ui/checkup_details/check_up_screen.dart';
import '/ui/contact_us_register_screen/contact_us_register_screen.dart';
import '/ui/edit_profile_screen/edit_profile_screen.dart';
import '/ui/error_page_screen/error_page.dart';
import '/ui/faq_screen/faq_screen.dart';
import '/ui/home_screen/home_screen.dart';
import '/ui/log_in_screen/log_in_screen.dart';
import '/ui/menu_bar_screen/menu_bar_screen.dart';
import '/ui/my_page_screen/my_page_screen.dart';
import '/ui/my_pets_screen/pets_1_cat_screen.dart';
import '/ui/my_pets_screen/pets_empty_screen.dart';
import '/ui/naming_screen/naming_screen.dart';
import '/ui/new_pet_page/new_cat_screen.dart';
import '/ui/notice_detail_screen/notice_detail_screen.dart';
import '/ui/notice_screen/notice_screen.dart';
import '/ui/quick_test_screen/quick_test_screen.dart';
import '/ui/shared/check_up_list.dart';
import '/ui/sign_up_form_screen/sign_up_form_screen.dart';
import '/ui/solution_screen/solution_screen.dart';
import '/ui/verify_screen/verify_screen.dart';

class AppRoutes {
  static const String homeScreen = '/';
  static const String appNavigationScreen = '/debug';
  static const String errorPage = '/404';

  static const String quickTestScreen = '/quick_test_screen';
  static const String namingScreen = '/naming_screen';
  static const String contactUsRegisterScreen = '/contact_us_register_screen';
  static const String faqScreen = '/faq_screen';
  static const String newCatScreen = '/new_cat_screen';
  static const String menuBarScreen = '/menu_bar_screen';
  static const String petsEmptyScreen = '/pets_empty_screen';
  static const String petsOneCatScreen = '/pets_one_cat_screen';
  static const String solutionScreen = '/solution_screen';
  static const String signUpFormScreen = '/sign_up_form_screen';
  static const String editProfileScreen = '/edit_profile_screen';
  static const String verifyScreen = '/verify_screen';
  static const String myPageScreen = '/my_page_screen';
  static const String ownerScreen = '/owner_screen';
  static const String checkupCatScreen = '/checkup/ccsi';
  static const String checkupDogScreen = '/checkup/dcsi-ii';
  static const String checkupOwnerScreen = '/checkup/dds';
  static const String noticeDetailScreen = '/notice_detail_screen';
  static const String noticeScreen = '/notice_screen';
  static const String logInScreen = '/log_in_screen';

  static List<GoRoute> routes = [
    GoRoute(
      name: quickTestScreen,
      path: quickTestScreen,
      builder: (context, state) => const QuickTestScreen(),
    ),
    GoRoute(
      name: namingScreen,
      path: namingScreen,
      builder: (context, state) => NamingScreen(),
    ),
    GoRoute(
      name: contactUsRegisterScreen,
      path: contactUsRegisterScreen,
      builder: (context, state) => ContactUsRegisterScreen(),
    ),
    GoRoute(
      name: faqScreen,
      path: faqScreen,
      builder: (context, state) => const FaqScreen(),
    ),
    GoRoute(
      name: newCatScreen,
      path: newCatScreen,
      builder: (context, state) => const NewCatScreen(),
    ),
    GoRoute(
      name: menuBarScreen,
      path: menuBarScreen,
      builder: (context, state) => const MenuBarScreen(),
    ),
    GoRoute(
      name: petsEmptyScreen,
      path: petsEmptyScreen,
      builder: (context, state) => const PetsEmptyScreen(),
    ),
    GoRoute(
      name: petsOneCatScreen,
      path: petsOneCatScreen,
      builder: (context, state) => const PetsOneCatScreen(),
    ),
    GoRoute(
      name: solutionScreen,
      path: solutionScreen,
      builder: (context, state) => const SolutionScreen(),
    ),
    GoRoute(
      name: signUpFormScreen,
      path: signUpFormScreen,
      builder: (context, state) => SignUpFormScreen(),
    ),
    GoRoute(
      name: editProfileScreen,
      path: editProfileScreen,
      builder: (context, state) => EditProfileScreen(),
    ),
    GoRoute(
      name: verifyScreen,
      path: verifyScreen,
      builder: (context, state) => VerifyScreen(),
    ),
    GoRoute(
      name: myPageScreen,
      path: myPageScreen,
      builder: (context, state) => const MyPageScreen(),
    ),
    GoRoute(
      name: ownerScreen,
      path: ownerScreen,
      builder: (context, state) => const CheckUpListScreen(),
    ),
    GoRoute(
      name: homeScreen,
      path: homeScreen,
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      name: '/checkup/:short',
      path: '/checkup/:short',
      builder: (context, state) {
        logger.d(state.pathParameters);
        final checkup = checkUpList.firstWhere((element) =>
            element.short!.toLowerCase() == state.pathParameters['short']);
        return CheckUpScreen(checkup: checkup);
      },
    ),
    GoRoute(
      name: errorPage,
      path: errorPage,
      builder: (context, state) => const ErrorPage(),
    ),
    GoRoute(
      name: noticeDetailScreen,
      path: noticeDetailScreen,
      builder: (context, state) => const NoticeDetailScreen(),
    ),
    GoRoute(
      name: noticeScreen,
      path: noticeScreen,
      builder: (context, state) => const NoticeScreen(),
    ),
    GoRoute(
      name: logInScreen,
      path: logInScreen,
      builder: (context, state) => const LogInScreen(),
    ),
    GoRoute(
      name: appNavigationScreen,
      path: appNavigationScreen,
      builder: (context, state) => const AppNavigationScreen(),
    ),
  ];
}
