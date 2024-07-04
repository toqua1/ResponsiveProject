import 'package:flutter/material.dart';

import '../models/drawer_item_model.dart';
import 'drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });
  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
int activeIndex =0;

final List<DrawerItemModel>items = [
  const DrawerItemModel(
      title: 'Dashboard', image: 'assets_responsive/dashboard.svg'),
  const DrawerItemModel(
      title: 'My Transaction', image: 'assets_responsive/my_transctions.svg'),
  const DrawerItemModel(
      title: 'Statistics', image: 'assets_responsive/statistics.svg'),
  const DrawerItemModel(
      title: 'Wallet Account', image: 'assets_responsive/wallet_account.svg'),
  const DrawerItemModel(
      title: 'My Investments', image: 'assets_responsive/my_investments.svg'),
];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              if(activeIndex != index){
                setState(() {
                  activeIndex = index;
                });
              }
            },
            child: DrawerItem(
              items[index],
              isActive:activeIndex == index,
            ),
          );
        });
  }
}
