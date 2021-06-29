class CatalogModel{
  static List<Item> items = [];
}


class Item {
  final String name;
  final num id;
  final String desc;
  final num price;
  final String imageurl;
  final String color;

  Item({required this.name, required this.id, required this.desc, required this.price, required this.imageurl, required this.color});

  factory Item.fromJSON(Map<String,dynamic> map){
    return Item(
      id: map["id"],
      name: map["name"],
      price: map["price"],
      desc: map["desc"],
      imageurl: map["imageurl"],
      color: map["color"],
    );
  }
   
}