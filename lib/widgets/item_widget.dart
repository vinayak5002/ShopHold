import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/model.dart';
import 'package:flutter_application_1/pages/productPage.dart';


class ItemWidget extends StatelessWidget {

  final Item item;

  // ignore: unnecessary_null_comparison
  const ItemWidget({ Key? key, required this.item }) : assert(item!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProductPage(name: item.name, image: item.imageurl, desc: item.desc,),)
          );
        },
        child: Padding(
        padding: const EdgeInsets.fromLTRB(6,3,6,3),
        child: Card(
          color: Colors.indigo[200],
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: ListTile(
              leading: Image.asset(item.imageurl, width: 80,),
              title: Text(item.name, textScaleFactor: 1.3,style: TextStyle(color:Colors.indigo[900], fontWeight: FontWeight.w500),),
              
              subtitle: Text(item.desc,style: TextStyle(color: Colors.indigo[900],),),
              
              trailing: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(4),
                child: Expanded(
                    child: Text(
                    "\$ ${item.price}", textScaleFactor: 1.3,style:TextStyle(fontWeight: FontWeight.bold,color:Colors.indigo[900])
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}