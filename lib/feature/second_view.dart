import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SecondPageScreen extends StatefulWidget {
  @override
  _SecondPageScreenState createState() => _SecondPageScreenState();
}

class _SecondPageScreenState extends State<SecondPageScreen> {
  @override
  Widget build(BuildContext context) {
    return SizerUtil.orientation == Orientation.portrait ? _widPortrait() : _widLandScape();
  }

  Widget _widPortrait() {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          height: 100.h,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              _widMainImg(),
              Expanded(
                  child: Column(
                children: [_widTitle(), _widDesc()],
              )),
            ],
          ),
        ),
      ),
    );
  }

  _widMainImg() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: Image.network("https://m.media-amazon.com/images/I/518fAl617rL._AC_SY1000_.jpg"));
  }

  _widTitle() {
    return Padding(
      padding: EdgeInsets.only(top: 1.5.h),
      child: Text(
        "awdawd",
      ),
    );
  }

  _widDesc() {
    return Padding(
        padding: EdgeInsets.only(right: 10.w, left: 10.w, top: 2.h),
        child: Text(
          "dawdawd",
          textAlign: TextAlign.center,
        ));
  }

//landscape
  _widLandScape() {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          height: 100.h,
          child: Column(
            children: [
              _widMainImgLand(),
              Expanded(
                  child: Column(
                children: [_widTitleLand(), _widDescLand()],
              )),
            ],
          ),
        ),
      ),
    );
  }

  _widMainImgLand() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: Image.network("https://m.media-amazon.com/images/I/518fAl617rL._AC_SY1000_.jpg"));
  }

  _widTitleLand() {
    return Padding(
      padding: EdgeInsets.only(top: 1.0.h),
      child: Text("wdwadawd"),
    );
  }

  _widDescLand() {
    return Padding(padding: EdgeInsets.only(right: 25.w, left: 25.w, top: 1.5.h), child: Text('dwadwad'));
  }
}
