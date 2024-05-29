import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:livreat/common/color_extension.dart';
import 'package:livreat/common_widget/tab_button.dart';
import 'package:livreat/view/home/home_view.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({Key? key}) : super(key: key);

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selctTab = 2;
  PageStorageBucket storageBucket = PageStorageBucket();
  Widget selectPageView = HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: storageBucket, child: selectPageView),
      backgroundColor: const Color(0xfff5f5f5),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: SizedBox(
        width: 60,
        height: 80,
        child: FloatingActionButton(
          onPressed: () {
            if (selctTab != 2) {
              selctTab = 2;
              selectPageView = const HomeView();
            }
            if (mounted) {
              setState(() {});
            }
          },
          shape: const CircleBorder(),
          backgroundColor: selctTab == 2 ? Tcolor.primary : Tcolor.placeholder,
          child: FaIcon(FontAwesomeIcons.house, color: Tcolor.white),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: Tcolor.white,
        shadowColor: Colors.black,
        elevation: 1,
        notchMargin: 12,
        height: 80,
        shape: const CircularNotchedRectangle(),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabButton(
                  title: "Menu",
                  icon: FontAwesomeIcons.bars,
                  onTap: () {
                    if (selctTab != 0) {
                      selctTab = 0;
                      selectPageView = Container();
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  isSelected: selctTab == 0),
              TabButton(
                  title: "Offres",
                  icon: FontAwesomeIcons.moneyBill,
                  onTap: () {
                    if (selctTab != 1) {
                      selctTab = 1;
                      selectPageView = Container();
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  isSelected: selctTab == 1),
              const SizedBox(
                width: 40,
                height: 40,
              ),
              TabButton(
                  title: "Profile",
                  icon: FontAwesomeIcons.user,
                  onTap: () {
                    if (selctTab != 3) {
                      selctTab = 3;
                      selectPageView = Container();
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  isSelected: selctTab == 3),
              TabButton(
                  title: "Plus",
                  icon: FontAwesomeIcons.bomb,
                  onTap: () {
                    if (selctTab != 4) {
                      selctTab = 4;
                      selectPageView = Container();
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  isSelected: selctTab == 4),
            ],
          ),
        ),
      ),
    );
  }
}
