import 'package:aspen/pages/models/popular_places_model.dart';
import 'package:aspen/pages/models/menu_model.dart';
import 'package:aspen/pages/models/recommended_places_model.dart';
import 'package:aspen/pages/place.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<MenuModal> menu = [];
  List<PopularPlacesModel> popularPlaces = [];
  List<RecommendedPlacesModel> recommendedPlaces = [];

  void _getInitialInfo() {
    menu = MenuModal.getMenu();
    popularPlaces = PopularPlacesModel.getPlaces();
    recommendedPlaces = RecommendedPlacesModel.getPlaces();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15),
          child: _location(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Column(
            children: [
              _searchBar(),
              _menu(),
              _popularPlaces(),
              _recommendedPlaces(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset('assets/bottomNav/Home.png'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/bottomNav/Ticket.png'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/bottomNav/Heart.png'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/bottomNav/Profile.png'),
            label: '',
          ),
        ],
      ),
    );
  }

  Column _popularPlaces() {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              'Popular',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            const Spacer(),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'See all',
                  style: TextStyle(color: Color(0xFF176FF2)),
                ))
          ],
        ),
        SizedBox(
          height: 240,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: popularPlaces.length,
            scrollDirection: Axis.horizontal,
            separatorBuilder: ((context, index) => const SizedBox(
                  width: 15,
                )),
            itemBuilder: ((context, index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PlaceDisc()));
                  },
                  child: Container(
                      width: 188,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                          image: AssetImage(popularPlaces[index].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: Color(0xFF4D5652),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(popularPlaces[index].name,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                      color: Color(0xFF4D5652),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      width: 40,
                                      child: Row(
                                        children: [
                                          const Image(
                                              image: AssetImage(
                                                  'assets/star.png')),
                                          Text(popularPlaces[index].rating,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image(
                                    image: popularPlaces[index].liked
                                        ? const AssetImage('assets/Heart.png')
                                        : const AssetImage(
                                                'assets/Rectangle 996.png')
                                            as ImageProvider)
                              ],
                            )
                          ],
                        ),
                      )));
            }),
          ),
        ),
      ],
    );
  }

  Padding _recommendedPlaces() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 15),
            child: Row(
              children: [
                Text(
                  'Rocommended',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 175,
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: recommendedPlaces.length,
              scrollDirection: Axis.horizontal,
              separatorBuilder: ((context, index) => const SizedBox(
                    width: 15,
                  )),
              itemBuilder: ((context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        height: 180,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 110,
                              width: 170,
                              child: Stack(children: [
                                Image(
                                  image: AssetImage(
                                      recommendedPlaces[index].image),
                                ),
                                Positioned(
                                    bottom: 0,
                                    right: 15,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            right: 5.0,
                                            left: 5.0,
                                            top: 4.0,
                                            bottom: 4.0),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            color: Color(0xFF3A544F),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 5.0,
                                                left: 5.0,
                                                top: 2.0,
                                                bottom: 2.0),
                                            child: Text(
                                              recommendedPlaces[index]
                                                  .randomNum,
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ))
                              ]),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              recommendedPlaces[index].name,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w700),
                            ),
                            const Row(
                              children: [
                                Image(
                                    image:
                                        AssetImage('assets/trending-up.png')),
                                SizedBox(
                                  width: 10,
                                  height: 0,
                                ),
                                Text(
                                  'Hot Deal',
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  Padding _menu() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        height: 30,
        child: ListView.separated(
          itemCount: menu.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: ((context, index) => const SizedBox(
                width: 0,
              )),
          itemBuilder: ((context, index) {
            return Container(
              width: 100,
              decoration: BoxDecoration(
                  color: menu[index].selected ? const Color(0x05176FF2) : null,
                  borderRadius: BorderRadius.circular(16)),
              child: Center(
                child: Text(
                  menu[index].title,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: menu[index].selected
                          ? const Color(0xFF176FF2)
                          : const Color(0xFFB8B8B8)),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  SizedBox _searchBar() {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: TextField(
          decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xFFF3F8FE),
              contentPadding: const EdgeInsets.all(15),
              hintText: 'Find things to do',
              prefixIcon: const Padding(
                padding: EdgeInsets.all(12),
                child: Image(image: AssetImage('assets/Search.png')),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none)),
        ),
      ),
    );
  }

  Row _location() {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            Text('Aspen',
                style: TextStyle(
                  fontSize: 32,
                ))
          ],
        ),
        Spacer(),
        Row(
          children: [
            Image(image: AssetImage('assets/location.png')),
            SizedBox(
              width: 10,
            ),
            Text(
              'Aspen,USA',
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(
              width: 10,
            ),
            Image(
              image: AssetImage('assets/ArrowDown.png'),
            )
          ],
        )
      ],
    );
  }
}
