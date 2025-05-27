import 'package:flutter/material.dart';
import 'package:gif/gif.dart';
import 'package:go_router/go_router.dart';
import 'package:toko_kita/utils/constant.dart';
import 'package:toko_kita/utils/theme.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late final GoRouter _router;
  late GifController _gifController;


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _router = GoRouter.of(context);
  }


  @override
  void initState() {
    super.initState();
    _gifController = GifController(vsync: this);
    _checkAuthStatus();
  }




  void _checkAuthStatus() async {
    await Future.delayed(const Duration(seconds: 4)).then((_) async {
      // final token = await getToken(); // Assuming getToken() is a function that retrieves the token

      _router.goNamed('login'); // Navigate to login page after 3 seconds

      // if (token != null) {
      //   _router.goNamed('home'); // Navigate to home page if token exists
      // } else {
      //   _router.goNamed('login'); // Navigate to login page if no token
      // }
    });
  }

  @override
  void dispose() {
   _gifController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: primaryColor,
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Center(
          child: Gif(
            width: 350,
            height: 350,
            image: AssetImage(logoTokoKitaGIF2),
            controller: _gifController,
            onFetchCompleted: () {
              final maxFrame = _gifController.upperBound.toInt();
              _gifController.repeat(
                min: 0,
                max: maxFrame.toDouble(),
                period: const Duration(seconds: 4),
              );
            },

          )



        ),
      ),
    );
  }
}


