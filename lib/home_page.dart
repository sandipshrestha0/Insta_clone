import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

bool _boolIcon = false;
IconData _lightIcon = Icons.wb_sunny;
IconData _darktIcon = Icons.nights_stay;

ThemeData _lightTheme = ThemeData(
  primaryColor: Colors.amber,
  brightness: Brightness.light,
);
ThemeData _darkTheam = ThemeData(
  primaryColor: Colors.red,
  brightness: Brightness.dark,
);

class _HomePageState extends State<HomePage> {
  List<String> profileImages = [
    "images/1.png",
    "images/2.png",
    "images/3.jpg",
    "images/4.jpg",
    "images/5.jpg",
    "images/6.jpg",
  ];
  List<String> postImage = [
     "images/1.png",
    "images/2.png",
    "images/3.jpg",
    "images/4.jpg",
    "images/5.jpg",
    "images/6.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _boolIcon ? _darkTheam : _lightTheme,
      home: Scaffold(
        appBar: AppBar(
          elevation: 1.0,
          shadowColor: Colors.black,
          title: Text("Instagram"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.sms),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _boolIcon = !_boolIcon;
                });
              },
              icon: Icon(
                _boolIcon ? _lightIcon : _darktIcon,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    6,
                    (index) => Container(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35.0,
                            backgroundImage: AssetImage("images/story.jpg"),
                            child: CircleAvatar(
                              radius: 32.0,
                              backgroundImage: AssetImage(profileImages[index]),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Profile Name",
                            style: TextStyle(fontSize: 12, ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Divider(),
              Column(
                children: List.generate(
                  6,
                  (index) => Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 14.0,
                              backgroundImage: AssetImage("images/story.jpg"),
                              child: CircleAvatar(
                                radius: 12,
                                backgroundImage: AssetImage(profileImages[index]),
                              ),
                            ),
                          ),
                          Text("Profile Name"),
                          Spacer(),
                          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
                        ],
                      ),
                      Image.asset(postImage[index], width: 1080, height: 608),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_box_outlined),
              ),
              Spacer(),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.ondemand_video_outlined)),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.person),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
