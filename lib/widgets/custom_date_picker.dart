// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/theme/theme_helper.dart';

/// 드롭다운 날짜 선택기로 사용할 위젯을 정의합니다.
// ignore: must_be_immutable
class DropdownDatePicker extends StatefulWidget {
  DropdownDatePicker({
    super.key,
    this.textStyle,
    this.boxHeight = 40,
    this.boxDecoration = const BoxDecoration(
      color: Color(0xFFF5F5F5),
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
    ),
    this.inputDecoration = const InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide.none,
      ),
    ),
    this.icon = const Icon(Icons.expand_more, color: Colors.grey),
    this.startYear = 1933,
    this.endYear,
    this.width = 12.0,
    this.onChangedDay,
    this.onChangedMonth,
    this.onChangedYear,
    this.errorDay = '날짜를 선택하세요',
    this.errorMonth = '월을 선택해 주세요.',
    this.errorYear = '연도를 선택해 주세요.',
    this.hintMonth = '월',
    this.hintDay = '일',
    this.hintYear = '년',
    this.isFormValidator = false,
    this.isExpanded = true,
    this.selectedDay,
    this.selectedMonth,
    this.selectedYear,
    this.showDay = true,
    this.showMonth = true,
    this.showYear = true,
    this.monthFlex = 1,
    this.dayFlex = 1,
    this.yearFlex = 1,
  });

  /// 드롭다운 텍스트 스타일 선택
  final TextStyle? textStyle;

  final double? boxHeight;

  /// 드롭다운 컨테이너 상자 장식
  final BoxDecoration boxDecoration;

  /// 드롭다운용 입력 데코레이션
  final InputDecoration inputDecoration;

  /// 드롭다운 확장 아이콘
  final Icon icon;

  /// 날짜 선택기의 시작 연도
  /// 기본값은 1900년입니다.
  final int startYear;

  /// 날짜 선택기의 종료 연도
  /// 기본값은 현재 연도입니다.
  final int? endYear;

  /// 각 드롭다운 사이의 너비
  /// 기본값은 12.0입니다.
  final double width;

  /// 선택한 날짜 반환
  ValueChanged<String?>? onChangedDay;

  /// 선택한 월 반환
  ValueChanged<String?>? onChangedMonth;

  /// 선택한 연도 반환
  ValueChanged<String?>? onChangedYear;

  /// 날짜에 대한 오류 메시지
  String errorDay;

  /// 월에 대한 오류 메시지
  String errorMonth;

  /// 연도에 대한 오류 메시지
  String errorYear;

  /// 월 드롭다운에 대한 힌트
  /// 기본값은 "월"입니다.
  String hintMonth;

  /// 연도 드롭다운에 대한 힌트
  /// 기본값은 "연"입니다.
  String hintYear;

  /// 일 힌트 드롭다운
  /// 기본값은 "일"입니다.
  String hintDay;

  /// 양식 유효성 검사기 사용 여부
  /// 기본값은 거짓입니다.
  final bool isFormValidator;

  /// 드롭다운이 확장됨
  /// 기본값은 참입니다.
  final bool isExpanded;

  /// 1~31 사이에서 선택한 일
  final int? selectedDay;

  /// 1~12 사이에서 선택한 월
  final int? selectedMonth;

  /// 시작 연도와 끝 연도 사이에서 선택된 연도
  final int? selectedYear;

  /// 기본값 참
  bool showYear;
  bool showMonth;
  bool showDay;

  /// 월 확장 플렉스
  int monthFlex;

  /// 일 확장 플렉스
  int dayFlex;

  /// 연도 확장 플렉스
  int yearFlex;

  @override
  State<DropdownDatePicker> createState() => _DropdownDatePickerState();
}

class _DropdownDatePickerState extends State<DropdownDatePicker> {
  String monthselVal = '';
  String dayselVal = '';
  String yearselVal = '';
  int daysIn = 32;
  late List<int> listdates = [];
  late List<int> listyears = [];
  late List<int> listMonths = [];

  @override
  void initState() {
    super.initState();
    dayselVal = widget.selectedDay != null ? widget.selectedDay.toString() : '';
    monthselVal =
        widget.selectedMonth != null ? widget.selectedMonth.toString() : '';
    yearselVal =
        widget.selectedYear != null ? widget.selectedYear.toString() : '';
    listdates = Iterable<int>.generate(daysIn).skip(1).toList();
    listyears =
        Iterable<int>.generate((widget.endYear ?? DateTime.now().year) + 1)
            .skip(widget.startYear)
            .toList()
            .reversed
            .toList();

    /// 사용자 로캘의 월 목록
    listMonths = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
  }

  /// 월 선택 드롭다운 함수
  void monthSelected(String? value) {
    widget.onChangedMonth!(value);
    monthselVal = value!;
    final days = daysInMonth(
      yearselVal == '' ? DateTime.now().year : int.parse(yearselVal),
      int.parse(value),
    );
    listdates = Iterable<int>.generate(days + 1).skip(1).toList();
    checkDates(days);
    setState(() {});
  }

  void checkDates(int days) {
    // 선택한 날짜가 null이 아닌지 확인합니다.
    if (dayselVal != '') {
      // 선택한 날짜가 일 수보다 큰지 확인합니다.
      if (int.parse(dayselVal) > days) {
        // 선택한 날짜가 일 수보다 크면 선택한 날짜를 지웁니다.
        dayselVal = '';
        widget.onChangedDay!('');
        setState(() {});
      }
    }
  }

