import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_project/models/drawer_item_model.dart';
import 'package:responsive_project/models/user_info_model.dart';
import 'package:responsive_project/widgets/active_inactive_list_tile.dart';
import 'package:responsive_project/widgets/user_info_listTile.dart';
import 'drawer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width* 0.7,
      color: Colors.white,
      child:const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel:UserInfoModel(
                  title: 'Lekan Okeowo',
                  subtitle: 'demo@gmail.com',
                  image: 'assets_responsive/avatar_3.svg'
              ) ,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsListView(),
          // Expanded(
          //     child: SizedBox()
          // ),
          SliverFillRemaining(
            hasScrollBody: false,/*to make its body scroll with full
            customScrollView efficientlly*/
            child: Column(
              children: [
                Expanded(child:SizedBox(
                  height: 20,/*as minimum height*/
                ) ),
                InActiveDrawerItem(drawerItemModel:
                DrawerItemModel(title: 'Setting system', image: 'assets_responsive/settings.svg')
                ),
                InActiveDrawerItem(drawerItemModel:
                DrawerItemModel(title: 'Logout account', image: 'assets_responsive/logout.svg')
                ),
                SizedBox(height: 48,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
