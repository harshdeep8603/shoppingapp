class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "iphone 15 Pro",
      desc: "Apple iphone 15th generation",
      price: 999,
      color: "#33505a",
      image: "https://www.apple.com/newsroom/images/2023/09/apple-unveils-iphone-15-pro-and-iphone-15-pro-max/article/Apple-iPhone-15-Pro-lineup-color-lineup-230912_big.jpg.large.jpg",
    ),

    Item(
        id: 2,
        name: "iphone 14 Pro Max",
        desc: "Apple iphone 14th generation",
        price: 888,
        color: "#33505a",
        image: "https://idestiny.in/wp-content/uploads/2022/09/iPhone_14_Pro_Deep_Purple_PDP_Image_Position-1a_Avail__en-IN.jpg"
    ),

    Item(
        id: 3,
        name: "iphone 13 Pro Max",
        desc: "Apple iphone 13th generation",
        price: 777,
        color: "#33505a",
        image: "https://idestiny.in/wp-content/uploads/2022/09/iPhone_14_Pro_Deep_Purple_PDP_Image_Position-1a_Avail__en-IN.jpg"
    ),

    Item(
        id: 4,
        name: "iphone 12 Pro ",
        desc: "Apple iphone 12th generation",
        price: 666,
        color: "#33505a",
        image: "https://cdn.dxomark.com/wp-content/uploads/medias/post-61183/iphone-12-pro-blue-hero.jpg"
    ),

    Item(
        id: 5,
        name: "iphone 11 Pro Max  ",
        desc: "Apple iphone 11th generation",
        price: 555,
        color: "#33505a",
        image: "https://st.akakce.com/_static/510432237/iPhone-11-pro-max-genel-gorunum.png"
    ),
    Item(
        id: 6,
        name: "iphone 10   ",
        desc: "Apple iphone 10th generation",
        price: 444,
        color: "#33505a",
        image: "https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-x.jpg"
    ),
    Item(
        id: 7,
        name: "Samsung Galaxy M30   ",
        desc: "Samsung M series",
        price: 222,
        color: "#33505a",
        image: "https://specs-arena.com/wp-content/uploads/2019/01/Samsung-Galaxy-M30.jpeg"
    ),
    Item(
        id: 8,
        name: "Samsung Galaxy A50   ",
        desc: "Samsung A series",
        price: 333,
        color: "#33505a",
        image: "https://static.toiimg.com/thumb/msid-68200111,width-1070,height-580,imgsize-118670,resizemode-75,overlay-toi_sw,pt-32,y_pad-40/photo.jpg"
    ),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}