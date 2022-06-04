import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage("assets/images/grocery.jpg"),
              fit: BoxFit.fitHeight),
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Text(
              "02.",
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.amber,
                  fontWeight: FontWeight.w900),
            ),
            Text(
              "Order the Ingredients",
              style: TextStyle(
                  backgroundColor: Colors.black54,
                  fontSize: 26.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                'We turn the recipe ingredients into a customisable shopping list. Swap items, remove items you don’t need, or add other grocery items you do need.',
                style: TextStyle(
                    color: Colors.amberAccent,
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                    backgroundColor: Colors.black38),
                textAlign: TextAlign.right,
              ),
            )
          ],
        ),
      ),
    );
  }
}
