import 'package:flutter/material.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Container(
            decoration:const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/mountains.jpg'),
                  fit: BoxFit.cover
              ),
            ),
          ),Positioned(
            bottom: 50,
            right: MediaQuery.of(context).size.width * 0.3,

            child: Container(
              padding: EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: MediaQuery.of(context).size.height * 0.15),
              child: Column(

                children: [


                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text("Coded By",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.2
                            )
                        ),
                        SizedBox(width: 10.0),
                        Text('RIDVAN ÇINAR',
                            style: TextStyle(
                                color: Colors.deepOrangeAccent,
                                fontWeight: FontWeight.w500
                            )
                        ),
                      ]
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepOrange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            )
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, '/info');
                        },
                        child: const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: SizedBox(
                              child: Text("WELCOME ON BOARD!",
                                  style: TextStyle(
                                    color: Colors.black,
                                      fontSize: 20.0)
                              ),
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.15,
            right: MediaQuery.of(context).size.width * 0.45,
            child: Container(
              width: MediaQuery.of(context).size.width / 8,
              child: const FittedBox(
                  fit: BoxFit.contain,
                  child: Image(image: AssetImage('images/logo_flutter.png'),
                    width: 100,
                    height: 100,)
              ),
            ),
          ),
        ]
      ),
    );
  }
}