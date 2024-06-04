import 'package:flutter/material.dart';
import 'package:maos_carakan/utils/colors.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          children: [
            Image.asset('assets/images/img-onboarding1.png'),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                    bottom: 16,
                  ),
                  child: Text(
                    'Belajar Aksara Jawa\nCepat dan Mudah',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "PoppinsSemibold",
                        fontSize: 24,
                        color: secondaryColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 16,
                  ),
                  child: Text(
                    'Pakai metode belajar interaktif kami untuk mengenal, membaca, dan memahami Aksara Jawa dengan cara yang lebih seru',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "PoppinsLight",
                        fontSize: 14,
                        color: secondaryColor),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: GestureDetector(
                    onTap: () {
                      print("Lanjutkan");
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        'Lanjutkan',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: primaryColor,
                            fontFamily: "PoppinsSemibold",
                            fontSize: 14),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("Lewati");
                  },
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
                      'Lewati',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: secondaryColor,
                          fontFamily: "PoppinsSemibold",
                          fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
