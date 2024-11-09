import 'package:flutter/material.dart';
import 'package:trictionary/constants.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:trictionary/screens/like_screen.dart';
import 'package:trictionary/screens/login_screen.dart';
import 'package:trictionary/screens/profile_screen.dart';
import '../usedWidgets/top_pick_container.dart';
import 'itenary.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  get controller => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kthemeColor,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          SearchAnchor(
              searchController: controller,
              viewHintText: 'Search for a city',
              headerHintStyle: TextStyle(
                color: Colors.grey,
              ),
              builder: (BuildContext context, SearchController controller) {
                return IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    controller.openView();
                  },
                );
              },
              suggestionsBuilder:
                  (BuildContext context, SearchController controller) {
                return List<ListTile>.generate(5, (int index) {
                  final String item = 'item $index';
                  return ListTile(
                    title: Text(item),
                    onTap: () {
                      setState(() {
                        controller.closeView(item);
                      });
                    },
                  );
                });
              }),
          PopupMenuButton(
            icon: const Icon(Icons.account_circle),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text('Account'),
                  onTap: () {
                    Navigator.pushNamed(context, ProfileScreen.id);
                  },
                ),
                PopupMenuItem(
                  child: Text('Log Out'),
                  onTap: () {
                    Alert(
                      context: context,
                      type: AlertType.warning,
                      title: "LOGGING OUT",
                      desc: "You will be redirected to login page.",
                      buttons: [
                        DialogButton(
                          onPressed: () => Navigator.pop(context),
                          color: Color.fromRGBO(0, 179, 134, 1.0),
                          child: Text(
                            "CANCEL",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        DialogButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.popAndPushNamed(context, LoginScreen.id);
                          },
                          color: Color.fromRGBO(200, 0, 100, 1.0),
                          child: Text(
                            "LOG OUT",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )
                      ],
                    ).show();
                  },
                ),
              ];
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: kthemeColor,
              ),
              child: Text('MENU'),
            ),
            ListTile(
              title: const Text('Liked Items'),
              trailing: Icon(Icons.favorite,color: Colors.pink,),
              onTap: () {
                Navigator.pushNamed(context, LikeScreen.id);
              },
            ),
            ListTile(
              title: const Text('Itenary'),
              trailing: Icon(Icons.info_outline,color: Colors.redAccent,),
              onTap: () {
                Navigator.pushNamed(context, ItineraryPage.id);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 15.0),
            const Center(
              child: Text(
                'TOP PICKS',
                style: TextStyle(
                  fontSize: 40.0,
                  letterSpacing: 0.75,
                  fontFamily: 'Anton',
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TopPicksContainer(
              imageLocation: 'https://images.unsplash.com/photo-1530866495561-507c9faab2ed?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cmFmdGluZ3xlbnwwfHwwfHx8MA%3D%3D',
              imageSubTitle: 'Enjoy a fun travel to himalayas for kayaking and enjoying an adventurous life',
              imageTitle: 'Kayaking',
            ),
            const SizedBox(
              height: 20.0,
            ),
            TopPicksContainer(
              imageLocation: 'https://images.unsplash.com/photo-1465311440653-ba9b1d9b0f5b?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aGlraW5nfGVufDB8fDB8fHww',
              imageSubTitle: 'Immerse yourself in nature, breathing in fresh air and have a challenge',
              imageTitle: 'Hiking',
            ),
            const SizedBox(
              height: 20.0,
            ),
            TopPicksContainer(
              imageLocation: 'https://images.unsplash.com/photo-1544551763-46a013bb70d5?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHNjdWJhJTIwZGl2aW5nfGVufDB8fDB8fHww',
              imageSubTitle: 'Exploring the underwater world, discovering vibrant coral reefs and much more',
              imageTitle: 'Scuba Diving',
            ),
            const SizedBox(
              height: 20.0,
            ),
            TopPicksContainer(
              imageLocation: 'https://images.unsplash.com/photo-1677856216675-a397a342cdd2?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGFyYWdsaWRpbmd8ZW58MHx8MHx8fDA%3D',
              imageSubTitle: 'Soaring through the skies, harness the wind and see the canvas of endless possibilities',
              imageTitle: 'Para Gliding',
            ),
          ],
        ),
      ),
    );
  }
}