
import 'package:hibdiys/data/model/DeviceInfo.dart';
import 'package:hibdiys/data/model/DeviceInfoDetail.dart';
import 'package:hibdiys/data/model/DeviceState.dart';
import 'package:hibdiys/data/model/type/DeviceStateType.dart';

/// 테스트 용도 데미 데이터 클래스
///
class TestThemeData {

  TestThemeData._privateConstructor();

  static final TestThemeData instance = TestThemeData._privateConstructor();

  factory TestThemeData(){
    return instance;
  }

  ///장비 정보 리스트
  List<DeviceInfo> getDeviceList(){
    return List<DeviceInfo>.filled(10,DeviceInfo(
        uid: "63d9ee2190759dfee80e4724",
        productId: "animalAvoid",
        productName: "비둘기가라",
        macAddress: "null",
        userId: "frogmon",
        userYn: "0",
        lastUpdateTime: "2020-12-11 11:07:14",
        lastUpdateUser: "frogmon",
        productType: "1"
    ),growable: true);
  }

  ///장비 상세 정보
  DeviceInfoDetail getDeviceInfoDetail(){
    return DeviceInfoDetail(
        userId: "frogmon",
        city: "서울시",
        station: "영등포구",
        location: "7046",
        version: 1,
        teamViewerId: "",
        lastUpdateTime: "20201106102400",
        productId: "FM-LED-01",
        temp: "30",
        humidi: "30",
        light: "30",
        fert: "30",
        unKnownValue: "test");
  }

  /// 장비 상태값 정보
  List<DeviceState> getDeviceStateList(){
    return [
      DeviceState(stateType: DeviceStateType.TMP, value: "20"),
      DeviceState(stateType: DeviceStateType.HUMDI, value: "21"),
      DeviceState(stateType: DeviceStateType.LIGHT, value: "60"),
      DeviceState(stateType: DeviceStateType.FERT, value: "30")
    ];
  }

  /// 로그인 유저 정보
  void getUserInfo(){

  }

  /// 판매 상품 리스트
  void getSaleProductList(){

  }
  /// 판매 상품 정보 상세
  void getSaleProductInfoDetail(){

  }

}