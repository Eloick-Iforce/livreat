import 'package:flutter/material.dart';
import 'package:livreat/common/color_extension.dart';
import 'package:livreat/view/login/welcome_view.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  void initState() {
    super.initState();
    goWelcomePage();
  }

  void goWelcomePage() async {
    await Future.delayed(const Duration(seconds: 1));
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const WelcomeView()));
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: Tcolor.primary,
        child: Center(
          child: Image.asset(
            "assets/img/logo.png",
            width: media.width * 0.7,
            height: media.height * 0.7,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
