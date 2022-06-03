import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:unicons/unicons.dart';

class ChoosePaymentScreen extends StatelessWidget {
  const ChoosePaymentScreen({Key? key}) : super(key: key);

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
          "Paiement",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 72),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  "Chosissez un mode de paiement",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const Gap(24),
            InkWell(
              onTap: () => Navigator.of(context).pushNamed('/payment'),
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                      color: Color(0xFFDFDFDF),
                      blurRadius: 16.0,
                      offset: Offset(0.15, 2.75),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Image(
                        image: AssetImage('assets/icons/mastercard.png'),
                        width: 64,
                      ),
                      Gap(8),
                      Image(
                        image: AssetImage('assets/icons/visa.png'),
                        width: 64,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Gap(32),
            InkWell(
              onTap: () => Navigator.of(context).pushNamed('/payment'),
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                      color: Color(0xFFDFDFDF),
                      blurRadius: 16.0,
                      offset: Offset(0.15, 2.75),
                    )
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.all(32),
                  child: Image(
                    image: AssetImage('assets/icons/paypal.png'),
                    width: 32,
                    height: 80,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
