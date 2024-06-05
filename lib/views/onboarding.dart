import 'package:flutter/material.dart';
import 'package:maos_carakan/utils/colors.dart';

List onboardingList = [
  {
    'images': "assets/images/img-onboarding1.png",
    'title': "Belajar Aksara Jawa Cepat dan Mudah!",
    'desc':
        "Pakai metode belajar interaktif kami untuk mengenal, membaca, dan memahami Aksara Jawa dengan cara yang lebih seru",
  },
  {
    'images': "assets/images/img-onboarding2.png",
    'title': "Berlatihlah dan Uji Kemampuanmu!",
    'desc':
        "Dengan berbagai latihan dan kuis, kamu bisa menguji seberapa jauh kamu telah belajar dan memahami Aksara Jawa",
  },
  {
    'images': "assets/images/img-onboarding3.png",
    'title': "Apakah Kamu Sudah Siap Belajar?",
    'desc':
        "Bergabunglah sekarang dan jadilah bagian dari komunitas pelajar Aksara Jawa",
  },
];

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  print(value.toString());
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: onboardingList.length,
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/img-onboarding${i + 1}.png'),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 16,
                                bottom: 16,
                                left: 20,
                                right: 20,
                              ),
                              child: Text(
                                onboardingList[i]['title'],
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
                                left: 20,
                                right: 20,
                              ),
                              child: Text(
                                onboardingList[i]['desc'],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "PoppinsLight",
                                    fontSize: 14,
                                    color: secondaryColor),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: (16)),
                child: Wrap(
                  spacing: 8,
                  children: [
                    AnimatedContainer(
                      duration: Duration(milliseconds: 120),
                      curve: Curves.easeInOut,
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      width: currentPage == 0 ? 24 : 8,
                      height: 8,
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 120),
                      curve: Curves.easeInOut,
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      width: currentPage == 1 ? 24 : 8,
                      height: 8,
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 120),
                      curve: Curves.easeInOut,
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      width: currentPage == 2 ? 24 : 8,
                      height: 8,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16, left: 20, right: 20),
                child: GestureDetector(
                  onTap: () {
                    _pageController.animateToPage(
                      currentPage + 1,
                      duration: const Duration(milliseconds: 120),
                      curve: Curves.easeInOut,
                    );
                    print(currentPage == 2 ? "Mulai Sekarang!" : "Lanjutkan");
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      currentPage == 2 ? "Mulai Sekarang!" : "Lanjutkan",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: primaryColor,
                          fontFamily: "PoppinsSemibold",
                          fontSize: 14),
                    ),
                  ),
                ),
              ),
              currentPage == 2
                  ? SizedBox(
                      height: 66,
                    )
                  : Padding(
                      padding: const EdgeInsets.only(
                          bottom: 20, left: 20, right: 20),
                      child: GestureDetector(
                        onTap: () {
                          _pageController.animateToPage(
                            2,
                            duration: const Duration(milliseconds: 120),
                            curve: Curves.easeInOut,
                          );
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
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
