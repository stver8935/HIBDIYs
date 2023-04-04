import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hibdiys/data/model/type/DeviceType.dart';
import 'package:hibdiys/res/FontSize.dart';
import 'package:hibdiys/res/Strings.dart';
import 'package:hibdiys/ui/screen/deviceinfodetail/DeviceInfoDetailPage.dart';

class DeviceListItemCard extends StatelessWidget {

  final String uid;
  final DeviceType deviceType;
  final String productId;
  final String title;
  final String updateTime;

  final List<String> deviceIconAssets = [
    "assets/images/device_icon/camera.png",
    "assets/images/device_icon/face_detection.png",
    "assets/images/device_icon/indoor_plants.png",
    "assets/images/device_icon/smart_farm.png",
    "assets/images/device_icon/smart_mirror.png",
    "assets/images/device_icon/unknown_icon.png"
  ];

  DeviceListItemCard({
    required this.uid,
    required this.deviceType,
    required this.productId,
    required this.title,
    required this.updateTime});

  @override
  Widget build(BuildContext context) {
    return
    InkWell(
      child: Container(
        height: 120,
        child: Card(
            child: Container(
              padding: EdgeInsets.all(5),
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: getDeviceIcon(DeviceType.TYPE_02),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Expanded(
                    flex: 14,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            title,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: FontSize.SIZE_28,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(productId,overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: FontSize.SIZE_17)),
                          Text(updateTime,overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: FontSize.SIZE_17))
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(Icons.notifications_active,),
                        Text(""), // padding Text
                        Text(Strings.CONN_FAIL,style: TextStyle(fontSize: FontSize.SIZE_12,fontWeight: FontWeight.bold,color: Colors.red),)
                      ],
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
      onTap: (){
        openDeviceInfoDetail(context);
      },
    );


  }

  Widget getDeviceIcon(DeviceType type){
    switch(type){
      case DeviceType.TYPE_00: return Image.asset(deviceIconAssets[0],width: 60,height: 100,fit: BoxFit.fill);
      case DeviceType.TYPE_01: return Image.asset(deviceIconAssets[1],width: 60,height: 100,fit: BoxFit.fill);
      case DeviceType.TYPE_02: return Image.asset(deviceIconAssets[2],width: 60,height: 300,fit: BoxFit.fill);
      case DeviceType.TYPE_03: return Image.asset(deviceIconAssets[3],width: 60,height: 100,fit: BoxFit.fill);
      default: return Image.asset(deviceIconAssets[4],width: 60,height: 100,fit: BoxFit.fill);
    }
  }


  void openDeviceInfoDetail(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> DeviceInfoDetailPage()));
  }

}
