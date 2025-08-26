import 'package:cyberbells/presentation/pages/detail_page/detail_page.dart';
import 'package:cyberbells/presentation/pages/profile_page/profile_page.dart';
import 'package:cyberbells/presentation/pages/search_page/serach_page.dart';
import 'package:cyberbells/presentation/widgets/category_item.dart';
import 'package:cyberbells/presentation/widgets/fold_painter.dart';
import 'package:cyberbells/presentation/widgets/list_item.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    var index = 0;
    return Scaffold(
      backgroundColor: Color(0xff08979C),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xff08979C),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              PageTransition(
                duration: Duration(milliseconds: 200),
                type: PageTransitionType.rightToLeft,
                child: ProfilePage(),
              ),
            );
          },
          icon: Icon(Icons.person_2_outlined, color: Colors.white, size: 25),
        ),
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.location_on_outlined, color: Colors.white, size: 25),
              Text(
                "Hoboken",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Colors.white,
                size: 25,
              ),
              SizedBox(width: 20),
            ],
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        duration: Duration(milliseconds: 200),
                        type: PageTransitionType.rightToLeft,
                        child: SerachPage(),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: width * 0.72,
                    child: ListTile(
                      shape: Border.all(width: 1, color: Color(0xff878787)),
                      leading: Icon(
                        Icons.search_outlined,
                        color: Color(0xff878787),
                        size: 25,
                      ),
                      title: Text(
                        "Search",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff878787),
                        ),
                      ),
                      trailing: Icon(
                        Icons.tune,
                        size: 25,
                        color: Color(0xff878787),
                      ),
                    ),
                  ),
                ),
                Image.asset("assets/images/qr.png", width: 50, height: 50),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(10),
              height: 100,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Color(0xff08979C)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning Bestie",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Yo, you just snagged 200 exclusive\npoints for hitting up cafes and\nrestaurants this month!",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Color(0xff5C6F81),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "200",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Exclusive points",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Stack(
              children: [
                Image.asset("assets/images/deal.png", fit: BoxFit.fitWidth),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Todays Deal",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),

                      Text(
                        "50% OFF",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),

                      Text(
                        "Et provident eos est dolore. Eum\nlibero eligendi molestias aut et\nquibusdam aspernatur.",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Color(0xff5C6F81),
                        ),
                      ),
                      SizedBox(height: 5),
                      GestureDetector(
                        onTap: () {},
                        child: Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xff08979C),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Text(
                                    "Grab it Now",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Icon(
                                    Icons.arrow_right_alt,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),

                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: CustomPaint(
                                size: const Size(20, 20),
                                painter: FoldPainter(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Yo, check out all the dope offers!",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return CategoryItem(
                    icon: Icons.cabin,
                    title: "Cafe",
                    color: Colors.white,
                    bgcClor: Colors.black,
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Frequently Visited",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff08979C),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          duration: Duration(milliseconds: 200),
                          type: PageTransitionType.rightToLeft,
                          child: DetailPage(),
                        ),
                      );
                    },
                    child: ListItem(
                      image: "assets/images/deal.png",
                      place: "190m",
                      points: 10,
                      rating: 4.9,
                      title: "Sugar Tree Cafe",
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Highest Reward Points",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff08979C),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          duration: Duration(milliseconds: 200),
                          type: PageTransitionType.rightToLeft,
                          child: DetailPage(),
                        ),
                      );
                    },
                    child: ListItem(
                      image: "assets/images/deal.png",
                      place: "190m",
                      points: 10,
                      rating: 4.9,
                      title: "Sugar Tree Cafe",
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Near You",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff08979C),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          duration: Duration(milliseconds: 200),
                          type: PageTransitionType.rightToLeft,
                          child: DetailPage(),
                        ),
                      );
                    },
                    child: ListItem(
                      image: "assets/images/deal.png",
                      place: "190m",
                      points: 10,
                      rating: 4.9,
                      title: "Sugar Tree Cafe",
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color(0xff08979C),
          border: Border.all(color: Colors.white, width: 4),
        ),
        child: Image.asset("assets/images/logo.png", height: 30, width: 30),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (index) {
          index = index;
        },
        selectedLabelStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        backgroundColor: const Color(0xff08979C),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.event, size: 25, color: Colors.white),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note, size: 25, color: Colors.white),
            label: 'Contests',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline, size: 25, color: Colors.white),
            label: 'Contests',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_outlined,
              size: 25,
              color: Colors.white,
            ),
            label: 'Notifications',
          ),
        ],
      ),
    );
  }
}
