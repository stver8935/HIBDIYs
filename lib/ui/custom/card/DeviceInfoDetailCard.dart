import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hibdiys/data/model/DeviceInfoDetail.dart';
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
                const Text("${Strings.NAME} : "),
                Text(item.userId)
              ],
            ),
            Row(
              children: <Widget>[
                const Text("${Strings.DEVICE_TYPE} : "),
                Text(item.userId)
              ],
            ),
            Row(
              children: <Widget>[
                const Text("${Strings.TEAM_VIEWER_ID} : "),
                Text(item.teamViewerId)
              ],
            ),
            Row(
              children: <Widget>[
                const Text("${Strings.CUR_UPDATE} : "),
                Text(item.lastUpdateTime)
              ],
            ),
            Card(
              margin: EdgeInsets.only(top: 20),
              child: Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: Text("딸기를 키우기 위한 장비"),
              ),
            )
          ],
        ),
      ),
    );
  }

}