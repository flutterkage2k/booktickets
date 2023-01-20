import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHight(20)),
        children: [
          Gap(AppLayout.getHight(40)),
          Text(
            "What are\nyou looking for?",
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          Gap(AppLayout.getHight(20)),
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              child: Row(
                children: [
                  /*
                  airline tickes
                   */
                  Container(
                    width: size.width * .44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHight(7)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(AppLayout.getHight(50)),
                      ),
                      color: Colors.white,
                    ),
                    child: Center(child: Text('Airline tickets')),
                  ),
                  /*
                  hotels
                   */
                  Container(
                    width: size.width * .44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHight(7)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(AppLayout.getHight(50)),
                        ),
                        color: Colors.transparent),
                    child: Center(child: Text('Hotels')),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHight(50),
                  ),
                  color: const Color(0xfff4f6fd)),
            ),
          ),
          Container(
            child: Row(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
