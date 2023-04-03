import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hibdiys/data/TestThemeData.dart';
import 'package:hibdiys/res/Strings.dart';
import 'package:hibdiys/ui/custom/card/DeviceControllCard.dart';
import 'package:hibdiys/ui/custom/card/DeviceInfoDetailCard.dart';
import 'package:hibdiys/ui/custom/card/DeviceStateCard.dart';
import 'package:hibdiys/ui/screen/deviceinfodetail/DeviceInfoDetailPageNavigator.dart';

class DeviceInfoDetailPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _DeviceInfoDetailPage();
  }
}

class _DeviceInfoDetailPage extends State<DeviceInfoDetailPage> implements DeviceInfoDetailNavigator{


  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(Strings.DEVICE_INFO_DETAIL),
          leading: IconButton(
            icon : Icon(Icons.arrow_back),
            onPressed: (){ Navigator.pop(context); },
          ),
          actions: [
            IconButton(onPressed: (){print("share");}, icon: Icon(Icons.share)),
            IconButton(onPressed: (){print("more");}, icon: Icon(Icons.more_vert))
          ],
        ),
      body:
      Center(
        child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
                children: <Widget>[
                  DeviceInfoDetailCard(item: TestThemeData.instance.getDeviceInfoDetail()),
                  Expanded(child: DeviceStateCard(list:TestThemeData.instance.getDeviceStateList())),
                  DeviceControllCard()
                ]),
              ),
      ),
    );
  }
}