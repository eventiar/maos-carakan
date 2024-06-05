import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:maos_carakan/views/loginView.dart';
import 'package:maos_carakan/views/onboardingView.dart';

import '../utils/colors.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondaryColor,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                  builder: (BuildContext context) => const OnboardingView())),
          icon: const Icon(
            Iconsax.tag_cross5,
          ),
          iconSize: 24,
          style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.only(left: 20)),
            foregroundColor: MaterialStateProperty.all<Color>(primaryColor),
          ),
        ),
      ),
      backgroundColor: secondaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 16,
                  left: 20,
                  right: 20,
                ),
                child: Text(
                  "Maos Carakan",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "PoppinsSemibold",
                      fontSize: 24,
                      color: primaryColor),
                ),
              ),
              Image.asset('assets/images/img-welcome.png'),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 16,
                  left: 20,
                  right: 20,
                ),
                child: Text(
                  "Selamat Datang!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "PoppinsSemibold",
                      fontSize: 24,
                      color: primaryColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 16,
                  left: 20,
                  right: 20,
                ),
                child: Text(
                  "Buat akun atau masuk untuk melanjutkan",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "PoppinsLight",
                      fontSize: 16,
                      color: primaryColor),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16, left: 20, right: 20),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: secondaryColor, width: 2),
                  boxShadow: [
                    BoxShadow(
                      color: secondaryColor,
                      blurRadius: 0,
                      offset: const Offset(0, 2),
                    )
                  ],
                ),
                child: Text(
                  'Buat Akun',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: secondaryColor,
                      fontFamily: "PoppinsSemibold",
                      fontSize: 16),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
            child: GestureDetector(
              onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (BuildContext context) => const LoginView(),
                ),
              ),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: primaryColor, width: 2),
                  boxShadow: [
                    BoxShadow(
                      color: primaryColor,
                      blurRadius: 0,
                      offset: const Offset(0, 2),
                    )
                  ],
                ),
                child: Text(
                  'Masuk',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: primaryColor,
                      fontFamily: "PoppinsSemibold",
                      fontSize: 16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
