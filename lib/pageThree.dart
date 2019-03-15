import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemExtent: 250.0,
        itemBuilder: (context,index)=>Container(
          padding: EdgeInsets.all(10.0),
          child: Material(
            elevation: 4.0,
            borderRadius: BorderRadius.circular(12.0),
            color: index % 2==0 ? Colors.black : Colors.white,
            child: Center(
              child: Text(index.toString(),style: TextStyle(color: index % 2==0 ? Colors.white : Colors.black,fontSize: 23.0,
              ),),
            ),
          ),
        ),
    );
  }
}
