class onBoardingEntity{
  final String title;
  final String description;
  final String image;


  onBoardingEntity({
   required this.title,
   required this.description,
    required this.image,
});

  static List <onBoardingEntity> onBoardingData=[
    onBoardingEntity(
        title: "When the picture\nis complete life takes hold",
        description: "Find your best match",
        image: "first.jpg"
    ),
    onBoardingEntity(
        title: "People meet naturally\n based on numerous attractions",
        description: "Choose your partner from interest",
        image: "second.jpg"
    ),
    onBoardingEntity(
        title: "    Welcome! \n Your journey starts now.",
        description: "Lets find your Perfect Match",
        image: "third.jpg"
    ),
  ];
}

