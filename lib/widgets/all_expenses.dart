import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_project/widgets/all_expenses_header.dart';
import 'package:responsive_project/widgets/all_expenses_item_list_view.dart';
import 'custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItemsListView(),
        ],
      ),
    );
  }
}
