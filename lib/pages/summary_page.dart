import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffe_ui/pages/Home_Page.dart';
import 'package:coffe_ui/util/Data_Lists.dart';
import 'package:coffe_ui/util/special_coffee.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class summaryPage extends StatelessWidget {
  summaryPage({super.key, required this.final_list, required this.count});
  final List final_list;
  final int count;

  @override
  Widget build(BuildContext context) {
    final int bill = count;
    String aStr = final_list[3].replaceAll(new RegExp(r'[^0-9.]'), '');
    double price = double.parse(aStr);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text(
          "Mobin Coffe shop",
          style: GoogleFonts.nunito(fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 80,
          ),
          Image(
            image: AssetImage("images/done.png"),
            fit: BoxFit.cover,
            width: 60,
            height: 60,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Thank You for your ",
            style: GoogleFonts.nunito(
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            "order !",
            style: GoogleFonts.nunito(
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Container(
              height: MediaQuery.of(context).size.height * .15,

              // ignore: sort_child_properties_last
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .2,
                    height: MediaQuery.of(context).size.height * .1,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(image: AssetImage(final_list[0]), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(width: 15),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                final_list[1],
                                style: GoogleFonts.nunito(fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(final_list[2], style: GoogleFonts.concertOne(fontSize: 10, color: Colors.grey.shade500)),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Text(
                        final_list[3],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffd17842),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(color: Color(0xff141921), borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.grey.shade800),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "single coffe cup   =",
                        style: TextStyle(fontSize: 20, color: Color(0xffd17842)),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .2,
                      ),
                      Text(
                        final_list[3],
                        style: TextStyle(fontSize: 20, color: Color(0xffd17842)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Total Coffies       =",
                        style: GoogleFonts.nunito(fontSize: 20, color: Colors.blue),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .2,
                      ),
                      Text(
                        "X " + 2.toString(),
                        style: GoogleFonts.nunito(fontSize: 20, color: Colors.blue),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Total Bill           =", style: GoogleFonts.nunito(fontSize: 20, color: Colors.red)),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .2,
                      ),
                      Text(
                        "\$ " + (count.toDouble() * price).toString(),
                        style: GoogleFonts.nunito(fontSize: 20, color: Colors.red, fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .08,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              height: 50,
              minWidth: 200,
              // ==================================================
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => MyHomePage(title: "Mobin Coffee Shop")));
                createUser();
              },
              color: Color(0xffd17842),
              child: Text(
                "Done",
                style: GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      )),
    );
  }

  Future createUser() async {
    final docUser = FirebaseFirestore.instance.collection('users').doc("orders");
    final json = {'coffeeType': coffeType, 'coffeeimg': final_list[0], 'Total_bill': count * final_list[3]};
    await docUser.set(json);
  }
}
