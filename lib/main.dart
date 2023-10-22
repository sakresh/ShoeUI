import 'package:shoe/export.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: homePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
