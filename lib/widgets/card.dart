import 'package:shoe/export.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {

  final double height;
  final double width;
  final String image;
  final String price;

  MyCard({required this.height, required this.width, required this.image, required this.price, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 20,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.grey[500]?.withOpacity(0.7),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  price,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

