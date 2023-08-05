import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_booking/presentation/introPage.dart';

void main ()=> runApp(TableBooking());
class TableBooking extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }

}