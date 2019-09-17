import 'package:flutter/material.dart';
import 'package:apptrips/Place/ui/widgets/card_image_list.dart';
import 'package:apptrips/widgets/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        GradientBack("Bienvenido"),
        CardImageList()
      ],
    );
  }

}