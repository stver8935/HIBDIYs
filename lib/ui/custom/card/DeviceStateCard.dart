import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hibdiys/data/model/DeviceState.dart';
import 'package:hibdiys/data/model/type/DeviceStateType.dart';
import 'package:hibdiys/res/FontSize.dart';



class DeviceStateCard extends StatelessWidget{

  final List<DeviceState> list;

  const DeviceStateCard({super.key, required this.list});


  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
          width: double.infinity,
          height: ((1<=(list.length%2))? list.length~/2+1 : list.length~/2)*220,
          padding: const EdgeInsets.only(top: 5,bottom: 5),
          child:
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    color: Colors.blueGrey,
                    child: const Text("장비 상태값", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: FontSize.SIZE_22)),
                  ),
                  Expanded(child: GridView.builder(
                    itemCount: list.length, //item 개수
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
                      childAspectRatio: 1/1, //item 의 가로 1, 세로 2 의 비율
                    ),
                    itemBuilder: (BuildContext ctx,int idx){
                      DeviceStateType type = list[idx].stateType;
                      String value = list[idx].value;
                      return Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            DeviceStateWidget(type,value)
                          ],
                        ),
                      );
                    },
                  ),
                  )
                ],
              ),
        )
      );
  }


  Widget DeviceStateWidget(DeviceStateType type,String value){
    return Card(
      color: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30))
      ),
      child: Container(
        height: 170,
        width: 170,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(type.name,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: FontSize.SIZE_22)),
                Container(
                  color: Colors.white,
                  child: Tooltip(
                    padding: const EdgeInsets.all(10),
                    message: type.description,
                    child: const Icon(Icons.error,color: Colors.grey,),
                  )
                )
              ],
            ),
            Container(
              width: 100,
              height: 100,
              child: Image.asset(type.imgPath,width: 100,height: 100,),
            ),
            Container(
              child: Expanded(
                child: Text("${value} 도",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: FontSize.SIZE_22)),
              )
            )
          ],
        ),
      ),
    );
  }

}

enum ImgAsset{
  TMP("assets/images/temperature.png"),
  HUM("assets/images/humdi.png"),
  FERT("assets/images/fertilizer.png"),
  LIGHT("assets/images/sun.png"),
  UNKNOWN("assets/images/fertilizer.png");

  final String imgPath;
  const ImgAsset(this.imgPath);
  factory ImgAsset.getByCode(String code){
    return ImgAsset.values.firstWhere((value) => value == code, orElse: ()=> ImgAsset.UNKNOWN);
  }

}