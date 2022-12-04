import 'package:coffe_ui/util/Coffe_Details.dart';
import 'package:coffe_ui/util/Coffe_Tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../util/Data_Lists.dart';
import '../util/coffe_type.dart';
import '../util/special_coffee.dart';

class sacffold_page extends StatefulWidget {
  const sacffold_page({
    super.key,
  });

  @override
  State<sacffold_page> createState() => _sacffold_pageState();
}

class _sacffold_pageState extends State<sacffold_page> {
  List TempData = banner;
  void coffeTypeSelected(int index) {
    String type = coffeType[index][0];
    // TempData.clear();
    if (type == 'All') {
      TempData = banner;
    } else if (type == "Cappucinno") {
      TempData = Cappucinno;
    } else if (type == "Latte") {
      TempData = Latte;
    } else if (type == "Americano") {
      TempData = Americano;
    } else if (type == "Cappucinno") {
      TempData = Cappucinno;
    } else if (type == "Espresso") {
      TempData = Espresso;
    } else if (type == "Mocha") {
      TempData = Mocha;
    } else {
      TempData = MilkShake;
    }
    setState(() {
      for (int i = 0; i < coffeType.length; i++) {
        coffeType[i][1] = false;
      }
      coffeType[index][1] = true;
    });
  }

  List suggestions = banner;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

// ================= controller for textfield ======
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //   body: Center(child: Text("mobin")),
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        SizedBox(
          height: 20,
        ), // =================== Title=========
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text("Find the best coffe for you", style: GoogleFonts.gideonRoman(fontSize: 45, letterSpacing: 5)),
        ),
        SizedBox(
          height: 40,
        ),
        // ============= search bar==========

        // ================ coffe type listview====
        Container(
          height: 50,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return CoffeType(
                  coffeType: coffeType[index][0],
                  isSelected: coffeType[index][1],
                  onTap: () {
                    coffeTypeSelected(index);
                  });
            },
            scrollDirection: Axis.horizontal,
            itemCount: coffeType.length,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        // ================= cofeetile ==========
        Container(
          height: MediaQuery.of(context).size.height * .35,
          width: MediaQuery.of(context).size.width * .9,
          child: ListView.builder(
            itemCount: TempData.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return CoffeTile(
                  imagePath: TempData[index][0],
                  CoffeeName: TempData[index][1],
                  CoffeeDesc: TempData[index][2],
                  CoffeePrice: TempData[index][3],
                  clicked: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CoffeeDetailsPage(
                                data: TempData,
                                index: index,
                              )),
                    );
                  });
            }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 4),
          child: Text(
            "Special for you",
            style: TextStyle(color: Colors.orange, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        special_coffee()
      ],
    );
  }
}
