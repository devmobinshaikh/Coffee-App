import 'package:coffe_ui/util/Coffe_Details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeTile extends StatelessWidget {
  const CoffeTile(
      {super.key,
      required this.imagePath,
      required this.CoffeeName,
      required this.CoffeeDesc,
      required this.CoffeePrice,
      required this.clicked});
  final String imagePath;
  final String CoffeeName;
  final String CoffeeDesc;
  final String CoffeePrice;
  final VoidCallback clicked;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0, left: 20),
      child: InkWell(
        onTap: clicked,
        child: Container(
            width: MediaQuery.of(context).size.width * .4,
            height: MediaQuery.of(context).size.height * .4,
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
                        child: Image.asset(imagePath, width: 200, height: 120, fit: BoxFit.fill),
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
                        CoffeeName,
                        style: GoogleFonts.nunito(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 2),
                      Text(
                        CoffeeDesc,
                        style: GoogleFonts.concertOne(fontSize: 10, height: 1, color: Colors.grey.shade500),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18, left: 18, top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        CoffeePrice,
                        style: GoogleFonts.nunito(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Container(
                          decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(4)),
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
  }
}
