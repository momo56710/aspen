class PopularPlacesModel {
  String image;
  String name;
  String rating;
  bool liked;
  PopularPlacesModel(
      {required this.image,
      required this.name,
      required this.rating,
      required this.liked});

  static List<PopularPlacesModel> getPlaces() {
    List<PopularPlacesModel> places = [];
    places.add(
      PopularPlacesModel(
          image: 'assets/places/Alley Palace.png',
          name: 'Alley Palace',
          rating: '4.1',
          liked: true),
    );
    places.add(
      PopularPlacesModel(
          image: 'assets/places/Coeurdes Alpes.png',
          name: 'Coeurdes Alpe',
          rating: '4.5',
          liked: false),
    );
    places.add(
      PopularPlacesModel(
          image: 'assets/places/Alley Palace.png',
          name: 'Alley Palace',
          rating: '4.1',
          liked: true),
    );
    places.add(
      PopularPlacesModel(
          image: 'assets/places/Coeurdes Alpes.png',
          name: 'Coeurdes Alpe',
          rating: '4.5',
          liked: false),
    );
    places.add(
      PopularPlacesModel(
          image: 'assets/places/Alley Palace.png',
          name: 'Alley Palace',
          rating: '4.1',
          liked: true),
    );
    places.add(
      PopularPlacesModel(
          image: 'assets/places/Coeurdes Alpes.png',
          name: 'Coeurdes Alpe',
          rating: '4.5',
          liked: false),
    );
    places.add(
      PopularPlacesModel(
          image: 'assets/places/Alley Palace.png',
          name: 'Alley Palace',
          rating: '4.1',
          liked: true),
    );
    places.add(
      PopularPlacesModel(
          image: 'assets/places/Coeurdes Alpes.png',
          name: 'Coeurdes Alpe',
          rating: '4.5',
          liked: false),
    );
    places.add(
      PopularPlacesModel(
          image: 'assets/places/Alley Palace.png',
          name: 'Alley Palace',
          rating: '4.1',
          liked: true),
    );
    places.add(
      PopularPlacesModel(
          image: 'assets/places/Coeurdes Alpes.png',
          name: 'Coeurdes Alpe',
          rating: '4.5',
          liked: false),
    );

    return places;
  }
}
