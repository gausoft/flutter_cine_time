import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:unicons/unicons.dart';

import '../styles/colors.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  void _showSuccessModal() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ), //this right here
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Icon(
                  UniconsLine.check_circle,
                  color: AppColors.successColor,
                  size: 96,
                ),
                const Gap(16),
                const SizedBox(
                  width: 100,
                  child: Text(
                    "Paiement réussi !",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Gap(24),
                ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 64,
                      ),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    elevation: MaterialStateProperty.all(0),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/ticket');
                  },
                  child: const Text(
                    "Voir ticket",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Container(
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
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 24,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Image(
                      image: AssetImage('assets/icons/mastercard.png'),
                      width: 48,
                    ),
                    Gap(8),
                    Image(
                      image: AssetImage('assets/icons/visa.png'),
                      width: 48,
                    ),
                  ],
                ),
              ),
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
                        hintText: "Nom propriétaire",
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
                          UniconsLine.credit_card,
                          color: Color(0xFF828282),
                        ),
                        hintText: "Numéro de la carte",
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
                          UniconsLine.calendar_alt,
                          color: Color(0xFF828282),
                        ),
                        hintText: "Date d'expiration",
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
                          UniconsLine.lock_access,
                          color: Color(0xFF828282),
                        ),
                        hintText: "CVV",
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
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: const [
                          Icon(
                            UniconsLine.square_shape,
                            color: Color(0xFF828282),
                            size: 20,
                          ),
                          Gap(8),
                          Text(
                            "Enregistrer cette carte",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF828282),
                            ),
                          ),
                        ],
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
                        onPressed: _showSuccessModal,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 24,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Payer",
                                style: TextStyle(fontSize: 16),
                              ),
                              Gap(8),
                              Icon(UniconsLine.shopping_bag, size: 16),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
