import 'package:flutter/material.dart';
import '../utilities/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1 ,color: Color(0xfff1f1f1)),
              borderRadius: BorderRadius.circular(12)
          )
      ),
      child: Row(
        children: [
          Text('Monthly',
            style:AppStyles.styleMedium16(context) ,
          ),
          const SizedBox(width: 18,),
          Transform.rotate(
              angle:-1.57079633 /* - to rotate against Clockwise ,and angel
          take type of radience not degree and we want to rotate it by 90
           degree and this number equal it in rad*/
              ,child: const Icon(
            Icons.arrow_back_ios_new_outlined ,
            color:Color(0xff064061) ,
          )
          )
        ],
      ),
    );
  }
}
