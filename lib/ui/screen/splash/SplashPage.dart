
import 'package:flutter/material.dart';


class SplashPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SplashPage();
  }
}

class _SplashPage extends State<SplashPage>{
    @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //scheduleTimeout(3000,false);

    return Scaffold(
      body: Center(
        child: Text("Splash"),
      )
    );
  }

  /*
Timer scheduleTimeout(int milliseconds,bool isAutoLogin){
  final dio = Dio();
  UpdateDeviceStatusRequest req =  UpdateDeviceStatusRequest(userId: "frogmon", productId: "FM-LED-01");
  DeviceDataSource api = DeviceDataSource(dio);
  api
  .updateDevice(req)
  .then((value) => {
    Logger().e(" Request Data : ${value}")
  });


    return Timer(Duration(milliseconds: milliseconds), (() {
        Navigator.pop(context);
        if(isAutoLogin){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>  HomeNavigator()));
        }
        else{
          Navigator.push(context, MaterialPageRoute(builder: (context)=> login()));
        }
    }));
}
*/
}