import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final name;
  final image;
  final desc;
  const ProductPage({ Key? key, this.name, this.image, this.desc }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.indigo[200],
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(CupertinoIcons.back, color: Colors.indigo[900],),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(48)),
                  color: Colors.indigo[200],
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset(image),
                  ),
                ),
              )
            ),

            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Expanded(
                      child: Text(name, style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold),textScaleFactor: 2.5,)
                    ),
                    Expanded(
                      child: Text(desc, style: TextStyle(color: Colors.indigo[900],),textScaleFactor: 1.5,)
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(14),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.indigo[900],
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                child: Center(child: Text("Buy",style: TextStyle(color: Colors.white),textScaleFactor: 1.7,)
                              ),
                              ),
                            )
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(14),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.indigo[900],
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                child: Center(
                                  child: Text("Add to cart",style: TextStyle(color: Colors.white),textScaleFactor: 1.7,)
                                ),
                              ),
                            )
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}