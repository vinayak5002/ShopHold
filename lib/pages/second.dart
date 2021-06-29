import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/model.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';


class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  @override
  @override
  void initState(){
    super.initState();
    loadData();
  }

  loadData() async {
    var catJson = await rootBundle.loadString("assets/files/cat.json");
    var decodedData = jsonDecode(catJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData).map<Item>((item) => Item.fromJSON(item)).toList();
    setState(() {}); 
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/cart.png",width: 60,),
                          SizedBox(width:10),
                          Text(
                            "ShopHold",
                            style: TextStyle(
                              color: Colors.indigo[800],
                            ),
                            textScaleFactor: 3,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Trending Items",
                        style: TextStyle(
                          color: Colors.indigo[900],
                        ),
                        textScaleFactor: 2,
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: CatalogModel.items.length,
                    itemBuilder: (context, index) {
                      return ItemWidget(
                        item: CatalogModel.items[index],
                      );
                    }
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}