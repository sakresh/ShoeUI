import 'package:shoe/export.dart';

class shopCard extends StatelessWidget {

  final String image;
  final String name;

  const shopCard({required this.name ,required this.image ,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(40)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(image, height: 130,),
            Padding(
              padding: const EdgeInsets.only(left: 19, right: 19, bottom: 10),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(name,style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                    Icon(FontAwesomeIcons.heart, color: Colors.orange,)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
