// ignore_for_file: prefer_const_constructors

import 'package:events/model/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:events/provider/favourite.dart';

class favourite extends StatelessWidget {
  const favourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final halll = Provider.of<Favourite>(context);
    
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
              actions: [
                Container(
                  //padding:EdgeInsets.all(12) ,
      
                  margin: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                           IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => favourite(),
                                ),
                              );
                            },
                            icon: Icon(Icons.star),
                            padding: const EdgeInsets.only(right: 12),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
              backgroundColor: const Color.fromARGB(255, 189, 98, 181),
              title: Text("Favourites"),
            ),
             body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 550,
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: halll.selectedHalls.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        title: Text(halll.selectedHalls[index].name),
                        subtitle: Text(
                            "${halll.selectedHalls[index].price} - ${halll.selectedHalls[index].location}"),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                              halll.selectedHalls[index].imgPath),
                        ),
                        trailing: IconButton(                           
                            onPressed: () {
                              halll.delete(halll.selectedHalls[index]);
                              
                             color: items[index].isFavourite;
                          
                            },
                            icon: Icon(Icons.delete)),
                            iconColor: Colors.red,

                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
      ),
    );
  }
}
