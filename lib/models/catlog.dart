class CatlogModel {
  static List<Item> items = [
    Item(
        id: "First",
        name: "Iphone 12 pro",
        desc: "Apple Iphone 12 Generation",
        color: "#33505a",
        price: 999,
        imageurl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc"),
  ];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String imageurl;
  final String color;

  Item({this.id, this.name, this.desc, this.price, this.imageurl, this.color});

  factory Item.fromMap(Map<dynamic, dynamic> map) {
    return Item(
      id: map["id"],
      name: map['name'],
      desc: map['desc'], //Map to String
      price: map['price'],
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
