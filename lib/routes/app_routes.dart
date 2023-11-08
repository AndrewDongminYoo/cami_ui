import 'package:flutter/material.dart';
import 'package:cami_lab/presentation/check_up_details_two_screen/check_up_details_two_screen.dart';
import 'package:cami_lab/presentation/quck_test_screen/quck_test_screen.dart';
import 'package:cami_lab/presentation/notices_screen/notices_screen.dart';
import 'package:cami_lab/presentation/naming_screen/naming_screen.dart';
import 'package:cami_lab/presentation/contact_us_register_screen/contact_us_register_screen.dart';
import 'package:cami_lab/presentation/check_up_list_screen/check_up_list_screen.dart';
import 'package:cami_lab/presentation/check_up_details_screen/check_up_details_screen.dart';
import 'package:cami_lab/presentation/faq_screen/faq_screen.dart';
import 'package:cami_lab/presentation/home_screen/home_screen.dart';
import 'package:cami_lab/presentation/new_cat_tab_container_screen/new_cat_tab_container_screen.dart';
import 'package:cami_lab/presentation/menu_bar_screen/menu_bar_screen.dart';
import 'package:cami_lab/presentation/pets_empty_screen/pets_empty_screen.dart';
import 'package:cami_lab/presentation/pets_1_cat_screen/pets_1_cat_screen.dart';
import 'package:cami_lab/presentation/solution_screen/solution_screen.dart';
import 'package:cami_lab/presentation/sign_up_form_screen/sign_up_form_screen.dart';
import 'package:cami_lab/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:cami_lab/presentation/verify_screen/verify_screen.dart';
import 'package:cami_lab/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String checkUpDetailsTwoScreen = '/check_up_details_two_screen';

  static const String quckTestScreen = '/quck_test_screen';

  static const String noticesScreen = '/notices_screen';

  static const String namingScreen = '/naming_screen';

  static const String contactUsRegisterScreen = '/contact_us_register_screen';

  static const String checkUpListScreen = '/check_up_list_screen';

  static const String checkUpDetailsScreen = '/check_up_details_screen';

  static const String faqScreen = '/faq_screen';

  static const String homeScreen = '/home_screen';

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

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    checkUpDetailsTwoScreen: (context) => CheckUpDetailsTwoScreen(),
    quckTestScreen: (context) => QuckTestScreen(),
    noticesScreen: (context) => NoticesScreen(),
    namingScreen: (context) => NamingScreen(),
    contactUsRegisterScreen: (context) => ContactUsRegisterScreen(),
    checkUpListScreen: (context) => CheckUpListScreen(),
    checkUpDetailsScreen: (context) => CheckUpDetailsScreen(),
    faqScreen: (context) => FaqScreen(),
    homeScreen: (context) => HomeScreen(),
    newCatTabContainerScreen: (context) => NewCatTabContainerScreen(),
    menuBarScreen: (context) => MenuBarScreen(),
    petsEmptyScreen: (context) => PetsEmptyScreen(),
    pets1CatScreen: (context) => Pets1CatScreen(),
    solutionScreen: (context) => SolutionScreen(),
    signUpFormScreen: (context) => SignUpFormScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    verifyScreen: (context) => VerifyScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
