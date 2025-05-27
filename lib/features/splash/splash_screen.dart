import 'package:firebase_auth/firebase_auth.dart';
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
    await Future.delayed(const Duration(seconds: 4));
    if (!mounted) return;

    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      _router.goNamed('navbar', pathParameters: {'pageIndex': '0'});
    } else {
      _router.goNamed('login');
    }
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


