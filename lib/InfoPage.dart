import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('About Me',
              style: TextStyle(color: Colors. white)),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,

      ),

    body:
    Row(
      children: [
        Expanded(
          flex: 1,
          child: Drawer(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    child: AspectRatio(aspectRatio: 1,
                    child: Container(
                      color: Colors.black26,
                      child: Column(
                        children: [
                          Spacer(flex: 2),
                          CircleAvatar(
                            radius: 80,
                            backgroundImage:
                            AssetImage('images/profil_eskisehir.jpg'),
                          ),
                          Spacer(),
                          Text(
                            "RIDVAN ÇINAR",
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          Text(
                            "BEGINNER FLUTTER DEVELOPER",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              height: 1.5,
                            ),
                          ),
                          Spacer(flex: 2),
                        ],
                      ),
                    ),
                    ),
                  )
                ],
              ),
            ),
          )
        ),

        Expanded(
          flex: 5,
            child:
                Column(
                  children: [
                    Flexible(
                        child: Container(
                        decoration:const BoxDecoration(
                        image: DecorationImage(
                        image: AssetImage("images/roughhorn.jpg"),
                        fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),)),
                        child: Stack(
                        children: [
                        SafeArea(
                        bottom: false,
                        right: false,
                        left: false,
                        child: Padding(
                        padding: const EdgeInsets.only(left: 0, right: 0),
                        child: SingleChildScrollView(
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                          const CircleAvatar(
                          backgroundImage: AssetImage("images/ataturk_pp.jpg"),
                          radius: 65.0),
                          const Padding(
                          padding: const EdgeInsets.only(top: 24.0),
                          child: Text("RIDVAN ÇINAR",
                          style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 22)),
                          ),
                          Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          const Icon(FontAwesomeIcons.heart,color: Colors.blue,),
                          Text("Discover Me",
                          style: TextStyle(
                          color: Colors.white.withOpacity(0.85),
                          fontSize: 15,
                          fontWeight: FontWeight.w600)),
                          const Icon(FontAwesomeIcons.heart,color: Colors.blue,)

                          ],
                          ),
                          ),
                          Align(
                          alignment: Alignment.center,
                          child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: SingleChildScrollView(
                            child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                            Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                            primary: Colors.greenAccent,
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                            ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/videos');
                              },
                            child:const Padding(
                            padding: EdgeInsets.only(
                            left: 12.0, right: 12.0, top: 10, bottom: 10),
                            child: Text("See More About Me",
                            style: TextStyle(fontSize: 13.0))),
                            ),
                            ),
                            Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: RawMaterialButton(
                            constraints: BoxConstraints.tight(Size(38, 38)),
                            onPressed: () => launch(
                                        'https://www.instagram.com/ridvncnr/'),
                            elevation: 5.0,
                            fillColor: Colors.blue,
                            child: const Icon(FontAwesomeIcons.instagram,
                            size: 16.0, color: Colors.red),
                            padding:const EdgeInsets.all(0.0),
                            shape:const CircleBorder(),
                            ),
                            ),
                            RawMaterialButton(
                            constraints: BoxConstraints.tight(Size(38, 38)),
                            onPressed: () => launch(
                              'https://twitter.com/ridvncnr'),
                            elevation: 5.0,
                            fillColor: Colors.blue,
                            child:const Icon(FontAwesomeIcons.twitter,
                            size: 16.0, color: Colors.white),
                            padding:const EdgeInsets.all(0.0),
                            shape:const CircleBorder(),
                            ),
                            RawMaterialButton(
                            constraints: BoxConstraints.tight(Size(38, 38)),
                            onPressed: () => launch(
                              'https://github.com/ridvncnr'),
                            elevation: 5.0,
                            fillColor: Colors.blue,
                            child:const Icon(FontAwesomeIcons.github,
                            size: 25, color: Colors.red),
                            padding:const EdgeInsets.all(4.0),
                            shape:const CircleBorder(),
                            ),
                            ],
                            ),
                          ),
                          ),
                          )
                          ],
                          ),
                        ),
                        ),
                        ),

                        ],
                        )),
                        ),

                        Flexible(
                        flex: 1,
                        child: Container(
                        child: SingleChildScrollView(
                        child: Padding(
                        padding: const EdgeInsets.only(
                        left: 32.0, right: 32.0, top: 42.0),
                        child: Column(children: const [
                        Text("About Me",
                        style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 17.0)),
                        Padding(
                        padding:  EdgeInsets.only(
                        left: 24.0, right: 24, top: 30, bottom: 24),
                        child: Text(
                        "Beginner Flutter Developer. "
                        "Successful in human relationships, open to "
                        "innovation, multi-dimensional and analytical thinking. "
                        "Team-player, high ability of planning, management and organization."
                        " Solution-driven person. "
                        "Internally motivated to learn new technologies and trends.",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue)),
                        ),
                        ]
                        ),
                        ),
                        ),
                        ),
                        ),

    ],
          )
        )
      ],
    ),
    );
  }
}
