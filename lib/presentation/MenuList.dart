import 'package:flutter/material.dart';
import 'package:table_booking/presentation/homePage.dart';

import '../widgets/menuGrid.dart';

class MenuItems extends StatefulWidget {
  const MenuItems({super.key});

  @override
  State<MenuItems> createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Select your Dishes",
          style: TextStyle(color: Colors.redAccent, fontSize: 30),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  Text(
                    "Vegetarian",
                    style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              child: ListView.builder(
                  itemCount: 20,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return MenuGrid();
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  Text(
                    "Non-Vegetarian",
                    style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              child: ListView.builder(
                  itemCount: 20,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return MenuGrid();
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  Text(
                    "Drinks",
                    style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold,
                      color: Colors.yellow,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              child: ListView.builder(
                  itemCount: 20,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return MenuGrid();
                  }),
            )
            ,Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  Text(
                    "Starters",
                    style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              child: ListView.builder(
                  itemCount: 20,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return MenuGrid();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
