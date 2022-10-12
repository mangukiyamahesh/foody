import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List abc = [
    'assets/images/feature-salad.jpg',
    'assets/images/Fruit-Salad-7.jpg'
  ];
  List<Map<String, dynamic>> list = [
    {
      'image': 'assets/images/Acai-Bowl.jpg',
      'name': 'Acai bowl',
      'text': 'Mary'
    },
    {
      'image': 'assets/images/feature-salad.jpg',
      'name': 'Feature Salad',
      'text': 'Anastasia'
    },
    {
      'image': 'assets/images/salad-feature-1.jpg',
      'name': 'Acai bowl',
      'text': 'Mary'
    },
    {
      'image': 'assets/images/Mint-Watermelon-Salad-Feature-Image.jpg',
      'name': 'Feature Salad',
      'text': 'Anastasia'
    },
  ];

  double height = 0.0;
  double width = 0.0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Explore',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: height * 0.04),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    hintText: 'Search for Food',
                    hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: height * 0.05),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(height * 0.05),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(height * 0.05),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  children: [
                    Text(
                      'Recommended',
                      style: TextStyle(
                          fontSize: height * 0.028,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      'More',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                SizedBox(
                  height: height * 0.55,
                  width: double.infinity,
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 10,
                            childAspectRatio: 2 / 2.6),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: height * 0.2,
                            width: height * 0.2,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.circular(height * 0.02),
                              image: DecorationImage(
                                  image: AssetImage(
                                    list[index]['image'],
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Text(
                            list[index]['name'],
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: height * 0.023),
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          Text(
                            list[index]['text'],
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontSize: height * 0.02),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Most View',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: height * 0.025),
                    ),
                    Text(
                      'More',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.015),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      height: height * 0.28,
                      margin: EdgeInsets.symmetric(vertical: height * 0.02),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(height * 0.015),
                        image: DecorationImage(
                            image: AssetImage(
                              abc[index],
                            ),
                            fit: BoxFit.cover),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
