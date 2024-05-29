import 'package:flutter/material.dart';
import 'package:livreat/common/color_extension.dart';
import 'package:livreat/common_widget/round_button.dart';
import 'package:livreat/view/login/login_view.dart';
import 'package:livreat/view/on_boarding/intro_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtAddress = TextEditingController();
  TextEditingController txtPhoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 64,
              ),
              Text(
                "Inscription",
                style: TextStyle(
                    color: Tcolor.primaryText,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Remplissez les champs pour vous inscrire",
                style: TextStyle(
                    color: Tcolor.secondaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: media.width * 0.1,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Tcolor.textfield,
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  autocorrect: false,
                  controller: txtEmail,
                  decoration: const InputDecoration(
                    hintText: "Email",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Tcolor.textfield,
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  autocorrect: false,
                  controller: txtPassword,
                  decoration: const InputDecoration(
                    hintText: "Mot de passe",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Tcolor.textfield,
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  autocorrect: false,
                  controller: txtAddress,
                  decoration: const InputDecoration(
                    hintText: "Adresse",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Tcolor.textfield,
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  autocorrect: false,
                  controller: txtPhoneNumber,
                  decoration: const InputDecoration(
                    hintText: "Numéro de téléphone",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RoundButton(
                  title: "S'inscrire",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const IntroView(),
                      ),
                    );
                  }),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Déjà inscrit ? ",
                    style: TextStyle(
                        color: Tcolor.secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginView()));
                    },
                    child: Text(
                      "Se connecter",
                      style: TextStyle(
                          color: Tcolor.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
