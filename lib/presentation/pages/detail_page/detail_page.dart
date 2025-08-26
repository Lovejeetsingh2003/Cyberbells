import 'package:cyberbells/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    TextEditingController reviewController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios, size: 25, color: Colors.black),
        ),
        title: Text(
          "Details",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Image.asset("assets/images/detail.png", fit: BoxFit.fitWidth),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Track 5 Coffee",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Opens 7AM-8PM",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff71727A),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Check Menu",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff08979C),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "About",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: Color(0xff8F9098),
              ),
            ),
            SizedBox(height: 5),
            Text.rich(
              TextSpan(
                text:
                    "New Jersey’s unofficial cup of coffee might be a simple mug of joe from a diner ",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff71727A),
                  fontWeight: FontWeight.w500,
                ),
                children: [
                  TextSpan(
                    text: "Read More",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff08979C),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Rated by",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: Color(0xff8F9098),
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      child: Icon(Icons.person, size: 15, color: Colors.blue),
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Karen Roe",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star, size: 20, color: Colors.yellow),
                            Text(
                              "4.8",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff8F9098),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff08979C),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "check Google Reviews",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: Color(0xff8F9098),
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      child: Icon(Icons.person, size: 15, color: Colors.blue),
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Joshua Miller",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star, size: 20, color: Colors.yellow),
                            Text(
                              "3.9",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff8F9098),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.share, size: 25, color: Color(0xff08979C)),
              ],
            ),

            SizedBox(height: 10),
            Text(
              "Write a Review",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0xff8F9098),
              ),
            ),
            Text(
              "Alright, Frequenters, time to drop some wisdom!",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: Color(0xff8F9098),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.star_outline, size: 35, color: Colors.yellow),
                Icon(Icons.star_outline, size: 35, color: Colors.yellow),
                Icon(Icons.star_outline, size: 35, color: Colors.yellow),
                Icon(Icons.star_outline, size: 35, color: Colors.yellow),
                Icon(Icons.star_outline, size: 35, color: Colors.yellow),
              ],
            ),

            TextField(
              controller: reviewController,
              maxLines: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: "Drop Your Hot Take",
                hintStyle: TextStyle(fontSize: 12, color: Color(0xffC5C6CC)),
              ),
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),

            SizedBox(height: 20),
            CustomButton(onTap: () {}, title: "Submit", width: width),
          ],
        ),
      ),
    );
  }
}
