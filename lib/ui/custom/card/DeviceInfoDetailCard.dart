import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hibdiys/data/model/DeviceInfoDetail.dart';
import 'package:hibdiys/res/FontSize.dart';
import 'package:hibdiys/res/Strings.dart';

class DeviceInfoDetailCard extends StatelessWidget{

  final DeviceInfoDetail item;

  DeviceInfoDetailCard({required this.item});


  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      child: Container(
        margin: EdgeInsets.all(10),

        child: Column(
          children: [
            Row(
              children:  <Widget>[
                const Text("${Strings.NAME} : ",style: TextStyle(fontSize: FontSize.SIZE_18)),
                Text(item.userId,style: const TextStyle(fontSize: FontSize.SIZE_18))
              ],
            ),
            Row(
              children: <Widget>[
                const Text("${Strings.DEVICE_TYPE} : ",style: TextStyle(fontSize: FontSize.SIZE_18)),
                Text(item.userId,style: const TextStyle(fontSize: FontSize.SIZE_18))
              ],
            ),
            Row(
              children: <Widget>[
                const Text("${Strings.TEAM_VIEWER_ID} : ",style: TextStyle(fontSize: FontSize.SIZE_18)),
                Text(item.teamViewerId,style: const TextStyle(fontSize: FontSize.SIZE_18))
              ],
            ),
            Row(
              children: <Widget>[
                const Text("${Strings.CUR_UPDATE} : ",style: TextStyle(fontSize: FontSize.SIZE_18)),
                Text(item.lastUpdateTime,style: const TextStyle(fontSize: FontSize.SIZE_18))
              ],
            ),
            Card(
              margin: const EdgeInsets.only(top: 20),
              child: Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                child: const Text("딸기를 키우기 위한 장비",style: TextStyle(fontSize: FontSize.SIZE_18)),
              ),
            )
          ],
        ),
      ),
    );
  }

}