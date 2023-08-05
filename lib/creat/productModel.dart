class ProModel {
  String? name;
  double? price;
  String? description;
  String?image;
  ProModel({ this.description,  this.name,  this.price, this.image});

  factory ProModel.fromJson(Map<String, dynamic> json) => ProModel(
    name: json["name"]as String,
    price: json["price"] as double,
    image: json["image"]as String,
    description: json["description"]as String,
  );


  Map <String, dynamic> toJson() =>
      {

        'name': name,
        'description': description,
        'price': price,
        'image':image

      };

}