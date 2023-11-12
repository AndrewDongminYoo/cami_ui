// 📦 Package imports:
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/ui/app_navigation_screen/app_navigation_screen.dart';
import '/ui/checkup_cat_screen/checkup_cat_screen.dart';
import '/ui/checkup_dog_screen/checkup_dog_screen.dart';
import '/ui/checkup_owner_page/checkup_owner_screen.dart';
import '/ui/contact_us_register_screen/contact_us_register_screen.dart';
import '/ui/edit_profile_screen/edit_profile_screen.dart';
import '/ui/error_page_screen/error_page.dart';
import '/ui/faq_screen/faq_screen.dart';
import '/ui/home_screen/home_screen.dart';
import '/ui/log_in_screen/log_in_screen.dart';
import '/ui/menu_bar_screen/menu_bar_screen.dart';
import '/ui/my_page_screen/my_page_screen.dart';
import '/ui/naming_screen/naming_screen.dart';
import '/ui/new_cat_page/new_cat_screen.dart';
import '/ui/notice_detail_screen/notice_detail_screen.dart';
import '/ui/notice_screen/notice_screen.dart';
import '/ui/owner_page/owner_screen.dart';
import '/ui/pets_1_cat_screen/pets_1_cat_screen.dart';
import '/ui/pets_empty_screen/pets_empty_screen.dart';
import '/ui/quick_test_screen/quick_test_screen.dart';
import '/ui/sign_up_form_screen/sign_up_form_screen.dart';
import '/ui/solution_screen/solution_screen.dart';
import '/ui/verify_screen/verify_screen.dart';

class AppRoutes {
  static const String quickTestScreen = '/quick_test_screen';
  static const String namingScreen = '/naming_screen';
  static const String contactUsRegisterScreen = '/contact_us_register_screen';
  static const String faqScreen = '/faq_screen';
  static const String newCatPage = '/new_cat_page';
  static const String newCatTab = '/new_cat_tab';
  static const String menuBarScreen = '/menu_bar_screen';
  static const String petsEmptyScreen = '/pets_empty_screen';
  static const String pets1CatScreen = '/pets_1_cat_screen';
  static const String solutionScreen = '/solution_screen';
  static const String signUpFormScreen = '/sign_up_form_screen';
  static const String editProfileScreen = '/edit_profile_screen';
  static const String verifyScreen = '/verify_screen';
  static const String myPageScreen = '/my_page_screen';
  static const String catPage = '/cat_page';
  static const String ownerPage = '/owner_page';
  static const String ownerTab = '/owner_tab';
  static const String dogPage = '/dog_page';
  static const String homeScreen = '/home_screen';
  static const String checkupCatScreen = '/checkup_cat_screen';
  static const String checkupDogScreen = '/checkup_dog_screen';
  static const String checkupOwnerPage = '/checkup_owner_page';
  static const String checkupOwnerTab = '/checkup_owner_tab';
  static const String fourhundredfourScreen = '/fourhundredfour_screen';
  static const String noticeDetailScreen = '/notice_detail_screen';
  static const String noticeScreen = '/notice_screen';
  static const String logInScreen = '/log_in_screen';
  static const String appNavigationScreen = '/app_navigation_screen';

  static List<GoRoute> routes = [
    GoRoute(
      path: quickTestScreen,
      builder: (context, state) => const QuickTestScreen(),
    ),
    GoRoute(
      path: namingScreen,
      builder: (context, state) => NamingScreen(),
    ),
    GoRoute(
      path: contactUsRegisterScreen,
      builder: (context, state) => ContactUsRegisterScreen(),
    ),
    GoRoute(
      path: faqScreen,
      builder: (context, state) => FaqScreen(),
    ),
    GoRoute(
      path: newCatTab,
      builder: (context, state) => const NewCatScreen(),
    ),
    GoRoute(
      path: menuBarScreen,
      builder: (context, state) => const MenuBarScreen(),
    ),
    GoRoute(
      path: petsEmptyScreen,
      builder: (context, state) => const PetsEmptyScreen(),
    ),
    GoRoute(
      path: pets1CatScreen,
      builder: (context, state) => const PetsOneCatScreen(),
    ),
    GoRoute(
      path: solutionScreen,
      builder: (context, state) => const SolutionScreen(),
    ),
    GoRoute(
      path: signUpFormScreen,
      builder: (context, state) => SignUpFormScreen(),
    ),
    GoRoute(
      path: editProfileScreen,
      builder: (context, state) => EditProfileScreen(),
    ),
    GoRoute(
      path: verifyScreen,
      builder: (context, state) => VerifyScreen(),
    ),
    GoRoute(
      path: myPageScreen,
      builder: (context, state) => const MyPageScreen(),
    ),
    GoRoute(
      path: ownerTab,
      builder: (context, state) => const OwnerScreen(),
    ),
    GoRoute(
      path: homeScreen,
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: checkupCatScreen,
      builder: (context, state) => CheckupCatScreen(),
    ),
    GoRoute(
      path: checkupDogScreen,
      builder: (context, state) => CheckupDogScreen(),
    ),
    GoRoute(
      path: checkupOwnerTab,
      builder: (context, state) => const CheckupOwnerScreen(),
    ),
    GoRoute(
      path: fourhundredfourScreen,
      builder: (context, state) => const ErrorPage(),
    ),
    GoRoute(
      path: noticeDetailScreen,
      builder: (context, state) => const NoticeDetailScreen(),
    ),
    GoRoute(
      path: noticeScreen,
      builder: (context, state) => const NoticeScreen(),
    ),
    GoRoute(
      path: logInScreen,
      builder: (context, state) => LogInScreen(),
    ),
    GoRoute(
      path: appNavigationScreen,
      builder: (context, state) => const AppNavigationScreen(),
    ),
  ];
}
