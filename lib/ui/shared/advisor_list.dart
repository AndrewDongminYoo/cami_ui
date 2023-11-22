// 🌎 Project imports:
import '/data/models/advisor.dart';
import '/gen/assets.gen.dart';

final advisors = [
  Advisor(
    index: '0',
    image: Assets.images.experts.kmc.path,
    jobTitle: '고양이 행동 전문가',
    name: '김명철 수의사',
    description: 'N동물의료센터 노원점 원장 \n'
        '한국 고양이 수의사회 홍보 이사 \n'
        'EBS ‘고양이를 부탁해’ 출연',
  ),
  Advisor(
    index: '1',
    image: Assets.images.experts.sch.path,
    jobTitle: '강아지 행동 전문가',
    name: '설채현 수의사',
    description: '동물행동클리닉 Knollo 원장 \n'
        'KPA Professional trainer \n'
        'EBS ‘세상에 나쁜 개는 없다’ 출연',
  ),
  Advisor(
    index: '2',
    image: Assets.images.experts.syj.path,
    jobTitle: '동물행동학 전문가',
    name: '신윤주 박사',
    description: '서울대학교 수의학박사 \n'
        '광주동물메디컬 센터 수의사',
  ),
  Advisor(
    index: '3',
    image: Assets.images.experts.kji.path,
    jobTitle: '임상수의학 박사',
    name: '강종일 박사',
    description: '한국수의학교육학회 자문위원 \n'
        '충현동물종합병원 원장',
  ),
  Advisor(
    index: '4',
    image: Assets.images.experts.sjh.path,
    jobTitle: '클리커 트레이너',
    name: '서지형 훈련사',
    description: 'KPA-CTP / CCPDT-KA \n'
        '제이클리커아카데미 대표',
  ),
  Advisor(
    index: '5',
    image: Assets.images.experts.psh.path,
    jobTitle: '상담심리학 박사',
    name: '박성희 박사',
    description: '한국상담학회 1급 상담사 \n'
        '스트레스 관리, 심리상담 출강',
  ),
];
