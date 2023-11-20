class NoInternetException implements Exception {
  NoInternetException([this.message = 'NoInternetException Occurred']);

  final String? message;
}

class CustomException implements Exception {
  CustomException([this.message]);

  final String? message;
}

class AuthFailureException implements Exception {
  AuthFailureException([this.message = '로그인 정보가 올바르지 않습니다.'])
      : super(
        // '사용자가 인증되지 않았습니다. 회원가입이나 로그인이 필요합니다.',
        // '사용자ID가 없습니다. 앱 재실행 후 다시 로그인 해보세요.',
        );

  final String? message;
}

class PageException implements Exception {
  const PageException([
    this.code = 404,
    this.message = '페이지를 찾을 수 없습니다.',
  ]);

  final int code;
  final String? message;
}
