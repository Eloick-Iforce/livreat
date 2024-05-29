import 'package:flutter/material.dart';
import 'package:livreat/common/color_extension.dart';
import 'package:livreat/common_widget/round_button.dart';

class NewPasswordView extends StatefulWidget {
  const NewPasswordView({Key? key}) : super(key: key);

  @override
  State<NewPasswordView> createState() => _NewPasswordViewState();
}

class _NewPasswordViewState extends State<NewPasswordView> {
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();

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
                "Nouveau mot de passe",
                style: TextStyle(
                    color: Tcolor.primaryText,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Entre votre nouveau mot de passe",
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
                  controller: txtConfirmPassword,
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
              RoundButton(
                title: "Changer le mot de passe",
                onPressed: () {
                  // Ajoutez ici la logique pour réinitialiser le mot de passe
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
