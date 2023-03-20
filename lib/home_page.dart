// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unused_local_variable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:online_learning/course_screen.dart';
import 'package:online_learning/custom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    List<Color> BgColors = [
      Color(0xfffdd133),
      Color(0xff64da91),
      Color(0xff60c0fc),
      Color(0xfffb7f7f),
      Color(0xffca84f9),
      Color(0xff7ae667),
    ];
    List<String> ContainerList = [
      "Category",
      "Boutique Class",
      "Free Course",
      "Bookstore",
      "Live Course",
      "Leaderboard"
    ];

    List<Icon> IconsList = [
      Icon(
        Icons.file_copy,
        color: Colors.white,
        size: 35,
      ),
      Icon(
        Icons.video_call_rounded,
        color: Colors.white,
        size: 35,
      ),
      Icon(
        Icons.padding_sharp,
        color: Colors.white,
        size: 35,
      ),
      Icon(
        Icons.store,
        color: Colors.white,
        size: 35,
      ),
      Icon(
        Icons.video_camera_back_rounded,
        color: Colors.white,
        size: 35,
      ),
      Icon(
        Icons.leaderboard,
        color: Colors.white,
        size: 35,
      ),
    ];
    List<String> CourseImages = [
      "assets/image1.png",
      "assets/image2.png",
      "assets/image3.png",
    ];
    List<String> CourseTitle = [
      "Morning TextBook",
      "English Reading",
      "Illustration"
    ];
    List<String> CourseRating = ["8.5", "5.5", "6.3"];
    List<Color> CourseColor = [
      Color(0xff64da91),
      Color(0xff60c0fc),
      Color(0xfffb7f7f)
    ];

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 30, left: 17, right: 17),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Home Page",
                    style: txtTheme.titleLarge,
                  ),
                  Icon(
                    Icons.notifications_rounded,
                    color: Color(0xff3cb792),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Choose your Course\t",
                    style: TextStyle(color: Colors.black45),
                  ),
                  Text(
                    "Right away",
                    style: TextStyle(color: Color(0xff3cb792)),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black12.withOpacity(0.03),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      labelText: "Search for your grade",
                      labelStyle:
                          TextStyle(color: Colors.black45, fontSize: 14)),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              GridView.builder(
                shrinkWrap: true,
                itemCount: BgColors.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: BgColors[index],
                          // boxShadow: [
                          //   BoxShadow(
                          //       spreadRadius: 2,
                          //       blurRadius: 4,
                          //       color: BgColors[index])
                          // ],
                        ),
                        child: Center(child: IconsList[index]),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(ContainerList[index])
                    ],
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended Course",
                    style: txtTheme.titleLarge,
                  ),
                  Text(
                    "more",
                    style: TextStyle(color: Colors.black45),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "You may also like \t",
                    style: TextStyle(color: Colors.black45),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: Colors.cyan.shade400,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        "6",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 185,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (var i = 0; i < 3; i++)
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                        height: 200,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(blurRadius: 5, color: Colors.black12)
                            ]),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CourseScreen(),
                                    ));
                              },
                              enableFeedback: true,
                              child: Container(
                                height: 80,
                                width: double.infinity,
                                decoration:
                                    BoxDecoration(color: CourseColor[i]),
                                child: Image.asset(
                                  CourseImages[i],
                                  // height: 50,
                                  // width: 40,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    CourseTitle[i],
                                    style: TextStyle(color: Colors.black45),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    CourseRating[i],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 17),
                                  ),
                                  Row(
                                    children: [
                                      RatingBar.builder(
                                        initialRating: 3,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize: 15,
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {
                                          // print(rating);
                                        },
                                      ),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Center(
                                          child: Icon(
                                            Icons.favorite,
                                            size: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
        bottomNavigationBar: CustomNavBar(),
      ),
    );
  }
}
