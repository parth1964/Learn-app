class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String imageurl;
  final String color;

  Item({this.id, this.name, this.desc, this.price, this.imageurl, this.color});
}

final products = [
  Item(
      id: "First",
      name: "Iphone 12 pro",
      desc: "Apple Iphone 12 Generation",
      color: "#33505a",
      price: 999,
      imageurl:
          "https://www.apple.com/newsroom/images/product/iphone/standard/Apple_announce-iphone12pro_10132020_big.jpg.large.jpg"),
];
