import 'package:flutter/material.dart';
import 'package:sinica/helpers/constants.dart';
import 'package:sinica/helpers/size_config.dart';

import 'components/delivery_time.dart';
import 'components/open_title.dart';
import 'components/search_text_field.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedItems = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedItems = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar(),
      body: Column(
        children: [
          openTitle("Добавить адрес доставки"),
          Expanded(
              child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: getProportionateScreenHeight(20),
                            left: getProportionateScreenWidth(16),
                            right: getProportionateScreenWidth(16)),
                        child: Column(
                          children: [
                            deliveryTime(),
                            SizedBox(
                              height: getProportionateScreenHeight(18),
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(36),
                              width: getProportionateScreenWidth(361),
                              child: searchTextField(),
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(16),
                            ),
                            Container(
                                height: 60,
                                width: 361,
                                decoration: BoxDecoration(
                                    color: kIconColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: getProportionateScreenWidth(16),
                                      ),
                                      const Image(image: AssetImage("assets/images/discount.png")),
                                      SizedBox(
                                        width: getProportionateScreenWidth(4),
                                      ),
                                      const Text(
                                        "Скидки до 20% на снеки",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width: getProportionateScreenWidth(57),
                                      ),
                                      const CircleAvatar(
                                          radius: 20,
                                          backgroundColor: kIconColor,
                                          child: Icon(
                                              Icons.arrow_forward_ios_sharp,
                                              color: kTextColor)),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      )
                    ],
                  )))
        ],
      ),
    );
  }

  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _selectedItems,
      onTap: _onItemTapped,
      selectedIconTheme: const IconThemeData(color: kPrimaryColor, size: 30),
      unselectedIconTheme: const IconThemeData(color: Colors.white, size: 30),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.apps_rounded,
          ),
          label: 'Главная',
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
            ),
            label: 'Избранное'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
            ),
            label: 'Корзина'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_outlined,
            ),
            label: 'Профиль'),
      ],
    );
  }
}
