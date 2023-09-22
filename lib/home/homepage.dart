import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sinica/helpers/constants.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          vertical: mediaQuery.size.height * 0.07,
          // Adjust this value to control the top padding
          horizontal: mediaQuery.size.width *
              0.001, // Adjust this value to control the left and right padding
        ),
        child: const Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: CircleAvatar(
                  backgroundColor: kPrimaryColor,
                  radius: 18,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 32,
                  ),
                )),
                Text("Добавить адрес доставки",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: CircleAvatar(
                  backgroundColor: kPrimaryColor,
                  radius: 24,
                  child: Icon(
                    Icons.phone,
                    size: 32,
                    color: Colors.white,
                  ),
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
