import 'package:flutter/material.dart';
import 'package:hibdiys/data/model/DeviceInfo.dart';
import 'package:hibdiys/data/model/type/DeviceType.dart';
import 'package:hibdiys/ui/custom/CustomSearchDelegate.dart';
import 'package:hibdiys/ui/custom/card/DeviceListItemCard.dart';

class DeviceListPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _DeviceListPage();
  }
}


class _DeviceListPage  extends State<DeviceListPage> {

  List<DeviceInfo> items = List<DeviceInfo>.filled(10,DeviceInfo(
      uid: "63d9ee2190759dfee80e4724",
      productId: "animalAvoid",
      productName: "비둘기가라",
      macAddress: "null",
      userId: "frogmon",
      userYn: "0",
      lastUpdateTime: "2020-12-11 11:07:14",
      lastUpdateUser: "frogmon",
      productType: "1"
  ),growable: true);


  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        centerTitle: true,
        leadingWidth: 80,
        leading:Container(
          margin: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
          child: Image.asset("assets/images/logo/logo_frogmon.png",fit: BoxFit.fill,), /// 임시 아이콘
        ),
        actions: [
          IconButton(
          onPressed: (){
            showSearch(context: context, delegate: CustomSearchDelegate());
          },
              icon: const Icon(Icons.search)
          ),
          IconButton(onPressed: (){print("search Filter onPressed");}, icon: Icon(Icons.tune))
        ],
      ),
      body:Container(
        margin: EdgeInsets.only(left: 3,right: 3,top: 10,bottom: 10),
        child:
            RefreshIndicator(
              onRefresh: _pullRefresh,
              child: ListView.builder(
                itemBuilder: (BuildContext ctx,int idx){
                  return DeviceListItemCard(
                      uid: items[idx].productId,
                      deviceType: DeviceType.TYPE_02,
                      productId: items[idx].productId,
                      title: items[idx].productName,
                      updateTime: items[idx].lastUpdateTime);
                },
                itemCount: items.length,),
            )
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  /// 화면 새로고침
  Future<void> _pullRefresh() async{

  }

}

class _ListItem{
  final String title;
  final String subTitle;
  final String imageUrl;

  _ListItem({required this.title, required this.subTitle, required this.imageUrl});
}


List<_ListItem> listItems = [
  _ListItem(title: "title1", subTitle: "subTitle1", imageUrl: "imageUrl1"),
  _ListItem(title: "title1", subTitle: "subTitle1", imageUrl: "imageUrl1"),
  _ListItem(title: "title1", subTitle: "subTitle1", imageUrl: "imageUrl1"),
];


