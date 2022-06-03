import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:unicons/unicons.dart';

import '../locator.dart';
import '../services/navigation_service.dart';
import '../styles/colors.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenW = MediaQuery.of(context).size.width;
    final double screenH = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Stack(
                children: [
                  Container(
                    height: screenH * .45,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/movies/Couteaux.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.0),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 32,
                    left: 110,
                    right: 110,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/movies/Couteaux.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: () {},
                            child: const Image(
                              image: AssetImage('assets/icons/play-circle.png'),
                              height: 48,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            shape: BoxShape.circle,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8),
                            child: Icon(UniconsLine.arrow_left),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: screenH * .40,
              left: 0,
              right: 0,
              bottom: 0,
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: InkWell(
                              onTap: () {},
                              child: const Image(
                                image: AssetImage(
                                  'assets/icons/angle-down.png',
                                ),
                                height: 12,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "A couteaux tirés",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    const Spacer(),
                                    const Text(
                                      "4.5",
                                      style: TextStyle(
                                        color: AppColors.appGrey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const Gap(2),
                                    const Text(
                                      "😋",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                                const Gap(8),
                                Row(
                                  children: const [
                                    Icon(
                                      UniconsLine.euro_circle,
                                      color: AppColors.dangerColor,
                                      size: 16,
                                    ),
                                    Gap(4),
                                    Text(
                                      "9,90",
                                      style: TextStyle(
                                        color: AppColors.dangerColor,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Gap(24),
                                    Icon(
                                      UniconsLine.calendar_alt,
                                      color: AppColors.appGrey,
                                      size: 16,
                                    ),
                                    Gap(4),
                                    Text(
                                      "12 Aout - 10h30min",
                                      style:
                                          TextStyle(color: AppColors.appGrey),
                                    )
                                  ],
                                ),
                                const Gap(24),
                                const Text(
                                  "Synopsis :",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Gap(16),
                                const Text(
                                  "Le romancier Harlan Thrombey convie dans son "
                                  "manoir sa famille, aussi excentrique que "
                                  "dysfonctionnelle, pour célébrer son 85e "
                                  "anniversaire. Mais le lendemain matin, "
                                  "le riche patriarche est retrouvé mort la "
                                  "gorge tranchée.",
                                  style: TextStyle(
                                    color: Color(0xFF4F4F4F),
                                    fontSize: 16,
                                  ),
                                ),
                                const Gap(16),
                                const Text(
                                  "Casting",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Gap(16),
                                SizedBox(
                                  height: 56,
                                  child: ListView(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    children: List.generate(
                                      8,
                                      (index) => InkWell(
                                        onTap: () {},
                                        child: _buildActor(index + 1),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  // Positioned(
                  //   top: 0,
                  //   left: 0,
                  //   right: 0,
                  //   bottom: screenH * .05,
                  //   child: SizedBox(
                  //     height: 56,
                  //     child: ElevatedButton(
                  //       onPressed: () {},
                  //       child: const Text(
                  //         'Réserver',
                  //         style: TextStyle(
                  //           color: Colors.white,
                  //           fontWeight: FontWeight.bold,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 72, right: 72, bottom: 16),
        child: ElevatedButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(vertical: 20),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          onPressed: () => sl<NavigationService>().navigateTo('/booking'),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(UniconsLine.shopping_bag, size: 16),
              Gap(8),
              Text(
                'Réserver',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActor(int index) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: CircleAvatar(
        radius: 32,
        backgroundImage: AssetImage('assets/images/actors/actor_$index.png'),
      ),
    );
  }
}
