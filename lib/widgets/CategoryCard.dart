import 'package:shoe/export.dart';

class categoryCard extends StatelessWidget {

  final String image;

  const categoryCard({required this.image ,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Container(
        width: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.black
        ),
        child: Center(
          child: Image.asset(image, height: 25, color: Colors.white,),
        ),
      ),
    );
  }
}
