import 'dart:io';

class Functions{
  Functions._privateConstructor();

  static final _instance = Functions._privateConstructor();

  factory Functions(){
    return _instance;
  }

  /**
   *
   * */
  DateTime getCurrentTime(){
    return DateTime.now();
  }

  /**
   * 현재 millisecond 반환
   * */
  int getCurrentMsec(){
    return DateTime.now().millisecondsSinceEpoch;
  }


  void openKakaoTalkMarket(){
    String aa = Platform.localeName;
    print(aa);
  }



}