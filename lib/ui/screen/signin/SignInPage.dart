import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:logger/logger.dart';
import 'package:hibdiys/res/Strings.dart';


import 'package:dio/dio.dart';
import 'package:hibdiys/ui/screen/main/MainPage.dart';
import 'package:hibdiys/ui/screen/signin/SignInPageNavigator.dart';
import 'package:hibdiys/ui/screen/signup/SignUpPage.dart';
import 'package:hibdiys/utils/functions.dart';


class SignInPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _SignInPage();
  }
}

class _SignInPage extends State<SignInPage> implements signInNavigator{
  @override
  Widget build(BuildContext context) {

    /// nativeAppKey 설정 파일로 별도 분리
    KakaoSdk.init(nativeAppKey: "64612c0a6ae54c5f81a147f0cd430fcd");

    return Scaffold(
        body: Form(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 250),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                //cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  hintText: Strings.PLZ_INSERT_ID,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(1),
                    child: Icon(Icons.person),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 1),
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                  //cursorColor: kPrimaryColor,
                  decoration: InputDecoration(
                    hintText: Strings.PLZ_INSERT_PWD,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(1),
                      child: Icon(Icons.lock),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: 400,
                height: 50,
                child: Hero(
                  tag: "login_btn",
                  child: ElevatedButton(
                    onPressed: () {
                      openHomePage();
                    },
                    child: Text(
                      Strings.LOG_IN,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),
              const SizedBox(child: Text("Or")),
              const SizedBox(height: 10),
              SizedBox(
                width: 400,
                height: 50,
                child: ElevatedButton(
                  clipBehavior: Clip.antiAlias,
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.zero,
                     ),
                    onPressed: _loginWithKakao,
                    child: Image.asset("assets/images/kakao/kakao_login_large_wide.png",fit: BoxFit.cover,width: 400,),
                )
              ),
              const SizedBox(height: 100),
              SizedBox(
                width: 400,
                height: 50,
                child:
                Center(
                  child: InkWell(
                    onTap: () {openSignUpPage();}, // Handle your callback
                    child: Text(Strings.SIGN_UP)
                  ),
                ),
              )
            ],
          ),
        )
    );
  }


  @override
  void openHomePage(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> MainPage()));
  }

  @override
  void openSignUpPage(){
    functions().openKakaoTalkMarket();
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
  }

  @override
  void openKakaoLoginPage(){
    //Navigator.push(context, MaterialPageRoute(builder: (context) => );
  }

  @override
  void finishPage(){
    Navigator.pop(context);
  }


  Future<void> _loginWithKakao() async {;
    try {
      bool isKakaoInstsalled = await isKakaoTalkInstalled();
      new Logger().i('카카오톡으로 로그인 성공 ${isKakaoInstsalled}');
    } catch (error) {
      new Logger().e('카카오톡으로 로그인 실패 $error');
    }
  }


  @override
  void openStatisticsPage() {
  }

  @override
  void openKakaoSignInPage() {
  }

}




class CustomLogInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('REQUEST[${options.method}] => PATH: ${options.path},  data => ${options.data}}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(
      'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}',
    );
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}',
    );
    super.onError(err, handler);
  }
}