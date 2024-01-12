class FoodItem{

  final String name;
  final String price;
  final String city;
  final int deliveryPrice;
  final imageUrl ;
  final double rating;

  FoodItem({ required this.imageUrl, required this.name, required this.price, required this.city, required this.deliveryPrice, required this.rating});

  Map<String,dynamic> toJson(){
    return {
      'name': name,
      'price': price,
      'city': city,
      'imageUrl': imageUrl,
      'rating': rating,
      'deliveryPrice': deliveryPrice,
    };

  }
  factory FoodItem.fromJson(Map<String, dynamic> json){
    return FoodItem(
        imageUrl: json['imageUrl'],
        name: json['name'],
        price: json['price'],
        city: json['city'],
        deliveryPrice: json['deliveryPrice'],
        rating: json['rating']);

  }

}