import 'package:flutter/material.dart';
import 'package:livreat/common/color_extension.dart';
import 'package:livreat/common_widget/round_button.dart';
import 'package:livreat/view/login/new_password_view.dart';

class LostPasswordView extends StatefulWidget {
  const LostPasswordView({Key? key}) : super(key: key);

  @override
  State<LostPasswordView> createState() => _LostPasswordViewState();
}

class _LostPasswordViewState extends State<LostPasswordView> {
  TextEditingController txtEmail = TextEditingController();

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
                "Mot de passe oublié",
                style: TextStyle(
                    color: Tcolor.primaryText,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Entrez votre email pour réinitialiser votre mot de passe",
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
              RoundButton(
                title: "Réinitialiser le mot de passe",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NewPasswordView()));
                },
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Retour à la ",
                    style: TextStyle(
                        color: Tcolor.secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "page de connexion",
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