  /// 주어진 월의 일 수를 반환합니다.
  //
  /// 이 함수는 월이 [1, 12] 범위에 있다고 가정합니다.
  /// 월이 범위를 벗어나는 경우 이 함수는 [RangeError]를 반환합니다.
  int daysInMonth(int year, int month) => DateTimeRange(
        start: DateTime(year, month),
        end: DateTime(year, month + 1),
      ).duration.inDays;

  /// [daysSelected]는 사용자가 드롭다운 메뉴에서 요일을 선택할 때 호출되는 함수입니다.
  /// 이 함수는 값을 매개변수로 받아 상위 위젯의 [onChangedDay] 함수를 호출합니다.
  /// [onChangedDay] 함수는 상위 위젯의 날짜 값을 업데이트하고 위젯이 사용자가 드롭다운 메뉴에서 선택한 날짜로 값을 다시 빌드하도록 합니다.
  void daysSelected(String? value) {
    widget.onChangedDay!(value);
    dayselVal = value!;
    setState(() {});
  }

  void yearsSelected(String? value) {
    widget.onChangedYear!(value);
    yearselVal = value!;
    if (monthselVal != '') {
      final days = daysInMonth(
        yearselVal == '' ? DateTime.now().year : int.parse(yearselVal),
        int.parse(monthselVal),
      );
      listdates = Iterable<int>.generate(days + 1).skip(1).toList();
      checkDates(days);
      setState(() {});
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (widget.showYear)
          Expanded(
            flex: widget.yearFlex,
            child: Container(
              alignment: Alignment.center,
              height: widget.boxHeight,
              decoration: widget.boxDecoration,
              child: ButtonTheme(
                alignedDropdown: true,
                child: DropdownButtonHideUnderline(
                  child: yearDropdown(),
                ),
              ),
            ),
          ),
        if (widget.showMonth) SizedBox(width: widget.width),
        if (widget.showMonth)
          Expanded(
            flex: widget.monthFlex,
            child: Container(
              alignment: Alignment.center,
              height: widget.boxHeight,
              decoration: widget.boxDecoration,
              child: ButtonTheme(
                alignedDropdown: true,
                child: DropdownButtonHideUnderline(
                  child: monthDropdown(),
                ),
              ),
            ),
          ),
        if (widget.showDay) SizedBox(width: widget.width),
        if (widget.showDay)
          Expanded(
            flex: widget.dayFlex,
            child: Container(
              alignment: Alignment.center,
              height: widget.boxHeight,
              decoration: widget.boxDecoration,
              child: ButtonTheme(
                minWidth: 110.w,
                height: 36.h,
                alignedDropdown: true,
                child: DropdownButtonHideUnderline(
                  child: dayDropdown(),
                ),
              ),
            ),
          ),
      ],
    );
  }

  /// 월 드롭다운
  DropdownButtonFormField<String> monthDropdown() {
    return DropdownButtonFormField<String>(
      decoration: widget.inputDecoration,
      isExpanded: widget.isExpanded,
      hint: _buildHintText(widget.hintMonth),
      icon: widget.icon,
      value: monthselVal == '' ? null : monthselVal,
      onChanged: monthSelected,
      validator: (value) {
        return widget.isFormValidator
            ? value == null
                ? widget.errorMonth
                : null
            : null;
      },
      items: listMonths.map((item) {
        return DropdownMenuItem<String>(
          value: item.toString(),
          child: Text(
            item.toString(),
            style: widget.textStyle ?? textTheme.bodySmall,
          ),
        );
      }).toList(),
    );
  }

  /// 연도 드롭다운
  DropdownButtonFormField<String> yearDropdown() {
    return DropdownButtonFormField<String>(
      decoration: widget.inputDecoration,
      hint: _buildHintText(widget.hintYear),
      isExpanded: widget.isExpanded,
      icon: widget.icon,
      value: yearselVal == '' ? null : yearselVal,
      onChanged: yearsSelected,
      validator: (value) {
        return widget.isFormValidator
            ? value == null
                ? widget.errorYear
                : null
            : null;
      },
      items: listyears.map((item) {
        return DropdownMenuItem<String>(
          value: item.toString(),
          child: Text(
            item.toString(),
            style: widget.textStyle ?? textTheme.bodySmall,
          ),
        );
      }).toList(),
    );
  }

  /// 일 드롭다운
  DropdownButtonFormField<String> dayDropdown() {
    return DropdownButtonFormField<String>(
      decoration: widget.inputDecoration,
      hint: _buildHintText(widget.hintDay),
      isExpanded: widget.isExpanded,
      icon: widget.icon,
      value: dayselVal == '' ? null : dayselVal,
      onChanged: daysSelected,
      validator: (value) {
        return widget.isFormValidator
            ? value == null
                ? widget.errorDay
                : null
            : null;
      },
      items: listdates.map((item) {
        return DropdownMenuItem<String>(
          value: item.toString(),
          child: Text(
            item.toString(),
            style: widget.textStyle ?? textTheme.bodySmall,
          ),
        );
      }).toList(),
    );
  }

  Widget _buildHintText(String hint) {
    return Text(hint,
        overflow: TextOverflow.visible,
        textAlign: TextAlign.start,
        style: textTheme.bodyMedium);
  }
}
