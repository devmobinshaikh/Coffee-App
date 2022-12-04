import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:coffe_ui/favourite/favourite_list.dart';
import 'package:coffe_ui/pages/summary_page.dart';
import 'package:coffe_ui/util/Data_Lists.dart';
import 'package:counter/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeDetailsPage extends StatelessWidget {
  CoffeeDetailsPage({
    super.key,
    required this.data,
    required this.index,
  });
  List data = [];
  final int index;

  @override
  Widget build(BuildContext context) {
    int count = 1;
    return StatefulBuilder(builder: (context, refresh) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * .45,
                      width: MediaQuery.of(context).size.width * 1.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(image: AssetImage(data[index][0]), fit: BoxFit.cover)),
                    ),
                    Positioned(
                        top: 8,
                        height: 40,
                        width: 40,
                        left: MediaQuery.of(context).size.width * .8,
                        child: IconButton(
                            color: data[index][6] ? Colors.red : Colors.white,
                            icon: Icon(
                              Icons.favorite,
                              size: 30,
                            ),
                            onPressed: () {
                              refresh(() {
                                if (data[index][6] == true) {
                                  data[index][6] = false;
                                  favourites.remove(banner[index]);
                                } else {
                                  favourites.add(banner[index]);
                                  data[index][6] = true;
                                }
                              });
                            })),
                    Positioned(
                      top: MediaQuery.of(context).size.height * .32,
                      child: BlurryContainer(
                        padding: EdgeInsets.all(20),
                        height: 140,
                        color: Color(0xff141921),
                        width: MediaQuery.of(context).size.width * .949,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(25)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data[index][1],
                                  style: GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(data[index][2],
                                    style: GoogleFonts.nunito(fontSize: 10, color: Colors.grey.shade500)),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SvgPicture.asset(
                                        "images/star.svg",
                                        color: Color(0xffd17842),
                                        height: 15,
                                      ),
                                    ),
                                    Text(data[index][5],
                                        style: GoogleFonts.nunito(fontSize: 16, fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      width: 8,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 42,
                                      width: 42,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            "images/coffee-beans.svg",
                                            color: Color(0xffd17842),
                                            height: 15,
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            "Coffee",
                                            style: TextStyle(
                                                color: Color(0xff919296), fontSize: 10, fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          color: Color(0xff101419), borderRadius: BorderRadius.circular(8)),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 42,
                                      width: 42,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            "images/water-drop.svg",
                                            color: Color(0xffd17842),
                                            height: 15,
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            "Milk",
                                            style: TextStyle(
                                                color: Color(0xff919296), fontSize: 10, fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          color: Color(0xff101419), borderRadius: BorderRadius.circular(8)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 37,
                                  width: 120,
                                  child: Center(
                                      child: Text(
                                    "Medium Roasted",
                                    style:
                                        TextStyle(color: Color(0xff919296), fontSize: 12, fontWeight: FontWeight.bold),
                                  )),
                                  decoration:
                                      BoxDecoration(color: Color(0xff101419), borderRadius: BorderRadius.circular(8)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Description",
                          style: GoogleFonts.nunito(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        data[index][4],
                        style: GoogleFonts.averiaLibre(fontSize: 14, color: Color(0xff919296)),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Size",
                        style: GoogleFonts.nunito(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 37,
                            width: 70,
                            child: Center(
                                child: Text(
                              "S",
                              style: TextStyle(
                                color: Color(0xff919296),
                                fontSize: 18,
                              ),
                            )),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Color(0xffd17842))),
                          ),
                          SizedBox(
                            width: 11,
                          ),
                          Container(
                            height: 37,
                            width: 70,
                            child: Center(
                                child: Text(
                              "M",
                              style: TextStyle(
                                color: Color(0xff919296),
                                fontSize: 18,
                              ),
                            )),
                            decoration: BoxDecoration(color: Color(0xff101419), borderRadius: BorderRadius.circular(8)),
                          ),
                          SizedBox(
                            width: 11,
                          ),
                          Container(
                            height: 37,
                            width: 70,
                            child: Center(
                                child: Text(
                              "L",
                              style: TextStyle(
                                color: Color(0xff919296),
                                fontSize: 15,
                              ),
                            )),
                            decoration: BoxDecoration(color: Color(0xff101419), borderRadius: BorderRadius.circular(8)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Quantity",
                        style: GoogleFonts.nunito(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 120,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade700,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Counter(
                          min: 0,
                          max: 5,
                          initial: 1,
                          step: 1,
                          configuration: DefaultConfiguration(),
                          onValueChanged: (value) {
                            count = value.toInt();
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Price",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                data[index][3],
                                style: GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          // ignore: deprecated_member_use
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                              height: 50,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => summaryPage(
                                              final_list: data[index],
                                              count: count,
                                            )));
                              },
                              color: Color(0xffd17842),
                              child: Text(
                                "Buy Now",
                                style: GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
