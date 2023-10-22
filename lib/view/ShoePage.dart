import 'package:shoe/export.dart';

final _logo = Get.put(Logos());

class shoePage extends StatelessWidget {
  const shoePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height*1,
          width: MediaQuery.of(context).size.width*1,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*.45,
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200), bottomRight: Radius.circular(400))
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
