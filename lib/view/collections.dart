import 'package:shoe/export.dart';

final _logo = Get.put(Logos());

class collectionPage extends StatefulWidget {
  const collectionPage({super.key});

  @override
  State<collectionPage> createState() => _collectionPageState();
}

class _collectionPageState extends State<collectionPage> {
  final String userName = 'User';

  final primaryColor = 0xFFFFD8A6;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/user.jpg'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Hi, ${userName}',
                        style: GoogleFonts.montserrat(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Color(primaryColor),
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(FontAwesomeIcons.magnifyingGlass),
                  ),
                ],
              ),
            ),
            Container(
              // color: Color(primaryColor),
              height: 230,
              width: MediaQuery.of(context).size.width * 1,
              child: Padding(
                padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New Collections',
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyCard(
                          height: 160,
                          width: 160,
                          image: 'assets/shoe_green.jpg',
                          price: '\$150',
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MyCard(
                                  height: 80,
                                  width: 200,
                                  image: 'assets/shoe_blue.jpg',
                                  price: '\$100',
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    MyCard(
                                      height: 60,
                                      width: 150,
                                      image: 'assets/shoe_white.jpg',
                                      price: '\$250',
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      height: 60,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: GestureDetector(
                                          child: Icon(
                                        Iconsax.arrow_right,
                                        size: 40,
                                      )),
                                    )
                                  ],
                                )
                              ]),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Choose Category',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  Text(
                    'See more',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 15),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Container(
                  height: 40,
                  child: Expanded(
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: _logo.logo.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            categoryCard(image: _logo.logo[index])),
                  )),
            ),
            Expanded(
              child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: _logo.photos.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) => GestureDetector(
                          child: GestureDetector(
                        onTap: () {
                          Get.to(shoePage(index: index,));
                        },
                        child: Hero(
                          tag: index,
                          child: shopCard(
                            image: _logo.photos[index],
                            name: _logo.names[index],
                          ),
                        ),
                      ))),
            )
          ],
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
