import 'package:flutter/material.dart';
import 'package:cami_lab/presentation/quck_test_screen/quck_test_screen.dart';
import 'package:cami_lab/presentation/naming_screen/naming_screen.dart';
import 'package:cami_lab/presentation/contact_us_register_screen/contact_us_register_screen.dart';
import 'package:cami_lab/presentation/faq_expanded_screen/faq_expanded_screen.dart';
import 'package:cami_lab/presentation/new_cat_tab_container_screen/new_cat_tab_container_screen.dart';
import 'package:cami_lab/presentation/menu_bar_screen/menu_bar_screen.dart';
import 'package:cami_lab/presentation/pets_empty_screen/pets_empty_screen.dart';
import 'package:cami_lab/presentation/pets_one_cat_screen/pets_one_cat_screen.dart';
import 'package:cami_lab/presentation/solution_screen/solution_screen.dart';
import 'package:cami_lab/presentation/sign_up_form_screen/sign_up_form_screen.dart';
import 'package:cami_lab/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:cami_lab/presentation/verify_screen/verify_screen.dart';
import 'package:cami_lab/presentation/my_page_screen/my_page_screen.dart';
import 'package:cami_lab/presentation/owner_tab_container_screen/owner_tab_container_screen.dart';
import 'package:cami_lab/presentation/home_screen/home_screen.dart';
import 'package:cami_lab/presentation/checkup_owner_tab_container_screen/checkup_owner_tab_container_screen.dart';
import 'package:cami_lab/presentation/fourhundredfour_screen/fourhundredfour_screen.dart';
import 'package:cami_lab/presentation/notice_detail_screen/notice_detail_screen.dart';
import 'package:cami_lab/presentation/notice_screen/notice_screen.dart';
import 'package:cami_lab/presentation/faq_collapsed_screen/faq_collapsed_screen.dart';
import 'package:cami_lab/presentation/log_in_screen/log_in_screen.dart';
import 'package:cami_lab/presentation/dabi_exam_screen/dabi_exam_screen.dart';
import 'package:cami_lab/presentation/free_product_reciept_screen/free_product_reciept_screen.dart';
import 'package:cami_lab/presentation/coupon_alert_tab_container_screen/coupon_alert_tab_container_screen.dart';
import 'package:cami_lab/presentation/edit_my_info_screen/edit_my_info_screen.dart';
import 'package:cami_lab/presentation/edit_my_pet_info_screen/edit_my_pet_info_screen.dart';
import 'package:cami_lab/presentation/about_page_screen/about_page_screen.dart';
import 'package:cami_lab/presentation/add_new_dog_page_screen/add_new_dog_page_screen.dart';
import 'package:cami_lab/presentation/dds_exam_screen/dds_exam_screen.dart';
import 'package:cami_lab/presentation/cades_exam_screen/cades_exam_screen.dart';
import 'package:cami_lab/presentation/dcsi_ii_reciept_screen/dcsi_ii_reciept_screen.dart';
import 'package:cami_lab/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String quckTestScreen = '/quck_test_screen';

  static const String namingScreen = '/naming_screen';

  static const String contactUsRegisterScreen = '/contact_us_register_screen';

  static const String faqExpandedScreen = '/faq_expanded_screen';

  static const String newCatPage = '/new_cat_page';

  static const String newCatTabContainerScreen =
      '/new_cat_tab_container_screen';

  static const String menuBarScreen = '/menu_bar_screen';

  static const String petsEmptyScreen = '/pets_empty_screen';

  static const String petsOneCatScreen = '/pets_one_cat_screen';

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

  static const String checkupCatPage = '/checkup_cat_page';

  static const String checkupDogPage = '/checkup_dog_page';

  static const String checkupOwnerPage = '/checkup_owner_page';

  static const String checkupOwnerTabContainerScreen =
      '/checkup_owner_tab_container_screen';

  static const String fourhundredfourScreen = '/fourhundredfour_screen';

  static const String noticeDetailScreen = '/notice_detail_screen';

  static const String noticeScreen = '/notice_screen';

  static const String faqCollapsedScreen = '/faq_collapsed_screen';

  static const String logInScreen = '/log_in_screen';

  static const String dabiExamScreen = '/dabi_exam_screen';

  static const String freeProductRecieptScreen = '/free_product_reciept_screen';

  static const String couponAvailablePage = '/coupon_available_page';

  static const String couponExpiredPage = '/coupon_expired_page';

  static const String couponAlertPage = '/coupon_alert_page';

  static const String couponAlertTabContainerScreen =
      '/coupon_alert_tab_container_screen';

  static const String dsciReviewsPage = '/dsci_reviews_page';

  static const String editMyInfoScreen = '/edit_my_info_screen';

  static const String editMyPetInfoScreen = '/edit_my_pet_info_screen';

  static const String aboutPageScreen = '/about_page_screen';

  static const String addNewDogPageScreen = '/add_new_dog_page_screen';

  static const String ddsExamScreen = '/dds_exam_screen';

  static const String cadesExamScreen = '/cades_exam_screen';

  static const String dcsiIiRecieptScreen = '/dcsi_ii_reciept_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    quckTestScreen: (context) => QuckTestScreen(),
    namingScreen: (context) => NamingScreen(),
    contactUsRegisterScreen: (context) => ContactUsRegisterScreen(),
    faqExpandedScreen: (context) => FaqExpandedScreen(),
    newCatTabContainerScreen: (context) => NewCatTabContainerScreen(),
    menuBarScreen: (context) => MenuBarScreen(),
    petsEmptyScreen: (context) => PetsEmptyScreen(),
    petsOneCatScreen: (context) => PetsOneCatScreen(),
    solutionScreen: (context) => SolutionScreen(),
    signUpFormScreen: (context) => SignUpFormScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    verifyScreen: (context) => VerifyScreen(),
    myPageScreen: (context) => MyPageScreen(),
    ownerTabContainerScreen: (context) => OwnerTabContainerScreen(),
    homeScreen: (context) => HomeScreen(),
    checkupOwnerTabContainerScreen: (context) =>
        CheckupOwnerTabContainerScreen(),
    fourhundredfourScreen: (context) => FourhundredfourScreen(),
    noticeDetailScreen: (context) => NoticeDetailScreen(),
    noticeScreen: (context) => NoticeScreen(),
    faqCollapsedScreen: (context) => FaqCollapsedScreen(),
    logInScreen: (context) => LogInScreen(),
    dabiExamScreen: (context) => DabiExamScreen(),
    freeProductRecieptScreen: (context) => FreeProductRecieptScreen(),
    couponAlertTabContainerScreen: (context) => CouponAlertTabContainerScreen(),
    editMyInfoScreen: (context) => EditMyInfoScreen(),
    editMyPetInfoScreen: (context) => EditMyPetInfoScreen(),
    aboutPageScreen: (context) => AboutPageScreen(),
    addNewDogPageScreen: (context) => AddNewDogPageScreen(),
    ddsExamScreen: (context) => DdsExamScreen(),
    cadesExamScreen: (context) => CadesExamScreen(),
    dcsiIiRecieptScreen: (context) => DcsiIiRecieptScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
