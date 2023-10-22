import 'package:shoe/export.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  final primaryColor = 0xFFFFD8A6;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(primaryColor), Colors.redAccent]),
            // color: Colors.grey[400]
          ),
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Start a',
                  style: GoogleFonts.poppins(
                      fontSize: 50, fontWeight: FontWeight.w500),
                ),
                Text(
                  'new life in',
                  style: GoogleFonts.poppins(
                      fontSize: 50, fontWeight: FontWeight.w500),
                ),
                Text(
                  'the world',
                  style: GoogleFonts.poppins(
                      fontSize: 60, fontWeight: FontWeight.bold),
                ),
                Text(
                  'with us',
                  style: GoogleFonts.poppins(
                      fontSize: 50, fontWeight: FontWeight.w500),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/jordan_home.png',
                        height: 300, width: 400),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: Container(
                            width: 150,
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                  color: Color(primaryColor),
                                  spreadRadius: 2,
                                  blurRadius: 2)
                            ], borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Start',
                                  style: GoogleFonts.poppins(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(FontAwesomeIcons.arrowRight)
                              ],
                            ),
                          ),
                          onTap: () => {
                            Get.to(() => collectionPage(),
                                transition: Transition.rightToLeftWithFade),
                          },
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
