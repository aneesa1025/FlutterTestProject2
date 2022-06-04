import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage("assets/images/recipe.jpg"),
              fit: BoxFit.fill),
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          Text(
            "01.",
            style: TextStyle(
                fontSize: 28, color: Colors.amber, fontWeight: FontWeight.w900),
          ),
          Text(
            "Discover your Recipe",
            style: TextStyle(
                backgroundColor: Colors.black54,
                fontSize: 26.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text(
              "Choose the recipes you want to eat. With our wide recipe collection, you won’t have to eat the same boring meals again!",
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontStyle: FontStyle.italic,
                  fontSize: 16,
                  backgroundColor: Colors.black38),
              textAlign: TextAlign.end,
            ),
          )
        ],
      ),
    );
  }
}
