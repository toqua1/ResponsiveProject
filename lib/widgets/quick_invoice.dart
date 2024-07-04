import 'package:flutter/material.dart';
import 'package:responsive_project/widgets/custom_background_container.dart';
import 'package:responsive_project/widgets/quick_invoice_form.dart';
import 'package:responsive_project/widgets/quick_invoice_header.dart';
import 'latest_transaction.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child:Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickInvoiceHeader(),
            LatestTransaction(),
            Divider(
              height: 48,/*24 padding above and bottom divider*/
              color: Color(0xfff1f1f1),
            ),
            QuickInvoiceForm(),
          ],
        )
    );
  }
}
