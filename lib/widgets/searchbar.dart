import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.black12,
      height: height * 0.07,
      child: Center(
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
                size: 28,
              ),
              hintText: "Search",
              hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
              border: InputBorder.none),
        ),
      ),
    );
  }
}
