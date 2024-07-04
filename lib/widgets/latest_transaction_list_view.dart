import 'package:flutter/material.dart';
import 'package:responsive_project/models/user_info_model.dart';
import 'package:responsive_project/widgets/user_info_listTile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const items =[
    UserInfoModel(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
        image: 'assets_responsive/avatar_1.svg'),
    UserInfoModel(
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com',
        image: 'assets_responsive/avatar_2.svg'),
    UserInfoModel(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
        image: 'assets_responsive/avatar_3.svg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( /*make scroll by shift and mouse cycle*/
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e)=>
        IntrinsicWidth(child: UserInfoListTile(userInfoModel: e,))
        ).toList(),
      ),
    );
  }
}
