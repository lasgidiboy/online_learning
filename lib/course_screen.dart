// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_learning/custom_nav_bar.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    final txtStyle = TextStyle(color: Colors.black54, fontSize: 14);
    List<String> CourseSubTitle = [
      "3 Golas Today",
      "Three bu=y Four",
      "2019-10-3"
    ];
    List<String> CourseTile = [
      "Positive Rotation",
      "Fun Practice",
      "Wrong title set"
    ];
    List<Icon> CourseIconData = [
      Icon(
        CupertinoIcons.add,
        color: Colors.white,
      ),
      Icon(
        Icons.widgets,
        color: Colors.white,
      ),
      Icon(
        Icons.book,
        color: Colors.white,
      ),
    ];
    List<Color> BGColors = [
      Color(0xfffdd133),
      Color(0xff64da91),
      Color(0xff60c0fc)
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomNavBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 50, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Course Page",
                    style: txtTheme.titleLarge,
                  ),
                  Icon(
                    Icons.post_add,
                    color: Color(0xff3cb792),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    "Today's math progress\t",
                    style: TextStyle(color: Colors.black45),
                  ),
                  Text(
                    "0 min",
                    style: TextStyle(color: Color(0xff3cb792)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Mathematics",
                    style: txtTheme.titleLarge,
                  ),
                  Text(
                    "English",
                    style: txtStyle,
                  ),
                  Text(
                    "Physics",
                    style: txtStyle,
                  ),
                  Text(
                    "Chemistry",
                    style: txtStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 160,
                    height: 180,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Color(0xff5ad995),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Icon(
                              Icons.bookmark,
                              color: Color(0xff5ad995),
                            ),
                          ),
                        ),
                        Text(
                          "Test",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          "Chapter Knowledge",
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 160,
                    height: 180,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Color(0xff5ebbfd),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Icon(
                              Icons.font_download_outlined,
                              color: Color(0xff5ad995),
                            ),
                          ),
                        ),
                        Text(
                          "Summarize",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          "Study notes",
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Recommended Course",
                style: txtTheme.titleLarge,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "I learned Chapter 6 last time",
                style: txtStyle,
              ),
              SizedBox(
                height: 20,
              ),
              for (var i = 0; i < 3; i++)
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.only(left: 10, right: 10),
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 5)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: BGColors[i],
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: CourseIconData[i],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            CourseTile[i],
                            style: txtTheme.titleLarge,
                          ),
                          Text(CourseSubTitle[i])
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color(0xff178366),
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                            child: Text(
                          "Start",
                          style: TextStyle(color: Colors.white),
                        )),
                      )
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
