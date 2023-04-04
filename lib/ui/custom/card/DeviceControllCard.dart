import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hibdiys/res/FontSize.dart';
import 'package:hibdiys/res/Strings.dart';

class DeviceControllCard extends StatefulWidget{

  const DeviceControllCard({super.key});

  @override
  State<StatefulWidget> createState() => _DeviceControllCardState();
}

class _DeviceControllCardState extends State<DeviceControllCard>{


  bool isShowCtrlBoard = true;

  bool isOnOffLed = false;

  bool isOnOffUnderWaterMoter = false;

  bool isOnOffHeater = false;

  bool isOnOffVentilator = false;



  @override
  Widget build(BuildContext context) {
    return Container(
      child: deviceControllWidget(),
    );
  }

  Widget deviceControllWidget(){

    return Card(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
                width: double.infinity,
                padding: const EdgeInsets.only(left: 10),
                color: Colors.blueGrey,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: const Text(Strings.DEVICE_CONTROLL, style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: FontSize.SIZE_22)),
                    ),
                    Switch(
                      value: isShowCtrlBoard,
                      onChanged: (bool val){
                        setState(() {
                          isShowCtrlBoard = val;
                        });
                      },
                    )
                  ],
                )
            ),
            Visibility(visible: isShowCtrlBoard,child:Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10),
                      child: Column(children: <Widget>[
                        const Text(Strings.LED,style: TextStyle(fontWeight: FontWeight.bold,fontSize: FontSize.SIZE_18)), 
                        Switch(value: isOnOffLed, onChanged: (bool val){
                          setState(() {
                            isOnOffLed = val;
                          });
                        }),
                      ])),

                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(children: <Widget>[
                      const Text(Strings.UNDER_WATER_MOTOR,style: TextStyle(fontWeight: FontWeight.bold,fontSize: FontSize.SIZE_18)),
                      Switch(value: isOnOffUnderWaterMoter, onChanged: (bool val){
                        setState(() {
                          isOnOffUnderWaterMoter = val;
                        });
                      })
                    ],),
                  )
                  ,
                  Container(child: Column(children: <Widget>[
                    const Text(Strings.VENTILATOR,style: TextStyle(fontWeight: FontWeight.bold,fontSize: FontSize.SIZE_18)),
                    Switch(value: isOnOffVentilator, onChanged: (bool val){
                      setState(() {
                        isOnOffVentilator = val;
                      });
                    })
                  ],),),
                  Container(child:
                  Column(children: <Widget>[
                    const Text(Strings.HEATER,style: TextStyle(fontWeight: FontWeight.bold,fontSize: FontSize.SIZE_18)),
                    Switch(value: isOnOffHeater, onChanged: (bool val){
                      setState(() {
                        isOnOffHeater = val;
                      });
                    })
                  ],),),

                ],
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}