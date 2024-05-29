import 'package:flutter/material.dart';
import 'package:livreat/common/color_extension.dart';
import 'package:livreat/common_widget/round_button.dart';
import 'package:livreat/view/login/login_view.dart';
import 'package:livreat/view/login/sign_up_view.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  "assets/img/logo.png",
                  width: media.width * 0.7,
                  height: media.width * 0.7,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            SizedBox(
              height: media.width * 0.8,
            ),
            Text(
              "Découvrez les meilleurs restaurants autour de vous",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Tcolor.secondaryText,
                  fontSize: 13,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: media.width * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundButton(
                title: "Connexion",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginView()));
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundButton(
                title: "Créer un compte",
                type: RoundButtonType.textPrimary,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpView()));
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
