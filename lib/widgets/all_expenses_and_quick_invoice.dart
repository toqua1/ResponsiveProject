import 'package:flutter/material.dart';
import 'package:responsive_project/widgets/quick_invoice.dart';
import 'all_expenses.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice(),
      ],
    );
  }
}