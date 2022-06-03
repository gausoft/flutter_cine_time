import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:unicons/unicons.dart';

import '../locator.dart';
import '../services/navigation_service.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16, top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color(0xFFE0E0E0),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      onPressed: () =>
                          sl<NavigationService>().navigateTo('/main'),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        child: Row(
                          children: const [
                            Text(
                              "Passer",
                              style: TextStyle(
                                color: Color(0xFF4F4F4F),
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Icon(
                              UniconsLine.step_forward,
                              color: Color(0xFF4F4F4F),
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Gap(64),
              const Image(
                image: AssetImage('assets/images/yellow-logo.png'),
                width: 128,
              ),
              const Gap(16),
              Text(
                "Se connecter",
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.w900,
                      fontSize: 28,
                    ),
              ),
              const Gap(16),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFFFFFFF),
                    border: Border.all(
                      color: const Color(0xFFF2F2F2),
                      width: 1,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x09000000),
                        blurRadius: 1,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 24,
                      bottom: 16,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              UniconsLine.user,
                              color: Color(0xFF828282),
                            ),
                            hintText: "Email",
                            hintStyle: const TextStyle(
                              color: Color(0xFF9B9B9B),
                            ),
                            fillColor: const Color(0xF3F3F3F3),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 16,
                            ),
                          ),
                        ),
                        const Gap(16),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              UniconsLine.lock_alt,
                              color: Color(0xFF828282),
                            ),
                            hintText: "Mot de passe",
                            hintStyle: const TextStyle(
                              color: Color(0xFF9B9B9B),
                            ),
                            fillColor: const Color(0xF3F3F3F3),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            suffixIcon: const Icon(
                              UniconsLine.eye_slash,
                              color: Color(0xFF828282),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 16,
                            ),
                          ),
                        ),
                        const Gap(24),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                const Color(0xFF000000),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              elevation: MaterialStateProperty.all(0),
                            ),
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 24,
                              ),
                              child: Text(
                                "Se connecter",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                        const Gap(24),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFEEEEEE),
                                ),
                                child: const Image(
                                  image: AssetImage(
                                    'assets/icons/google-icon.png',
                                  ),
                                  width: 24,
                                ),
                              ),
                            ),
                            const Gap(16),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFEEEEEE),
                                ),
                                child: const Image(
                                  image: AssetImage(
                                    'assets/icons/apple-icon.png',
                                  ),
                                  width: 24,
                                ),
                              ),
                            ),
                            const Spacer(),
                            TextButton(
                              onPressed: () => sl<NavigationService>()
                                  .navigateTo('/register'),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.person_add_alt_rounded,
                                    size: 16,
                                    color: Color(0xFF2F80ED),
                                  ),
                                  Gap(8),
                                  Text(
                                    "Créer un compte",
                                    style: TextStyle(
                                      color: Color(0xFF2F80ED),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
