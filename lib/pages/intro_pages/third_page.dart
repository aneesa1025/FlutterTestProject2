import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage("assets/images/food.jpg"),
              fit: BoxFit.fitHeight),
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0, left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "03.",
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.amber,
                  fontWeight: FontWeight.w900),
            ),
            Text(
              "Prepare your Meal",
              style: TextStyle(
                  backgroundColor: Colors.black54,
                  fontSize: 26.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0, top: 8),
              child: Text(
                "Get ingredients straight to your kitchen so you can create delicious food with ease. Making multiple trips to the supermarket and forgotten ingredients a thing of the past!",
                style: TextStyle(
                    color: Colors.amberAccent,
                    fontStyle: FontStyle.italic,
                    backgroundColor: Colors.black38),
                textAlign: TextAlign.left,
              ),
            )
          ],
        ),
      ),
    );
  }
}
