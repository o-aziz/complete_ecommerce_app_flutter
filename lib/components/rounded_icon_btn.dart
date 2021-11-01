import 'package:flutter/material.dart';

import '../size_config.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key? key,
    required this.iconData,
    required this.pressed,
  }) : super(key: key);

  final IconData iconData;
  final GestureTapCallback pressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      child: ElevatedButton(
        child: Icon(
          iconData,
          color: Colors.black,
        ),
        style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.only(left: 0)),
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
        onPressed: pressed,
      ),
    );
  }
}
