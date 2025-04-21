class Item {
  String imgPath;
  String name;
  double price;
  String location;
  String description;
  bool isFavourite;
  

  Item(
      {required this.imgPath,
      required this.name,
      required this.location,
      required this.price,
       this.description="                       ............قاعة جديده وجميلة",
       this.isFavourite = false, 
       }
       );
}

final List<Item> items = [
    Item(
      name: "السلطان",
      imgPath: "assets/img/3.jpg",
      location: "الدائري مدخل فندق ماريوت اب",
      price: 450000),
      Item(
      name: "الملكية",
      imgPath: "assets/img/10.png",
      location: "خط الدائري خلف مستشفى البدر ",
      price: 250000),
  Item(
      name: "قصر غمدان",
      imgPath: "assets/img/1.jpg",
      location: "  السبل خلف مستشفى الحمد  ",
      price: 700000,
      description:"قاعة جديده وجميلة      "),
  Item(
      name: "ذوريدان",
      imgPath: "assets/img/8.png",
      location: "الصلبة جوار مركز السعر المناسب",
      price: 500000),

  Item(
      name: "جراند اب",
      imgPath: "assets/img/7.png",
      location: "       الدائري جوار سنتر مول",
      price: 300000),
  Item(
    name: "برلنت",
    imgPath: "assets/img/6.jpg",
    location: "مثلث المواصلات وادي الحج",
    price: 550000,
  ),

  Item(
      name: "اوركست",
      imgPath: "assets/img/9.png",
      location: "شارع المحافظة خلف دبي مول",
      price: 300000),
  Item(
      name: "الزين الكبرى",
      imgPath: "assets/img/6.jpg",
      location: "     خط الثلاثين  وادي اللحج",
      price: 700000),
  Item(
      name: "اشبيلية",
      imgPath: "assets/img/4.jpg",
      location: "الصلبة مقابل مدخل شارع بغداد",
      price: 300000),
  Item(
      name: "بغداد",
      imgPath: "assets/img/5.jpg",
      location: "              الظهره شارع بغداد",
      price: 250000),
];
