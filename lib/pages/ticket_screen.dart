import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:unicons/unicons.dart';

import '../styles/colors.dart';
import '../widgets/custom_app_bar.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Tickets'),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.18,
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const <BoxShadow>[
                BoxShadow(
                  color: Color(0xFFDFDFDF),
                  blurRadius: 16.0,
                  offset: Offset(0.15, 2.75),
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: const Image(
                      image: AssetImage(
                        'assets/images/movies/Couteaux.png',
                      ),
                    ),
                  ),
                  const Gap(8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "A couteaux tirés",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Gap(8),
                      Row(
                        children: const [
                          Icon(
                            UniconsLine.calendar_alt,
                            color: AppColors.appGrey,
                            size: 16,
                          ),
                          Gap(4),
                          Text(
                            "12 Aout",
                            style: TextStyle(color: AppColors.appGrey),
                          )
                        ],
                      ),
                      const Gap(8),
                      const Text(
                        "N* siege : 21",
                        style: TextStyle(color: AppColors.appGrey),
                      ),
                      const Gap(8),
                      const Text(
                        "€ 9,90",
                        style: TextStyle(
                          color: AppColors.dangerColor,
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
