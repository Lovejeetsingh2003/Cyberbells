import 'package:cyberbells/presentation/widgets/search_list_item.dart';
import 'package:flutter/material.dart';

class SerachPage extends StatelessWidget {
  const SerachPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    TextEditingController searchController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios, size: 25, color: Colors.black),
        ),
        title: Text(
          "Search Local",
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
            SizedBox(
              width: width * 0.8,
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.tune,
                    size: 25,
                    color: Color(0xffC5C6CC),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 25,
                    color: Color(0xffC5C6CC),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 1, color: Color(0xffC5C6CC)),
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(fontSize: 16, color: Color(0xffC5C6CC)),
                ),
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(
                Icons.search_outlined,
                color: Colors.black,
                size: 25,
              ),
              title: Text(
                "Coffee",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              trailing: Icon(Icons.close, size: 25, color: Colors.black),
            ),
            ListTile(
              leading: Icon(
                Icons.search_outlined,
                color: Colors.black,
                size: 25,
              ),
              title: Text(
                "Black Coffee",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              trailing: Icon(Icons.close, size: 25, color: Colors.black),
            ),
            ListTile(
              leading: Icon(
                Icons.search_outlined,
                color: Colors.black,
                size: 25,
              ),
              title: Text(
                "Mocha",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              trailing: Icon(Icons.close, size: 25, color: Colors.black),
            ),
            ListTile(
              leading: Icon(
                Icons.search_outlined,
                color: Colors.black,
                size: 25,
              ),
              title: Text(
                "Latte",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              trailing: Icon(Icons.close, size: 25, color: Colors.black),
            ),
            Divider(height: 1, color: Color(0xffEDEDED)),
            Text(
              "Recently Searched Businesses",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            SearchListItem(
              image: "assets/images/deal.png",
              place: "190m",
              placeType: "Coffee Shop",
              rating: 4.9,
              title: "Sugar Tree Cafe",
            ),
            SearchListItem(
              image: "assets/images/deal.png",
              place: "190m",
              placeType: "Coffee Shop",
              rating: 4.9,
              title: "Sugar Tree Cafe",
            ),
            SearchListItem(
              image: "assets/images/deal.png",
              place: "190m",
              placeType: "Coffee Shop",
              rating: 4.9,
              title: "Sugar Tree Cafe",
            ),
          ],
        ),
      ),
    );
  }
}
