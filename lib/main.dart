import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hibdiys/AppObserver.dart';
import 'package:hibdiys/res/Strings.dart';
import 'package:hibdiys/ui/screen/signin/SignInPage.dart';

void main() {
  Bloc.observer = AppObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 폰트 사이즈 변경
      builder: (context,child) {
        return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 0.9),
            child: child!
        );
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return SignInPage();
  }




/// 로그아웃 다이얼로그 표출 */
void showLogOutDialog(){
  String title = Strings.LOG_OUT;
  String content = Strings.DLG_CONF_LOG_OUT;
  String yes = Strings.YES;
  String no = Strings.NO;


showDialog(
        context: context,
        //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            //Dialog Main Title
            title: Column(
              children: <Widget>[
                Text(title),
              ],
            ),
            //
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  content,
                ),
              ],
            ),
            actions: <Widget>[
               TextButton(
                child: Text(yes),
                onPressed: () {
                  // 로그아웃 동작 함수
                  Navigator.pop(context);
                },
              ),
              TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                 child: Text(no)
                )
            ],
          );
        });
}


/// 로그아웃 동작 */
void logOut(){

}

}
