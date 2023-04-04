import 'package:flutter/material.dart';
import 'package:hibdiys/data/TestThemeData.dart';
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
                      uid: TestThemeData.instance.getDeviceList()[idx].productId,
                      deviceType: DeviceType.TYPE_02,
                      productId: TestThemeData.instance.getDeviceList()[idx].productId,
                      title: TestThemeData.instance.getDeviceList()[idx].productName,
                      updateTime: TestThemeData.instance.getDeviceList()[idx].lastUpdateTime);
                },
                itemCount: TestThemeData.instance.getDeviceList().length,),
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


