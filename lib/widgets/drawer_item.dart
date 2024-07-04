import 'package:responsive_project/models/drawer_item_model.dart';
import 'package:flutter/material.dart';
import 'active_inactive_list_tile.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(this.drawerItemModel, {super.key, required this.isActive});
final DrawerItemModel drawerItemModel;
final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive?
    ActiveDrawerItem(drawerItemModel: drawerItemModel)
        :InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}


