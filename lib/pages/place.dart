import 'package:aspen/pages/text.dart';
import 'package:flutter/material.dart';

class PlaceDisc extends StatelessWidget {
  const PlaceDisc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _picture(context),
                _nameAndReview(),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: _description(),
                ),
                _facilities()
              ],
            ),
          ),
        ),
        bottomNavigationBar: _bottomNav());
  }

  Padding _bottomNav() {
    return Padding(
        padding: const EdgeInsets.only(left: 20),
        child: SizedBox(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Price',
                    style:
                        TextStyle(fontWeight: FontWeight.w800, fontSize: 12),
                  ),
                  Text(
                    "\$199",
                    style: TextStyle(
                        color: Color(0xFF2DD7A4),
                        fontSize: 22,
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0XFF176FF2),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: const Padding(
                      padding: EdgeInsets.only(
                        top: 15.0,
                        bottom: 15,
                        right: 40,
                        left: 40,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Book Now',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                          Image(image: AssetImage('assets/Arrow - Right.png'))
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      );
  }

  Column _facilities() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Facilities',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25)),
        Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image(image: AssetImage('assets/facilities/heater.png')),
                  SizedBox(width: 15),
                  Image(image: AssetImage('assets/facilities/dinner.png')),
                  SizedBox(width: 15),
                  Image(image: AssetImage('assets/facilities/tub.png')),
                  SizedBox(width: 15),
                  Image(image: AssetImage('assets/facilities/pool.png')),
                  SizedBox(width: 15),
                ],
              )),
        )
      ],
    );
  }

  Row _nameAndReview() {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Coeudes Alpes',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(image: AssetImage('assets/star.png')),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '4.5 (355 Reviews)',
                  style: TextStyle(fontSize: 12),
                )
              ],
            )
          ],
        ),
        Spacer(),
        Text(
          'Show map',
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w900),
        )
      ],
    );
  }

  Stack _picture(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 40.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 400,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/places/Coeurdes Alpes.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 4),
              child: Stack(
                children: [
                  TextButton(
                    onPressed: () {Navigator.pop(context);},
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      width: 55,
                      height: 55,
                      child: const Image(
                          image: AssetImage('assets/arrow left.png')),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const Positioned(
            bottom: 0,
            right: 0,
            child: Image(image: AssetImage('assets/Heart big.png')))
      ],
    );
  }

  ExpandableText _description() {
    return ExpandableText(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pellentesque neque sed massa lobortis, at pretium massa lacinia. Ut consequat sapien leo, et efficitur lorem tempor ac. Phasellus maximus nunc non augue imperdiet aliquet. Suspendisse ut congue ligula. Proin felis mi, ultricies at aliquam at, vehicula eu metus. Pellentesque non fringilla turpis. Maecenas non iaculis ipsum. Aliquam erat volutpat. Nullam in dapibus quam. Cras eget feugiat velit. Curabitur commodo diam non magna imperdiet pretium. Mauris tellus augue, vehicula et ex sed, semper porta nulla.Sed dui ante, gravida vel  ');
  }
}
