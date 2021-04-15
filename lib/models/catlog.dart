class CatlogModel {
  static List<Item> items;
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String imageurl;
  final String color;

  Item({this.id, this.name, this.desc, this.price, this.imageurl, this.color});

  factory Item.fromJson(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map['name'],
      desc: map['desc'], //Map to String
      price: map['price'], //Map mathi class mate data lidha
      color: map['color'],
      imageurl: map['imageurl'],
    );
  }
  toMap() => {
        'id': id,
        'name': name,
        'desc': desc, //String to Map
        'price': price,
        'color': color,
        'imageurl': imageurl,
      };
}
