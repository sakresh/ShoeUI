import 'package:shoe/export.dart';

final _logo = Get.put(Logos());

final primaryColor = 0xFFFFD8A6;

class shoePage extends StatefulWidget {
  final int index;

  const shoePage({required this.index, super.key});


  @override
  State<shoePage> createState() => _shoePageState();
}

class _shoePageState extends State<shoePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .5,
                decoration: const BoxDecoration(
                    color: Color(0xFFFFD8A6),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(200),
                        bottomRight: Radius.circular(400))),
                child: Hero(
                  tag: widget.index,
                  child: Image.asset(_logo.photos[widget.index]),
                ),
              ),
              Text(
                _logo.names[widget.index],
                style: GoogleFonts.poppins(
                    fontSize: 30, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Size: ',
                    style: GoogleFonts.lato(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  MySize(
                    number: '6',
                  ),
                  MySize(
                    number: '7',
                  ),
                  MySize(
                    number: '8',
                  ),
                  MySize(
                    number: '9',
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  """The popularity of Jordans can be attributed to a number of factors, including the brand's history and legacy, distinctive design and style, high-quality construction and materials, exclusivity, and ownership and branding. The Jordan brand has become a cultural icon""",
                  style: GoogleFonts.lato(
                      fontSize: 22, fontWeight: FontWeight.w300),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width*8,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFD8A6),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: Text('BUY NOW', style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 30
                    ),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
