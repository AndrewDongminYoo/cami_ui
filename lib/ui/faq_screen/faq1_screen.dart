// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/gen/assets.gen.dart';
import '/routes/go_extensions.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/ui/shared/cami_app_footer.dart';
import '/widgets/custom_image_view.dart';
import 'widgets/expansion_faq.dart';

class Faq1Screen extends StatelessWidget {
  const Faq1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: const CamiAppBar(),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            primary: true,
            child: Column(children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Row(children: [
                  CustomImageView(
                    imagePath: Assets.svg.imgArrowLeft.path,
                    height: 28.h,
                    width: 20.w,
                    onTap: () {
                      context.safePop();
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 106.w),
                    child: Text(
                      '자주 묻는 질문'.tr(),
                      style: textTheme.bodyLarge!.fSize(18),
                    ),
                  ),
                ]),
              ),
              SizedBox(height: 8.h),
              const Divider(),
              ExpansionFAQ(
                question: '결제가 되지 않아요'.tr(),
                answer:
                    '''결제가 되지 않는경우  \n1. 웹 브라우저가 Explorer인 경우, 버전 10 이상인지 확인해야하며 되도록 크롬웹브라우저와 엣지를 추천드립니다.  \n2. 브라우저의 팝업 차단 설정이 해제되어 있어야 결제가 가능합니다.  \n3. 다른 카드로 결제를 시도해보기 (체크카드의 경우 잔액부족으로, 신용카드는 카드사 오류로 안되는 경우가 종종 발생합니다)\n위 사항을 확인하신 후에도 결제가 되지 않는 경우, 현재 사용중인 웹브라우저의 종류와 버전, 그리고 기기 종류 (PC/모바일의 경우 기기 브랜드 필요)를 확인하여 문의주시면 빠르게 도와드리겠습니다.\n감사합니다.''',
              ),
              const Divider(),
              ExpansionFAQ(
                question: '회원 탈퇴는 어떻게 하나요?'.tr(),
                answer:
                    '''메뉴 마이페이지 > 상단 개인 프로필 우측 설정 버튼을 누르면 개인정보 수정 페이지가 보이고 하단 [탈퇴하기] 버튼을 찾으실 수 있습니다.''',
              ),
              const Divider(),
              ExpansionFAQ(
                question: '검사를 다 끝내지 못했는데 이어서 하려면 어떻게 하나요?'.tr(),
                answer:
                    '''메뉴 마이페이지 > 심리검사 페이지로 접속하시면 이어서 하기 버튼을 통해 검사 재이용이 가능합니다.  ''',
              ),
              const Divider(),
              ExpansionFAQ(
                question: '결제 성공 후 검사를 바로 하지 못했는데 어떻게 해야 하나요?'.tr(),
                answer:
                    '''메뉴 마이페이지 > 심리검사 버튼을 누르면 구매하신 검사 목록이 보이고 [검사하기] 버튼을 찾으실 수 있습니다.\n\n클릭하면 바로 검사 실시 가능합니다.''',
              ),
              const Divider(),
              ExpansionFAQ(
                question: '어린 강아지도 심리검사를 받을 수 있나요?'.tr(),
                answer:
                    '''반려견 치매검사를 제외하고 카미 제공하는 심리검사는 반려견의 연령 제한을 두지 않습니다. 어린 강아지의 경우 신체적, 심리적 성숙이 빠르게 이루어지는 시기인 것을 감안하고 검사 결과 보고서를 확인하신다면 문제가 될 것은 없습니다.  \n다만, 연령이 어리기 때문에 활동성이 높게 나오거나 교육 반응성이 다소 낮게 나오는 등 일반적인 어린 강아지들이 공통적으로 보이는 행동 특성이 반영될 수 있습니다.  \n미리 말씀드리기로는, 소형견의 경우 약 1살, 중형견과 대형견의 경우 약 1.5~2살 미만인 반려견들의 검사 결과가 3개월 이내에 크게 변할 수 있습니다.  \n카미의 심리검사들은 현재의 상태를 모니터링하는 데에 주안점을 두고 개발이 되었기 때문에 성견이 되기 전에 한 번 확인하시고 성견 이후에 한 번 더 점검하시는 것을 추천드립니다.  ''',
              ),
              const Divider(),
              ExpansionFAQ(
                question: '결과보고서 인쇄 방법'.tr(),
                answer:
                    '''📝 본 검사 보고서는 크롬 브라우저에 최적화되어 있습니다.  \n크롬 브라우저상의 결과지 화면에서 우측 마우스버튼-인쇄를 누르면 출력이 가능합니다.\n\n주의 : 인쇄 설정에서 배경 그래픽 체크를 꼭 해주셔야 보고서가 올바르게 출력됩니다.\n\n*인쇄설정에 최적화된 검사만 인쇄하시는 것을 추천드립니다.  \n- 형용사 성격검사, 정서행동검사, 치매검사  \n양육자신감검사, 입양준비검사, 보호자 마음건강 테스트''',
              ),
              const Divider(),
              ExpansionFAQ(
                question: '결과보고서 다시보기'.tr(),
                answer:
                    '''마이페이지 > 심리검사 > 보고서 열람 버튼을 누르면 구매하신 검사결과 보고서를 다시 보실 수 있습니다.  \n검사를 구매하였는데도 검사를 완료하지 않았다면 검사하기 및 이어서 하기 버튼을 통해 검사실시가 가능합니다.''',
              ),
              const Divider(),
              ExpansionFAQ(
                question: '구매한 쿠폰이 보이지 않아요.'.tr(),
                answer:
                    '''쿠폰은 쿠폰번호를 직접 입력하여 사용하는 경우와, 회원 아이디로 자동 발급되는 경우 두 가지 방법으로 발급되고 있습니다.\n\n따라서 쿠폰번호를 입력하지 않더라도, 마이페이지 > 쿠폰 정보에서 자동으로 입력된 쿠폰을 확인 가능하십니다.\n\n쿠폰이 노출되지 않거나, 쿠폰번호를 입력했는데도 사용할 수 없는 쿠폰이라고 뜨는 경우에는 1:1 문의를 이용해주시기 바랍니다.''',
              ),
              SizedBox(height: 129.h),
              const CamiAppFooter(),
            ]),
          ),
        ),
      ),
    );
  }
}
