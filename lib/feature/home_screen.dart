import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("responsive Framework"),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 200.h,
          width: 200.w,
          child: ListView.builder(
            itemCount: 300,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: SizedBox(
                    height: 20.h,
                    child: Image.network("https://m.media-amazon.com/images/I/518fAl617rL._AC_SY1000_.jpg")),
              );
            },
          ),
        ),
      ),
    );
  }
}
