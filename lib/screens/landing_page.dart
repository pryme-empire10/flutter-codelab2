import 'package:flutter/material.dart';

import '../widget/attraction_listview.dart';
import '../widget/bottom_bar.dart';
import '../widget/landing_page_header.dart';
import '../const/color.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryGray,
        iconTheme: const IconThemeData(color: mainYellow),
        title: const Center(
          child: Icon(Icons.airplanemode_on),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_on_outlined,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.bottomLeft,
          color: mainYellow,
          child: const Icon(
            Icons.airplanemode_on,
            size: 100,
            color: colorBlack,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              primaryGray,
              secondaryGray,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          HeaderWidget(),
          AttractionListView(),
          BottomBarWidget(),
        ],
      ),
      ),
    );
  }
}
