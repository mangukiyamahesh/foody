import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: height * 0.3,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green.shade600,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(height * 0.07),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.07,
                        ),
                        Text(
                          'My home page',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: height * 0.04),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: height * 0.135,
                  left: width * 0.078,
                  child: Container(
                    height: height * 0.275,
                    width: height * 0.4,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(height * 0.02),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.teal.shade50,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.05, vertical: height * 0.03),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: height * 0.05,
                                backgroundImage: AssetImage(
                                  'assets/images/profile.jpg',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.025),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Anastasia',
                                      style: TextStyle(
                                          fontSize: height * 0.03,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Text(
                                      'ID:12986504563',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: height * 0.016,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '56',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: height * 0.03),
                                    ),
                                    Text(
                                      'Following',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500,
                                          fontSize: height * 0.015),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '786',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: height * 0.03),
                                    ),
                                    Text(
                                      'Follower',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500,
                                          fontSize: height * 0.015),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '12',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: height * 0.03),
                                    ),
                                    Text(
                                      'Tags',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500,
                                          fontSize: height * 0.015),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.13,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cookbooks',
                        style: TextStyle(
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: height * 0.25,
                                    width: height * 0.2,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius:
                                          BorderRadius.circular(height * 0.02),
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: height * 0.12,
                                          width: height * 0.2,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(
                                                  height * 0.02),
                                            ),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/vegan-waldorf-salad-feature.jpg',
                                                ),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        Row(
                                          //crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: height * 0.12,
                                              width: height * 0.095,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(
                                                      height * 0.02),
                                                ),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                      'assets/images/salad-feature-1.jpg',
                                                    ),
                                                    fit: BoxFit.cover),
                                              ),
                                            ),
                                            SizedBox(
                                              width: height * 0.01,
                                            ),
                                            Container(
                                              height: height * 0.12,
                                              width: height * 0.095,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                  bottomRight: Radius.circular(
                                                      height * 0.02),
                                                ),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                      'assets/images/feature-salad.jpg',
                                                    ),
                                                    fit: BoxFit.cover),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Text(
                                    'Salads cook',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: height * 0.022),
                                  ),
                                  SizedBox(
                                    height: height * 0.005,
                                  ),
                                  Text(
                                    '18 Courses',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: height * 0.018),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: width * 0.06,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: height * 0.25,
                                    width: height * 0.2,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius:
                                          BorderRadius.circular(height * 0.02),
                                      image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images/Mint-Watermelon-Salad-Feature-Image.jpg',
                                          ),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Text(
                                    'Kitchen flowers',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: height * 0.022),
                                  ),
                                  SizedBox(
                                    height: height * 0.005,
                                  ),
                                  Text(
                                    '18 Courses',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: height * 0.018),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: height * 0.25,
                                    width: height * 0.2,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius:
                                          BorderRadius.circular(height * 0.02),
                                      image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images/Acai-Bowl.jpg',
                                          ),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Text(
                                    'Kitchen flowers',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: height * 0.022),
                                  ),
                                  SizedBox(
                                    height: height * 0.005,
                                  ),
                                  Text(
                                    '18 Courses',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: height * 0.018),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: width * 0.06,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: height * 0.25,
                                    width: height * 0.2,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius:
                                          BorderRadius.circular(height * 0.02),
                                      image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images/Fruit-Salad-7.jpg',
                                          ),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Text(
                                    'Kitchen flowers',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: height * 0.022),
                                  ),
                                  SizedBox(
                                    height: height * 0.005,
                                  ),
                                  Text(
                                    '18 Courses',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: height * 0.018),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
