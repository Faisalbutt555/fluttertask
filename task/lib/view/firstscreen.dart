import 'dart:math';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:page_transition/page_transition.dart';
import 'package:task/Services/service.dart';
import 'package:task/models/SelectCategorymdoel.dart';
import 'package:task/view/secondpage.dart';
import 'package:task/widgets/flashbar.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  // void initState() {
  //   super.initState();
  //   selectcategroymodel = fetchimages();
  // }

  // Future<Selectcategorymodel> fetchimages() async {
  //   print("api started");
  //   final response = await http.get(
  //     Uri.parse(
  //       ApiUrls.selectcategory + "/interests-1625554051716.jpeg",
  //     ),

  //     //   headers:  {
  //     //   HttpHeaders.authorizationHeader: '"Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxMGE4NDNjOTg3MGUyOTg3MDE2NDU0NCIsImlhdCI6MTYyODA3OTI0NCwiZXhwIjoxNjM1ODU1MjQ0fQ.6pJyXHGgFXfD9c-Fs7HeBaYOHNaMHmXvYdsEVnppJTo" ',
  //     // },
  //   );
  //   if (response.statusCode == 200) {
  //     List<dynamic>.from(
  //         data.map<dynamic>((dynamic item) => response.body.toString()));
  //   } else {
  //     throw Exception(
  //         showCustomFlushbar(context, 'Alert', 'Unexpected error occured!'));
  //   }
  // }

  Future<Selectcategorymodel> selectcategroymodel;
  List<int> data = [
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
  ];

  double radius = 125.0;

  List<Widget> list() {
    final double firstItemAngle = pi;
    final double lastItemAngle = pi;
    final double angleDiff = (firstItemAngle + lastItemAngle) / 6;
    double currentAngle = firstItemAngle;

    return data.map((int index) {
      currentAngle += angleDiff;
      return _radialListItem(
        currentAngle,
        index,
      );
    }).toList();
  }

  Widget _radialListItem(
    double angle,
    int index,
  ) {
    final x = cos(angle) * radius;
    final y = sin(angle) * radius;

    return Center(
      child: Transform(
          transform: index == 1
              ? Matrix4.translationValues(0.0, 0.0, 0.0)
              : Matrix4.translationValues(x, y, 0.0),
          child: InkWell(
            onTap: () {
              setState(() {});
              print(index.toString());
            },
            child: CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage(index == 0
                  ? 'images/g1.png'
                  : index == 1
                      ? 'images/g2.png'
                      : index == 2
                          ? 'images/g3.png'
                          : index == 3
                              ? 'images/g4.png'
                              : index == 4
                                  ? 'images/g4.png'
                                  : index == 5
                                      ? 'images/img.png'
                                      : 'images/g6.png'),
            ),
          )),
    );
  }

  int tap = 0;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        elevation: .5,
        leading: Icon(Icons.arrow_back),
        title: Center(
          child: Text(
            'PASSIONS',
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'What are you into?',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 07,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Pick at least 5',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 120,
            ),
            // Image.network(
            //   ApiUrls.selectcategory + "/interests-1625554051716.jpeg",
            // ),
            Stack(children: list()),

            // FutureBuilder<Selectcategorymodel>(
            //     future: livematch(),
            //     builder: (context, snapshot) {
            //       if (snapshot.hasData) {
            //         Selectcategorymodel data = snapshot.data;
            //         return Stack(
            //             children:
            //                 list(img: data.data.image, txt: data.data.name));
            //       } else if (snapshot.hasError) {
            //         return Center(
            //           child: Text(
            //             "${snapshot.error}",
            //             style: TextStyle(
            //                 color: Colors.black,
            //                 fontSize: 25,
            //                 fontWeight: FontWeight.bold),
            //           ),
            //         );
            //       }

            //       return Center(
            //           child: Center(
            //               child: Container(
            //                   height: 100,
            //                   width: 100,
            //                   decoration: BoxDecoration(
            //                     color: Colors.grey,
            //                   ),
            //                   child: Column(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     crossAxisAlignment: CrossAxisAlignment.center,
            //                     children: [
            //                       CircularProgressIndicator(
            //                         backgroundColor: Colors.white,
            //                       ),
            //                       SizedBox(
            //                         height: 9,
            //                       ),
            //                       Text(
            //                         'Loading.....',
            //                         style: TextStyle(
            //                             color: Colors.white,
            //                             fontSize: 13,
            //                             fontWeight: FontWeight.w300),
            //                       )
            //                     ],
            //                   ))));
            //     }),

            SizedBox(
              height: 140,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: LinearProgressIndicator(
                minHeight: 03,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      duration: Duration(seconds: 00001),
                      type: PageTransitionType.rightToLeft,
                      child: Secondpage()),
                );
              },
              child: Container(
                padding:
                    EdgeInsets.only(left: 60, right: 60, top: 15, bottom: 15),
                decoration: BoxDecoration(color: Color(0xff4B6FFF)),
                child: Text(
                  'CONTINUE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
              ),
            )
            // Container(
            //   height: MediaQuery.of(context).size.height * .4,
            //   width: MediaQuery.of(context).size.width,
            //   child: ListView.builder(
            //       shrinkWrap: true,
            //       scrollDirection: Axis.horizontal,
            //       itemCount: 13,
            //       physics: BouncingScrollPhysics(),
            //       itemBuilder: (BuildContext context, int index) => Padding(
            //             padding: const EdgeInsets.all(8.0),
            //             child: Container(
            //               padding: EdgeInsets.all(8),
            //               decoration: BoxDecoration(
            //                   image: DecorationImage(
            //                       image: AssetImage('images/img.png')),
            //                   shape: BoxShape.circle),
            //               child: Center(child: Text('data')),
            //             ),
            //           )),
            // ),
          ],
        ),
      ),
    );
  }
}
