import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hibdiys/data/TestThemeData.dart';
import 'package:hibdiys/res/FontSize.dart';
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

    String selectedMenu = "";

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: const Text(Strings.DEVICE_INFO_DETAIL,style: TextStyle(fontWeight: FontWeight.bold,fontSize: FontSize.SIZE_25),),
          leading: IconButton(
            icon : const Icon(Icons.arrow_back),
            onPressed: (){ Navigator.pop(context); },
          ),
          actions: [
            PopupMenuButton<String>(
              initialValue: selectedMenu,
              // Callback that sets the selected popup menu item.
              onSelected: (String item) {
                setState(() {
                  selectedMenu = item;
                });
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: "request",
                  child: Text('해당 기기 문의'),
                ),
              ],
            )
          ],
        ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                DeviceInfoDetailCard(item: TestThemeData.instance.getDeviceInfoDetail()),
                DeviceStateCard(list:TestThemeData.instance.getDeviceStateList()),
                const DeviceControllCard()
              ],
            ),
          ),
        )
      )
    );
  }
}