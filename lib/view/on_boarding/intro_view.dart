import 'package:flutter/material.dart';
import 'package:livreat/common/color_extension.dart';
import 'package:livreat/common_widget/round_button.dart';
import 'package:livreat/view/main_tab/main_tab_view.dart';

class IntroView extends StatefulWidget {
  const IntroView({super.key});

  @override
  State<IntroView> createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  int selectPage = 0;
  PageController controller = PageController();

  List pageArr = [
    {
      "title": "Trouvez les plats que vous aimez",
      "subtitle":
          "Découvrez les meilleurs plats de plus de 1 000\nrestaurants et une livraison rapide à votre\nporte",
      "image": "assets/img/on_boarding_1.png",
    },
    {
      "title": "Livraison rapide",
      "subtitle":
          "Livraison rapide de plats à votre domicile, bureau\noù que vous soyez",
      "image": "assets/img/on_boarding_2.png",
    },
    {
      "title": "Suivi en direct",
      "subtitle":
          "Suivi en temps réel de votre commande sur l'application\nune fois que vous avez passé la commande",
      "image": "assets/img/on_boarding_3.png",
    },
  ];

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      setState(() {
        selectPage = controller.page?.round() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            controller: controller,
            itemCount: pageArr.length,
            itemBuilder: ((context, index) {
              var pObj = pageArr[index] as Map? ?? {};
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: media.width,
                    height: media.width,
                    alignment: Alignment.center,
                    child: Image.asset(
                      pObj["image"].toString(),
                      width: media.width * 0.65,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: media.width * 0.2,
                  ),
                  Text(
                    pObj["title"].toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Tcolor.primaryText,
                        fontSize: 28,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: media.width * 0.05,
                  ),
                  Text(
                    pObj["subtitle"].toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Tcolor.secondaryText,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: media.width * 0.20,
                  ),
                ],
              );
            }),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: media.height * 0.6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: pageArr.map((e) {
                  var index = pageArr.indexOf(e);

                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    height: 6,
                    width: 6,
                    decoration: BoxDecoration(
                        color: index == selectPage
                            ? Tcolor.primary
                            : Tcolor.placeholder,
                        borderRadius: BorderRadius.circular(4)),
                  );
                }).toList(),
              ),
              SizedBox(
                height: media.height * 0.28,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: RoundButton(
                    title: "Suivant",
                    onPressed: () {
                      if (selectPage >= 2) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainTabView()));
                      } else {
                        // Écran suivant

                        setState(() {
                          selectPage = selectPage + 1;
                          controller.animateToPage(selectPage,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.bounceInOut);
                        });
                      }
                    }),
              ),
            ],
          )
        ],
      ),
    );
  }
}
