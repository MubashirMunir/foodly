class onboardmodule {
  String image;
  String text;
  String desc;
  onboardmodule({required this.image, required this.desc, required this.text});
}
List<onboardmodule> screens = <onboardmodule>[
  onboardmodule( text: "All your favourite is Here",
      image:"https://img.freepik.com/premium-vector/vector-illustration-business-employer-doing-presentation-flat-design-style_90661-1113.jpg?w=900",
      desc: "Order from the best local restaurants with easy on demand deliveries",
     ),
  onboardmodule(image: "https://img.freepik.com/premium-vector/vector-illustration-business-employer-doing-presentation-flat-design-style_90661-1113.jpg?w=900",
      desc: "free delivery for new customers via Apple pay and other payment methods ", text: "Free Delivery Offers"),
  onboardmodule(image: "https://img.freepik.com/premium-vector/vector-illustration-business-employer-doing-presentation-flat-design-style_90661-1113.jpg?w=900",
      desc: "Easily find your type of food craving and you will get delivery in wide range", text: "Choose Your Food"),
];
