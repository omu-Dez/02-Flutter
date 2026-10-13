import 'package:flutter/material.dart';

void main() => runApp(ProfileApp());

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: ProfilePage(),
    debugShowCheckedModeBanner: false,
    );
  }
}

class ProfilePage extends StatelessWidget{
  String name = 'Tom Hardy';
  String bio = 'Actor';
  String age = '48 years';
  String country = 'Surrey';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: const Color.fromARGB(255, 246, 227, 180),
    appBar: AppBar(
      title: Text('Profile'),
      backgroundColor: const Color.fromARGB(255, 255, 199, 32),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
          icon: Icon(Icons.arrow_back),),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      ],
    ),
    body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('images/11.jpg'),
          ),
            SizedBox(height: 16),
            Text(
              name,
              style: TextStyle(
                fontSize: 22, 
                fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5,),
            Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 24),
            child: Text(
              age,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            ),
            SizedBox(height: 3),
            Padding(padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              bio,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 3),
            Padding(padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              country,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(icon: Icon(Icons.camera_alt),
                iconSize: 30,
                onPressed: () {},),
                SizedBox(width: 12),
                IconButton(icon: Icon(Icons.alternate_email),
                iconSize: 30,
                onPressed: () {},),
                SizedBox(width: 12),
                IconButton(icon: Icon(Icons.videocam),
                iconSize: 30,
                onPressed: () {},),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {}, 
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(12),
                ),
              ),
              child: Text('Follow', style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}