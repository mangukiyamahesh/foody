import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List list = [
    'assets/images/Acai-Bowl.jpg',
    'assets/images/feature-salad.jpg',
    'assets/images/vegan-waldorf-salad-feature.jpg',
    'assets/images/Mint-Watermelon-Salad-Feature-Image.jpg',
    'assets/images/salad-feature-1.jpg',
    'assets/images/vegan-waldorf-salad-feature.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Popular recipes',
                style: TextStyle(
                  fontSize: height * 0.04,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 6,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          height: height * 0.158,
                          width: height * 0.2,
                          margin: EdgeInsets.symmetric(vertical: height * 0.02),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(height * 0.015),
                            image: DecorationImage(
                                image: AssetImage(
                                  list[index],
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.03),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Acai bowl',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: height * 0.025,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Text(
                                'Green peppers Apple',
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.w400,
                                  fontSize: height * 0.02,
                                ),
                              ),
                              Text(
                                'Green peppers A-pple',
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.w400,
                                  fontSize: height * 0.02,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '\$ 12.25',
                                    style: TextStyle(
                                        color: Colors.teal,
                                        fontSize: height * 0.023,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    width: width * 0.06,
                                  ),
                                  Container(
                                    height: height * 0.04,
                                    width: height * 0.09,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(height * 0.04),
                                      border: Border.all(
                                        color: Colors.teal,
                                        width: height * 0.0015,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Buy',
                                        style: TextStyle(
                                            color: Colors.teal,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
