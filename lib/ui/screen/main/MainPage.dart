import 'package:flutter/material.dart';
import 'package:hibdiys/res/Strings.dart';
import 'package:hibdiys/ui/screen/saleproductlist/SaleProductListPage.dart';
import 'package:hibdiys/ui/screen/settings/SettingsPage.dart';

import '../devicelist/DeviceListPage.dart';
import '../statistics/StatisticsPage.dart';


class MainPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MainPage();
  }
}



class _MainPage extends State<MainPage>{

  final PageController pageController = PageController(
    initialPage: 0,
  );



  @override
  void initState() {
    super.initState();
  }
  int index = 0;

  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: _getBody(index),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black45,
        backgroundColor: Colors.green,
        currentIndex: index,
        onTap: (value) => setState(() => index = value),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.abc),
              label: Strings.NAV_HOME
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.abc),
              label: Strings.NAV_MY_DEVICE
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.abc),
              label: Strings.NAV_SALE_MANAGE
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: Strings.NAV_SETTING,
          )
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return StatisticsPage();
      case 1:
        return DeviceListPage();
      case 2:
        return SaleProductListPage();
      case 3:
        return SettingsPage();
    }

    return Center(child: Text("There is no page builder for this index."),);
  }

}