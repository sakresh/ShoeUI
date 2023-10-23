import 'package:shoe/export.dart';

class MySize extends StatelessWidget {

  final String number;

  const MySize({ required this.number, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black
      ),
      child: Center(child: Text(number, style: GoogleFonts.poppins(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: Colors.white
      ),)),
    );
  }
}
