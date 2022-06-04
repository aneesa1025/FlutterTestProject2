import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test/pages/intro_pages/onboard_page.dart';

import 'login_page.dart';

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          // appBar: AppBar(
          //   backgroundColor: Colors.transparent,
          //   elevation: 0.0,
          //   iconTheme: IconThemeData(color: Colors.black),
          //   // title: const Text("Catalog App"),
          //   // actions: [
          //   //   const Icon(Icons.favorite),
          //   //   const Padding(
          //   //     padding: EdgeInsets.symmetric(horizontal: 15.0),
          //   //     child: Icon(Icons.search),
          //   //   ),
          //   //   const Icon(Icons.more_vert),
          //   // ],
          // ),
          body: Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              // ignore: sized_box_for_whitespace
              const SizedBox(height: 600, child: PageViewDemo()),
              IconButton(
                onPressed: () {
                  _scaffoldState.currentState?.openDrawer();
                },
                color: Colors.white,
                icon: const Icon(Icons.menu),
              ),

              // GET STARTED BUTTON//
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            fixedSize: const Size(160, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                        child: const Text("GET STARTED")),
                  ),
                ],
              )
            ],
          ),
          key: _scaffoldState,
          drawer: ClipRRect(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            child: Drawer(
              backgroundColor: const Color(0xFFF9D1CE),
              child: ListView(
                padding: EdgeInsets.zero,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const DrawerHeader(
                      decoration: BoxDecoration(color: Color(0xFFF5E6E3)),
                      child: Text(
                        "This is drawer Header",
                        textAlign: TextAlign.center,
                      )),
                  const Card(
                    child: ListTile(
                      leading: Icon(Icons.card_giftcard),
                      trailing: Icon(Icons.more_vert),
                      dense: true,
                      title: Text("item 1"),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      leading: Icon(Icons.card_giftcard),
                      dense: true,
                      title: Text("item 2"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
