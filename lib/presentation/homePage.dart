import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'MenuList.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "MINTO",
          style: TextStyle(fontFamily: "poppins", fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Date:"),
              Text("Time:"),
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Text("People:"),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("05-8-2023"),
                    Icon(
                      Icons.calendar_month,
                      size: 15,
                    ),
                  ],
                ),
                height: 20,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: Colors.white,
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("09:30"),
                    Icon(
                      Icons.access_time_filled_outlined,
                      size: 15,
                    ),
                  ],
                ),
                height: 20,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: Colors.white,
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("2"),
                    Icon(
                      Icons.people,
                      size: 15,
                    ),
                  ],
                ),
                height: 20,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Center(
          child: Container(
            alignment: Alignment.center,
            height: 30,
            width: 150,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.red), color: Colors.red),
            child: Text(
              "Check Availability",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            "Available tables for 2 Persons on 05-08-2023 at 09:30.",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        Text("click on an available table to book it"),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            height: 400,
            width: 450,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      tableContainer(
                        tab_no: 1,
                      ),
                      tableContainer(
                        tab_no: 2,
                      ),
                      tableContainer(
                        tab_no: 3,
                      ),
                      tableContainer(
                        tab_no: 4,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      tableContainer(
                        tab_no: 5,
                      ),
                      tableContainer(
                        tab_no: 6,
                      ),
                      tableContainer(
                        tab_no: 7,
                      ),
                      tableContainer(
                        tab_no: 8,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      tableContainer(
                        tab_no: 9,
                      ),
                      tableContainer(
                        tab_no: 10,
                      ),
                      tableContainer(
                        tab_no: 11,
                      ),
                      tableContainer(
                        tab_no: 12,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        ElevatedButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> MenuItems()));
        }, child: Text("Book Table"))
      ]),
    );
  }
}

class tableContainer extends StatefulWidget {
  int tab_no;
  tableContainer({required this.tab_no});

  @override
  State<tableContainer> createState() => _tableContainerState();
}

class _tableContainerState extends State<tableContainer> {
  Color _containerColor = Colors.black12;
  Color _alternateColor = Colors.green; 

  void _changeColor() {
    setState(() {
      _containerColor = (_containerColor == Colors.black12)
          ? _alternateColor
          : Colors.black12;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(5),
          color: _containerColor,
        ),
        child: Text(widget.tab_no.toString()),
      ),
    );
  }
}