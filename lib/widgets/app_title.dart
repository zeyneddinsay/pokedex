import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/constants.dart';
import 'package:flutter_pokedex/constants/ui_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  _AppTitleState createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  String pokeballImageUrl = 'images/pokeball.png';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: UIHelper.getAppTitleWidgetHeight(),
      child: Stack(//align ve pozition ile ilgili yapı konumlandırılır
          children: [
        Padding(
          padding: UIHelper.getDefaultPadding(),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                Constants.title,
                style: Constants.getTitleTextStyle(),
              )),
        ), // sağ sol üst gibi konum için alignment -- sağdan 100 boşluk gibi için position
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            pokeballImageUrl,
            width: ScreenUtil().orientation == Orientation.portrait
                ? 0.2.sh
                : 0.2.sw,
            fit: BoxFit.fitWidth,
          ),
        )
      ]),
    );
  }
}