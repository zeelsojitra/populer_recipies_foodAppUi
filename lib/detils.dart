import 'package:flutter/material.dart';
import 'package:populer_recipies/media_query_demo.dart';

class detils extends StatefulWidget {
  const detils({Key? key}) : super(key: key);

  @override
  State<detils> createState() => _detilsState();
}

class _detilsState extends State<detils> {
  List<Map<String, dynamic>> recipes1 = [
    {
      "image": "asserts/images/acai_bowl.jpg",
      "name": "Acai bowl",
      "subtitle": "Green peppers Apple\nGreen peppers A-pple",
      "price": "\$12.25",
    },
    {
      "image": "asserts/images/acai_bowl2.jpg",
      "name": "Acai bowl",
      "subtitle": "Green peppers Apple\nGreen peppers A-pple",
      "price": "\$12.25",
    },
    {
      "image": "asserts/images/acai_bowl3.jpg",
      "name": "Acai bowl",
      "subtitle": "Green peppers Apple\nGreen peppers A-pple",
      "price": "\$12.25",
    },
    {
      "image": "asserts/images/acai_bowl4.jpg",
      "name": "Acai bowl",
      "subtitle": "Green peppers Apple\nGreen peppers A-pple",
      "price": "\$12.25",
    },
    {
      "image": "asserts/images/acai_bowl5.jpg",
      "name": "Acai bowl",
      "subtitle": "Green peppers Apple\nGreen peppers A-pple",
      "price": "\$12.25",
    },
    {
      "image": "asserts/images/acai_bowl6.jpg",
      "name": "Acai bowl",
      "subtitle": "Green peppers Apple\nGreen peppers A-pple",
      "price": "\$12.25",
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Popular recipes",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: recipes1.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        height: height * 0.13,
                        width: width * 0.45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              recipes1[index]['image'],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            recipes1[index]["name"],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            recipes1[index]['subtitle'],
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                recipes1[index]["price"],
                                style: TextStyle(
                                  color: Colors.tealAccent,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 120,
                              ),
                              Container(
                                height: height * 0.02,
                                width: width * 0.1,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: Colors.tealAccent, width: 1),
                                ),
                                child: Center(
                                  child: Text(
                                    "Buy",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
