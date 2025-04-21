import 'package:events/model/item.dart';
import 'package:flutter/material.dart';
import 'package:events/pages/myfavourite.dart';
import 'package:events/provider/favourite.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'details_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final halll = Provider.of<Favourite>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Container(
              margin: EdgeInsets.all(12),
              child: Row(
                children: [
                  Stack(
                    children: [
                      IconButton(
                        icon: Icon(Icons.star),
                        padding: const EdgeInsets.only(right: 12),
                        
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => favourite(),
                            ),
                          );
                        },
                        
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
          backgroundColor: const Color.fromARGB(255, 189, 98, 181),
          title: Text("Home"),
        ),

         drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/img/test.jpg"),
                          fit: BoxFit.cover),
                    ),
                    accountEmail: null,
                    accountName: null,
                  ),
                  ListTile(
                      title: Text("Home"),
                      leading: Icon(Icons.home),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        );
                      }),
                  ListTile(
                      title: Text("My Favourite"),
                      leading: Icon(Icons.star),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => favourite(),
                          ),
                        );
                      }),
                  ListTile(
                      title: Text("Logout"),
                      leading: Icon(Icons.exit_to_app),
                      onTap: () {
                        SystemNavigator.pop();
                      }),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 12),
                child: Text("Developed by events group © 2024",
                    style: TextStyle(fontSize: 14)),
              )
            ],
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 2.7 / 1.8,
              crossAxisSpacing: 10,
              mainAxisSpacing: 1,
            ),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Details(event: items[index]),
                    ),
                  );
                },
                child: GridTile(
                  child: Stack(children: [
                    Positioned(
                      top: 6,
                      bottom: 2,
                      right: 0,
                      left: 0,
                      child: ClipRRect(
                        child: Image.asset(items[index].imgPath),
                      ),
                    ),
                  ]),
                  footer: GridTileBar(
                    backgroundColor: const Color.fromARGB(255, 238, 172, 218),
                    trailing: IconButton(
                      color: items[index].isFavourite
                          ? Colors.yellow
                          : Colors.black,
                      onPressed: () {
                        setState(() {
                          // Toggle the isFavourite property of the item
                          items[index].isFavourite =
                              !items[index].isFavourite;
                        });
                        // Optionally add to favorites in the provider
                        if (items[index].isFavourite) {
                          halll.add(items[index]);
                        } else {
                          halll.delete(items[index]);
                        }
                      },
                      icon: Icon(Icons.star_border_outlined),
                    ),
                    title: Center(
                      child: Text(
                        items[index].name,
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        
      ),
    );
  }
}




