import 'package:coffe_ui/favourite/favourite_list.dart';
import 'package:coffe_ui/util/Coffe_Tile.dart';
import 'package:coffe_ui/util/special_coffee.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/Coffe_Details.dart';

class fav_page extends StatelessWidget {
  const fav_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black54,
        body: ListView(children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Your favourites ",
                style: GoogleFonts.nunito(
                  fontSize: 30,
                  color: Colors.orange,
                )),
          ),
          SizedBox(
            height: 20,
          ),
          GridView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: favourites.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height * .6)),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20.0, left: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CoffeeDetailsPage(
                                  data: favourites,
                                  index: index,
                                )),
                      );
                    },
                    child: Container(
                        width: MediaQuery.of(context).size.width * .25,
                        height: MediaQuery.of(context).size.height * .32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey.shade800,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                child: Material(
                                  elevation: 10,
                                  borderRadius: BorderRadius.circular(12),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(favourites[index][0], width: 150, height: 120, fit: BoxFit.fill),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    favourites[index][1],
                                    style: GoogleFonts.nunito(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    favourites[index][2],
                                    style: GoogleFonts.concertOne(fontSize: 10, height: 1, color: Colors.grey.shade500),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 18, left: 18, top: 5, bottom: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    favourites[index][3],
                                    style: GoogleFonts.nunito(fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                      decoration:
                                          BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(4)),
                                      child: Icon(
                                        Icons.add,
                                      ))
                                ],
                              ),
                            )
                          ],
                        )),
                  ),
                );
                ;
              }),
        ]));
  }
}
