import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:unicons/unicons.dart';

import '../styles/themes.dart';

final List<String> movies = [
  "assets/images/movies/Soul.png",
  "assets/images/movies/Couteaux.png",
  "assets/images/movies/Le-Loup-de-Wall-Street.png",
  "assets/images/movies/Pierre-Lapin-2.png",
  "assets/images/movies/Godzilla-vs-Kong.png",
  "assets/images/movies/Interstellar.png",
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          UniconsLine.angle_left_b,
          color: Color(0xFF828282),
        ),
        title: Text(
          AppTheme.appName,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(UniconsLine.search, color: Color(0xFF828282)),
            onPressed: () {},
          ),
          IconButton(
            icon: const Image(
              image: AssetImage('assets/images/user-avatar.png'),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Pour demain",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const Gap(16),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.60,
                ),
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => Navigator.pushNamed(context, '/movie-details'),
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(movies[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
