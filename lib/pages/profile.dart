import 'package:flutter/material.dart';
import '../widgets/profile_info.dart';
import '../widgets/profile_picture.dart';
import '../widgets/story_items.dart';
import '../widgets/tab_items.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
   late int indexMenu = 0;

  List listMenu = [
    Center(
      child: Text("Text Face"),
    ),
    Center(
      child: Text("Game Pad"),
    ),
    Center(
      child: Text("All"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Row(
          children: const [
            Text(
              "Mas Elon",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Icon(Icons.arrow_drop_down, color: Colors.black),
            Icon(Icons.circle, color: Colors.red, size: 10,)
          ],
        ),
        actions: [
          IconButton(
            color: Colors.black,
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined),
          ),
          IconButton(
            color: Colors.black,
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                // Profile Picture
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProfileInfo("Posts", "999"),
                      ProfileInfo("Followers", "999"),
                      ProfileInfo("Following", "999"),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text("SuperElon",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 1),
              child: RichText(
                  text: TextSpan(
                      text: "This is elon mas",
                      style: TextStyle(color: Colors.black),
                      children: [
                    TextSpan(
                      text: " #go to Mars",
                      style: TextStyle(color: Colors.blue[300]),
                    )
                  ]))),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 1),
              child: RichText(
                  text: TextSpan(
                text: "Link goes here",
                style: TextStyle(color: Colors.blue[300], decoration: TextDecoration.underline),
              ))),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 1),
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  "Edit Profile",
                  style: TextStyle(color: Colors.black),
                ),
              )),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 1),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:  Row(
                  children: const [
                    StoryItems(
                      random: 55,
                      title: "Story 1",
                    ),
                    StoryItems(
                      random: 201,
                      title: "Story 2",
                    ),
                    StoryItems(
                      random: 103,
                      title: "Story 3",
                    ),
                    StoryItems(
                      random: 178,
                      title: "Story 4",
                    ),
                    StoryItems(
                      random: 39,
                      title: "Story 5",
                    ),
                    StoryItems(
                      random: 130,
                      title: "Story 6",
                    ),
                  ],
                ),
              )),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabItems(true, Icons.grid_on_outlined),
              TabItems(false, Icons.person_pin_outlined),
            ],
          ),
          GridView.builder(
              shrinkWrap: true,
              physics:
                  const NeverScrollableScrollPhysics(), //karena didalam widget yang bisa di scroll jadi butuh ini agar tidak error
              itemCount: 75,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
              itemBuilder: (context, index) => Image.network(
                    "https://picsum.photos/id/${index + 13}/130",
                    fit: BoxFit.cover,
                  ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            iconSize: 25,
            onTap: (value) => setState(() {
                  indexMenu = value;
                }),
            currentIndex: indexMenu, //active index bottomnavigationbaritem
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black), label: "", ),
              BottomNavigationBarItem(icon: Icon(Icons.search, color: Colors.black), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.ondemand_video_outlined, color: Colors.black), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_sharp, color: Colors.black), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.black), label: ""),
            ]),
    );
  }
}
