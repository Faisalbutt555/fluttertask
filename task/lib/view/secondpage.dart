import 'dart:math';

import 'package:flutter/material.dart';

class Secondpage extends StatefulWidget {
  @override
  _SecondpageState createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    List<int> data = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    double radius = 125.0;
    List<Widget> list() {
      final double firstItemAngle = pi;
      final double lastItemAngle = pi;
      final double angleDiff = (firstItemAngle + lastItemAngle) / 6;
      double currentAngle = firstItemAngle;
      Widget _radialListItem(double angle, int index) {
        final x = cos(angle) * radius;
        final y = sin(angle) * radius;

        return Center(
          child: Transform(
              transform: index == 1
                  ? Matrix4.translationValues(0.0, 0.0, 0.0)
                  : Matrix4.translationValues(x, y, 0.0),
              child: GestureDetector(
                onTap: () {
                  print(index.toString());
                },
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundColor: index == 1
                      ? Colors.blueAccent[900]
                      : index == 6
                          ? Colors.blueAccent[900]
                          : Colors.blueGrey.shade900,
                  // backgroundImage: AssetImage("images/img.png"),
                  child: Text(
                    'interest 1',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )),
        );
      }

      return data.map((int index) {
        currentAngle += angleDiff;
        return _radialListItem(currentAngle, index);
      }).toList();
    }

    final PageController controller = PageController(initialPage: 200);
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 250.0,
                child: Container(
                  color: Colors.transparent,
                  child: Stack(
                    children: [
                      PageView(
                        controller: controller,
                        children: [
                          new Image.asset('images/Img2.png'),
                          new Image.asset('images/Img2.png'),
                          new Image.asset('images/Img2.png'),
                          new Image.asset('images/Img2.png'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Person Name, Age',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Lorem Ipsum dolor sit amet consecteture adipiscing edit send do eiusmod tempor incididunt ut labore et',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Basic Info',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.blue[700],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Name',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Name',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Gender',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Gender',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Age',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Age',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Location',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Location',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.blue[700],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Looking For',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Women',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Relationship Status',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Single',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Kids',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'No',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Work Title',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Manager',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Education',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Graduate',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Hair Color',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Brown',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Height',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                '5 Ft',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Ethnicity',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Asian',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Religion',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Christian',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      '100 instagram Posts',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w700),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .5,
                      width: MediaQuery.of(context).size.width,
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 200,
                                  childAspectRatio: 3 / 2,
                                  crossAxisSpacing: 20,
                                  mainAxisSpacing: 20),
                          itemCount: 6,
                          itemBuilder: (BuildContext ctx, int index) {
                            return Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        index == 0
                                            ? 'images/g1.png'
                                            : index == 1
                                                ? 'images/g2.png'
                                                : index == 2
                                                    ? 'images/g3.png'
                                                    : index == 3
                                                        ? 'images/g4.png'
                                                        : index == 4
                                                            ? 'images/g5.png'
                                                            : 'images/g6.png',
                                      ),
                                      fit: BoxFit.cover),
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(15)),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Passions',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 120,
                    ),
                    new Stack(children: list()),
                    SizedBox(
                      height: 150,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 100, right: 100, top: 15, bottom: 15),
                          decoration: BoxDecoration(color: Colors.indigo[900]),
                          child: Text(
                            'REPORT',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 100, right: 100, top: 15, bottom: 15),
                          decoration:
                              BoxDecoration(color: Colors.lightBlue[900]),
                          child: Text(
                            'UNPAIR',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 100, right: 100, top: 15, bottom: 15),
                          decoration: BoxDecoration(color: Colors.grey),
                          child: Text(
                            'BLOCK',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
