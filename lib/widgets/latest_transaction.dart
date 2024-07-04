import 'package:flutter/material.dart';
import 'package:responsive_project/utilities/app_styles.dart';
import 'package:responsive_project/widgets/latest_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transaction' ,
        style: AppStyles.styleMedium16(context),
        ),
       const SizedBox(height: 16),
        const LatestTransactionListView(),
      ],
    );
  }
}
