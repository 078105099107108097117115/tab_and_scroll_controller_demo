import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  ScrollController _pageOneScrollController;


  @override
  void initState(){
    super.initState();
    _pageOneScrollController=ScrollController();
  }

  @override
  void dispose(){
    _pageOneScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            IconButton(icon: Icon(Icons.search),),
            TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'food and wine',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
          ],
        ),
        title: Text('Home Page'),
        actions: <Widget>[
          Icon(Icons.account_circle),
        ],
      ),
      body: ListView.builder(
        controller: _pageOneScrollController,
        itemBuilder: (context,index)=> ListView(
          children: <Widget>[
          buildImageAssetContainer('images/Dress_Photo1.jpg'),
          SizedBox(height: 10.0,),
          Divider(),
          buildImageAssetContainer('images/Dress_Photo2.jpg'),
          SizedBox(height: 10.0,),
          Divider(),
          buildImageAssetContainer('images/fitting_clothes.jpg'),
          SizedBox(height: 10.0,),
          Divider(),
          buildImageAssetContainer('images/noice_shoes.jpg'),
          SizedBox(height: 10.0,),
          Divider(),
          buildImageAssetContainer('images/Dress_Photo2.jpg'),
          SizedBox(height: 10.0,),
          Divider(),
          buildImageAssetContainer('images/Photo_number_1.jpg'),
          SizedBox(height: 10.0,),
          Divider(),
          buildImageAssetContainer('images/pics1.jpg'),
          SizedBox(height: 10.0,),
          Divider(),
          buildImageAssetContainer('images/pics2.jpg'),
          SizedBox(height: 10.0,),
          Divider(),
          buildImageAssetContainer('images/pics3.jpg'),
          SizedBox(height: 10.0,),
          Divider(),
          buildImageAssetContainer('images/pics4.jpg'),
          SizedBox(height: 10.0,),
          Divider(),
          buildImageAssetContainer('images/pics5.jpg'),
          SizedBox(height: 10.0,),
          Divider(),
          buildImageAssetContainer('images/pics6.jpg'),
          SizedBox(height: 10.0,),
          Divider(),
          buildImageAssetContainer('images/shoes.jpg'),
          SizedBox(height: 10.0,),
          Divider(),
          buildImageAssetContainer('images/shoes_and_dresses_pic.jpg'),
          SizedBox(height: 10.0,),
          Divider(),
          buildImageAssetContainer('images/shoes_pic_2.jpg'),
          SizedBox(height: 10.0,),
          Divider(),
          buildImageAssetContainer('images/suits.jpg'),
          SizedBox(height: 10.0,),
          Divider(),
      ]),
      ),
    persistentFooterButtons: <Widget>[
      ButtonBar(
        mainAxisSize: MainAxisSize.min,
        alignment: MainAxisAlignment.start,
        children: <Widget>[
          buildPersistentFlatButton(Icons.add_a_photo,'Add a Photo'),
          buildPersistentFlatButton(Icons.add_call, 'Call'),
          buildPersistentFlatButton(Icons.add_comment, 'Comment'),
          buildPersistentFlatButton(Icons.add_location, 'Add Location'),
        ],
      ),

    ],
    );
  Container imageDivider(){
    return Container(
      height: 2.0,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey,
      margin: EdgeInsets.all(8.0),
    );
  }

  FlatButton buildPersistentFlatButton(var icon,String text) {
    return FlatButton(
      child: Column(
        children: <Widget>[
          Icon(icon),
          Text(text),
        ],
      ),
    );
  }

  Container buildImageAssetContainer(String image) {
    return Container(
          height: 100.0,
          width: 100.0,
          child: Image.asset(image,width: 80.0,height: 80.0,fit: BoxFit.contain,),
        );
  }
}
