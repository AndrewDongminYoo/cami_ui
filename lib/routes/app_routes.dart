// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/ui/app_navigation_screen/app_navigation_screen.dart';
import '/ui/checkup_cat_screen/checkup_cat_screen.dart';
import '/ui/checkup_dog_screen/checkup_dog_screen.dart';
import '/ui/checkup_owner_tab_container_screen/checkup_owner_tab_container_screen.dart';
import '/ui/contact_us_register_screen/contact_us_register_screen.dart';
import '/ui/edit_profile_screen/edit_profile_screen.dart';
import '/ui/faq1_screen/faq1_screen.dart';
import '/ui/faq_screen/faq_screen.dart';
import '/ui/fourhundredfour_screen/fourhundredfour_screen.dart';
import '/ui/home_screen/home_screen.dart';
import '/ui/log_in_screen/log_in_screen.dart';
import '/ui/menu_bar_screen/menu_bar_screen.dart';
import '/ui/my_page_screen/my_page_screen.dart';
import '/ui/naming_screen/naming_screen.dart';
import '/ui/new_cat_tab_container_screen/new_cat_tab_container_screen.dart';
import '/ui/notice_detail_screen/notice_detail_screen.dart';
import '/ui/notice_screen/notice_screen.dart';
import '/ui/owner_tab_container_screen/owner_tab_container_screen.dart';
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
  static const String faq1Screen = '/faq1_screen';
  static const String logInScreen = '/log_in_screen';
  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    quickTestScreen: (context) => const QuickTestScreen(),
    namingScreen: (context) => NamingScreen(),
    contactUsRegisterScreen: (context) => ContactUsRegisterScreen(),
    faqScreen: (context) => FaqScreen(),
    newCatTab: (context) => const NewCatTabContainerScreen(),
    menuBarScreen: (context) => const MenuBarScreen(),
    petsEmptyScreen: (context) => const PetsEmptyScreen(),
    pets1CatScreen: (context) => const PetsOneCatScreen(),
    solutionScreen: (context) => const SolutionScreen(),
    signUpFormScreen: (context) => SignUpFormScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    verifyScreen: (context) => VerifyScreen(),
    myPageScreen: (context) => const MyPageScreen(),
    ownerTab: (context) => const OwnerTabContainerScreen(),
    homeScreen: (context) => HomeScreen(),
    checkupCatScreen: (context) => CheckupCatScreen(),
    checkupDogScreen: (context) => CheckupDogScreen(),
    checkupOwnerTab: (context) => const CheckupOwnerTabContainerScreen(),
    fourhundredfourScreen: (context) => const FourhundredfourScreen(),
    noticeDetailScreen: (context) => const NoticeDetailScreen(),
    noticeScreen: (context) => const NoticeScreen(),
    faq1Screen: (context) => Faq1Screen(),
    logInScreen: (context) => LogInScreen(),
    appNavigationScreen: (context) => const AppNavigationScreen()
  };
}
