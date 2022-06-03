import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:unicons/unicons.dart';

import '../locator.dart';
import '../services/navigation_service.dart';
import '../styles/colors.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            UniconsLine.angle_left_b,
            color: Color(0xFF828282),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Choisir sièges",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: const Image(
                          image: AssetImage(
                            'assets/images/movies/Couteaux.png',
                          ),
                        ),
                      ),
                    ),
                    const Gap(16),
                    Expanded(
                      flex: 3,
                      child: Column(
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
                          const Text(
                            "€ 9,90",
                            style: TextStyle(
                              color: AppColors.dangerColor,
                              fontWeight: FontWeight.w900,
                              fontSize: 16,
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
                                "12 Aout - 10h30min",
                                style: TextStyle(color: AppColors.appGrey),
                              )
                            ],
                          ),
                          //
                          const Gap(8),
                          const Text(
                            "Genre : Thriller, Psycho",
                            style: TextStyle(color: AppColors.appGrey),
                          ),
                          const Gap(8),
                          const Text(
                            "Sous-titre : FR",
                            style: TextStyle(color: AppColors.appGrey),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const Gap(16),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 2,
                              horizontal: 3,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.successColor,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                width: 2.0,
                                color: Colors.black12,
                              ),
                            ),
                            child: const Text(
                              "A1",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Gap(4),
                          const Text("Disponible")
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 2,
                              horizontal: 3,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.accentColor,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                width: 2.0,
                                color: Colors.black12,
                              ),
                            ),
                            child: const Text(
                              "A1",
                              style: TextStyle(
                                color: Color(0xFFF2994A),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Gap(4),
                          const Text("Choisi")
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 2,
                              horizontal: 4,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF2F2F2),
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                width: 2.0,
                                color: Colors.black12,
                              ),
                            ),
                            child: const Text(
                              "    ",
                              style: TextStyle(
                                color: Color(0xFFF2994A),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Gap(4),
                          const Text("Indisponible")
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Gap(16),
          Container(
            height: MediaQuery.of(context).size.height * .5,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 64,
                    right: 64,
                    bottom: 16,
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.all(
                        AppColors.dangerColor,
                      ),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(vertical: 20),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () =>
                        sl<NavigationService>().navigateTo('/choose-payment'),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(UniconsLine.euro, size: 16),
                        Gap(8),
                        Text(
                          '19.80',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Gap(8),
                        Icon(UniconsLine.arrow_right, size: 16),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
