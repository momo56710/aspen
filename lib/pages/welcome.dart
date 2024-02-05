import 'package:aspen/pages/home.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/Rectangle 988.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: FractionallySizedBox(
            heightFactor: 1,
            widthFactor: 1,
            child: Stack(
              children: [
                const Align(
                  alignment: FractionalOffset.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: Image(image: AssetImage("assets/Aspen.png")),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        bottom: 8.0,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left : 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('plan Your' , style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w400),),
                            Text('Luxurios' , style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w500,letterSpacing: 1),),
                            Text('Vacation' , style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w500),)
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, bottom: 40),
                      child: FractionallySizedBox(
                        widthFactor: 1,
                        child: Expanded(
                            child: TextButton(
                          onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.white,
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(0xFF176FF2))),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Text('Explore'),
                          ),
                        )),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
