import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LINE CLIPPING IN FLUTTER"),
      ),
      body: Column(
        children: [
          ClipPath(
            child: Image.network(
                "https://cdn.mos.cms.futurecdn.net/mEuBJTDhXuTfSKdLefzSKg-1024-80.jpg.webp"
            ),
            clipper: MyClipper(),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    // path.lineTo(size.width,0);
    // path.close();
    path.lineTo(0,size.height);
    path.lineTo(size.width,0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper)=> false;

}