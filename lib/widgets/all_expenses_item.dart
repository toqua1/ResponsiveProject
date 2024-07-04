import 'package:flutter/material.dart';
import 'package:responsive_project/models/all_expenses_item_model.dart';
import 'package:responsive_project/widgets/active_and_inactive_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.itemModel, required this.isSelected});
final AllExpensesItemModel itemModel;
final bool isSelected ;
  @override
  Widget build(BuildContext context) {
    return isSelected ? 
    ActiveAllExpensessItem(itemModel: itemModel)
    :InActiveAllExpensessItem(itemModel: itemModel);
  }
}
