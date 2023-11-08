import 'package:flutter/material.dart';
import 'package:cami_lab/presentation/quck_test_screen/quck_test_screen.dart';
import 'package:cami_lab/presentation/naming_screen/naming_screen.dart';
import 'package:cami_lab/presentation/contact_us_register_screen/contact_us_register_screen.dart';
import 'package:cami_lab/presentation/faq_screen/faq_screen.dart';
import 'package:cami_lab/presentation/new_cat_tab_container_screen/new_cat_tab_container_screen.dart';
import 'package:cami_lab/presentation/menu_bar_screen/menu_bar_screen.dart';
import 'package:cami_lab/presentation/pets_empty_screen/pets_empty_screen.dart';
import 'package:cami_lab/presentation/pets_1_cat_screen/pets_1_cat_screen.dart';
import 'package:cami_lab/presentation/solution_screen/solution_screen.dart';
import 'package:cami_lab/presentation/sign_up_form_screen/sign_up_form_screen.dart';
import 'package:cami_lab/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:cami_lab/presentation/verify_screen/verify_screen.dart';
import 'package:cami_lab/presentation/my_page_screen/my_page_screen.dart';
import 'package:cami_lab/presentation/owner_tab_container_screen/owner_tab_container_screen.dart';
import 'package:cami_lab/presentation/home_screen/home_screen.dart';
import 'package:cami_lab/presentation/checkup_cat_screen/checkup_cat_screen.dart';
import 'package:cami_lab/presentation/checkup_dog_screen/checkup_dog_screen.dart';
import 'package:cami_lab/presentation/checkup_owner_tab_container_screen/checkup_owner_tab_container_screen.dart';
import 'package:cami_lab/presentation/fourhundredfour_screen/fourhundredfour_screen.dart';
import 'package:cami_lab/presentation/notice_detail_screen/notice_detail_screen.dart';
import 'package:cami_lab/presentation/notice_screen/notice_screen.dart';
import 'package:cami_lab/presentation/faq1_screen/faq1_screen.dart';
import 'package:cami_lab/presentation/log_in_screen/log_in_screen.dart';
import 'package:cami_lab/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String quckTestScreen = '/quck_test_screen';

  static const String namingScreen = '/naming_screen';

  static const String contactUsRegisterScreen = '/contact_us_register_screen';

  static const String faqScreen = '/faq_screen';

  static const String newCatPage = '/new_cat_page';

  static const String newCatTabContainerScreen =
      '/new_cat_tab_container_screen';

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

  static const String ownerTabContainerScreen = '/owner_tab_container_screen';

  static const String dogPage = '/dog_page';

  static const String homeScreen = '/home_screen';

  static const String checkupCatScreen = '/checkup_cat_screen';

  static const String checkupDogScreen = '/checkup_dog_screen';

  static const String checkupOwnerPage = '/checkup_owner_page';

  static const String checkupOwnerTabContainerScreen =
      '/checkup_owner_tab_container_screen';

  static const String fourhundredfourScreen = '/fourhundredfour_screen';

  static const String noticeDetailScreen = '/notice_detail_screen';

  static const String noticeScreen = '/notice_screen';

  static const String faq1Screen = '/faq1_screen';

  static const String logInScreen = '/log_in_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    quckTestScreen: (context) => QuckTestScreen(),
    namingScreen: (context) => NamingScreen(),
    contactUsRegisterScreen: (context) => ContactUsRegisterScreen(),
    faqScreen: (context) => FaqScreen(),
    newCatTabContainerScreen: (context) => NewCatTabContainerScreen(),
    menuBarScreen: (context) => MenuBarScreen(),
    petsEmptyScreen: (context) => PetsEmptyScreen(),
    pets1CatScreen: (context) => Pets1CatScreen(),
    solutionScreen: (context) => SolutionScreen(),
    signUpFormScreen: (context) => SignUpFormScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    verifyScreen: (context) => VerifyScreen(),
    myPageScreen: (context) => MyPageScreen(),
    ownerTabContainerScreen: (context) => OwnerTabContainerScreen(),
    homeScreen: (context) => HomeScreen(),
    checkupCatScreen: (context) => CheckupCatScreen(),
    checkupDogScreen: (context) => CheckupDogScreen(),
    checkupOwnerTabContainerScreen: (context) =>
        CheckupOwnerTabContainerScreen(),
    fourhundredfourScreen: (context) => FourhundredfourScreen(),
    noticeDetailScreen: (context) => NoticeDetailScreen(),
    noticeScreen: (context) => NoticeScreen(),
    faq1Screen: (context) => Faq1Screen(),
    logInScreen: (context) => LogInScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
