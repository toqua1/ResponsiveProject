import 'package:flutter/material.dart';
import 'package:responsive_project/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_project/widgets/custom_drawer.dart';
import 'package:responsive_project/widgets/my_cards_and_transction_history.dart';
import 'income_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(/*we make it here for all children of this
//         parent to be also expanded and without repeating it , it consists
//         also children in custom drawer and userListTile and all*/
            child: CustomDrawer()
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: AllExpensessAndQuickInvoiceSection(),
                        )),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            MyCardsAndTransctionHistorySection(),
                            SizedBox(
                              height: 24,
                            ),
                            Expanded(child: IncomeSection()),
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}