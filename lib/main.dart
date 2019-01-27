import 'package:flutter/material.dart';
import 'package:flutter_app/Mapping.dart';
import 'Authentication.dart';

void main()
{
    runApp(new Fz_ally());
}

class Fz_ally extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
      return new MaterialApp
        (
            title: "Fz_ally",

            theme: new ThemeData
              (
                  primarySwatch: Colors.cyan,

              ),

            home: MappingPage(auth: Auth(),),

        );
  }

}
