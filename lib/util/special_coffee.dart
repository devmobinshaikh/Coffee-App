import 'package:coffe_ui/util/Data_Lists.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Coffe_Details.dart';

class special_coffee extends StatelessWidget {
  const special_coffee({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: Special_coffe.length,
        itemBuilder: ((context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CoffeeDetailsPage(
                              data: Special_coffe,
                              index: index,
                            )),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                  child: Container(
                    height: 140,

                    // ignore: sort_child_properties_last
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              image: DecorationImage(image: AssetImage(Special_coffe[index][0]), fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Special_coffe[index][1],
                              style: GoogleFonts.nunito(fontSize: 16),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(Special_coffe[index][2],
                                style: GoogleFonts.concertOne(fontSize: 10, color: Colors.grey.shade500)),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  Special_coffe[index][3],
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xffd17842)),
                                ),
                                SizedBox(
                                  width: 80,
                                ),
                                Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: Color(0xffd17842), borderRadius: BorderRadius.circular(10)),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 20,
                                    ))
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(color: Color(0xff141921), borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
            ],
          );
        }));
  }
}
