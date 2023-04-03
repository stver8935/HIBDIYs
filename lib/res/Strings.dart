class Strings{
// Nevigation Menu
  /** 네비게이션 메뉴 - 홈 */
  static const String NAV_HOME = "홈";
  /** 네비게이션 메뉴 - 장치 리스트 */
  static const String NAV_MY_DEVICE = "내 기기";
  /** 네비게이션 메뉴 - 판매 관리 */
  static const String NAV_SALE_MANAGE = "판매 관리";
  /** 네비게이션 메뉴 - 설정 */
  static const String NAV_SETTING = "설정";


//Sign In
  /** 아이디 */
  static const String ID = "아이디";
  /** 비밀번호 */
  static const String PASSWORD = "비밀번호";
  /** 비밀번호 확인 */
  static const String CONFIRM_PASSWORD = "비밀번호 확인";
  /** 이용약관 */
  static const String TERM_OF_SERVICE = "이용약관";


//MyInfo List
  /** 내정보 */
  static const String MY_INFO = "내정보";
  /** 장치 추가 */
  static const String ADD_DEVICE = "장치 추가";
  /** 장비 정보 상세 보기*/
  static const String DEVICE_INFO_DETAIL = "장비 상세 정보";
  /** 앱 설정 */
  static const String APP_SETTING = "앱 설정";
  /** 자주 묻는 질문 */
  static const String FAQ = "자주 묻는 질문";
  /** 오픈 라이센스 */
  static const String OPEN_LICENSE = "오픈 라이센스";
  /** 로그인 */
  static const String LOG_IN = "로그인";
  /** 로그인 */
  static const String SIGN_IN = "로그인";
  /** 구글 로그인 */
  static const String GOOGLE_LOGIN = "구글 로그인";
  ///
  static const String KAKAO_LOGIN = "카카오 로그인";
  /** 회원 가입 */
  static const String SIGN_UP = "회원가입";
  /** 로그아웃 */
  static const String LOG_OUT = "로그아웃";
  static const String SALE_PRODUCT_MANAGE = "판매물품 관리";

  static const String NAME = "이름";
  static const String DEVICE_TYPE ="기기 타입";
  static const String TEAM_VIEWER_ID = "팀뷰어 아이디";
  static const String ADDRESS = "주소";
  static const String CUR_UPDATE ="최근 업데이트";



  static const String YES = "예";
  static const String NO = "아니오";

// Dialog
  /// Confirm Dialog - 장치 추가
  static const String DLG_CONF_ADD_DEVICE = "장치를 추가 하시겠습니까?";
  /// Confirm Dialog - 로그아웃
  static const String DLG_CONF_LOG_OUT = "로그아웃 하시겠습니까?";
  ///
  static const String DLG_CONF_ADD_PRODUCT = "물품을 등록 하시겠습니까?";
  ///
  static const String DLG_CONF_APLY_CHANGE = "변경된 사항을 적용 하시겠습니까?";
  static const String DLG_CONF_EXIT_APP = "앱을 종료 하시겠습니까?";

  // data
  static const String LAST_UDT = "최종 업데이트 날짜";
  static const String SUCCESS = "성공";
  static const String FAIL = "실패";

  static const String PLZ_INSERT_ID = "아이디를 입력해 주세요.";
  static const String PLZ_INSERT_PWD = "비밀번호를 입력해 주세요.";
  static const String PLZ_INSERT_EMAIL ="이메일을 입력해 주세요.";
  static const String PLZ_INSERT_PHON_NUM ="핸드폰 번호를 입력해 주세요";


  // FAQ LIST
  static const String FAQ_1 = "자주 묻는 질문 1";
  static const String FAQ_RES_1 = "자주 묻는 질문 답변 1";

  static const String FAQ_2 = "자주 묻는 질문 2";
  static const String FAQ_RES_2 = "자주 묻는 질문 답변 1";

  static const String FAQ_3 = "자주 묻는 질문 3";
  static const String FAQ_RES_3 = "자주 묻는 질문 답변 1";

  static const String FAQ_4 = "자주 묻는 질문 4";
  static const String FAQ_RES_4 = "자주 묻는 질문 답변 1";


  // Device Status
  /// Connection Fail
  static const String CONN_FAIL = "연결 실패";
  /// Connection Success
  static const String CONN_SUCCESSED = "연결 성공";
  /// Connection Error
  static const String CONN_ERR = "연결 에러";




  static const String TMP = "온도";
  static const String HUM = "습도";
  static const String LIGHT = "광량";
  static const String FERT = "비옥도";

  static const String UNKNOWN = "알수없음";

  /// explain text
  /// 광량 상태값 설명
  static const String EXP_STATE_LIGHT = "광량이 증가하면 광포화점까지 광헙성 작용이\n"
      "왕성하여 생육량도 늘어나지만 작물에 따라 \n"
      "차이가 있습니다.";
  /// 온도 상태값 설명
  static const String EXP_STATE_TMP = "식물의 탄소동화작용, 호흡작용, 증산작용 등\n"
      " 생리적 작용에 영향을 미칩니다.";
  /// 습도 상태값 설명
  static const String EXP_STATE_HUM = "공기습도가 부족하면 잎 끝이 마르는 현상이 나타납니다.\n"
      "반면에 공기 중의 습도가 너무 높으면\n"
      " 증산 작용이 줄어들어 양분의 흡수와 \n"
      "광합성 작용 또한 느려지며 꽃 피는 것도 방해를 받게 됩니다.";
  /// 비옥도 상태값 설명
  static const String EXP_STATE_FERT = "생육 환경내 식물이 필요로 하는 영양소를 수치화 한 값입니다.";

}