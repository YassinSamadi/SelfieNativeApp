import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'NavBar.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File? _image;

  Future getImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;

    final imageTemporary= File(image.path);

    setState(() {
      this._image = imageTemporary;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      endDrawer: NavBar(),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/images/kdglogo.png",
          ),
        ),

      ),
      body: Center(
        child:Column(children: [
              SizedBox(height: 50),
              Image.asset(
                "assets/images/Avatar.png",
              ),
              SizedBox(height: 120),
              cameraButton(
                onPressed:()=> getImage(ImageSource.camera),
              ),
              ]),
        
      ),
    );
  }
}


Widget cameraButton({
  required VoidCallback onPressed,
}){
  return Container(
    child: MaterialButton(
    onPressed: () {},
    color: Colors.black,
    textColor: Colors.white,
    child: Icon(
    Icons.camera_alt,
    size: 24,
    ),
    padding: EdgeInsets.all(16),
    shape: CircleBorder(),
)
  );
}