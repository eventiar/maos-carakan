import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:maos_carakan/utils/colors.dart';
import 'package:maos_carakan/views/welcomeView.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondaryColor,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                  builder: (BuildContext context) => const WelcomeView())),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 16,
                  ),
                  child: Text(
                    "Masuk",
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
                  ),
                  child: Text(
                    "Masukkan username atau Email dan kata sandi anda untuk melanjutkan.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: "PoppinsLight",
                        fontSize: 16,
                        color: primaryColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 16,
                  ),
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
                        color: secondaryColor.withOpacity(0.5),
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                        color: primaryColor,
                      )),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Text(
                          'atau',
                          style: TextStyle(
                              color: primaryColor,
                              fontFamily: "PoppinssemiBold"),
                        ),
                      ),
                      Expanded(
                          child: Divider(
                        color: primaryColor,
                      )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 16,
                  ),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/icon-google.png',
                            width: 16,
                            height: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(
                              'Masuk dengan Google',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: primaryColor,
                                  fontFamily: "PoppinsSemibold",
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Belum punya akun? ",
                  style: TextStyle(
                      fontFamily: "PoppinsLight",
                      fontSize: 16,
                      color: primaryColor),
                ),
                Text(
                  "Buat Sekarang",
                  style: TextStyle(
                      fontFamily: "PoppinsSemibold",
                      fontSize: 16,
                      color: primaryColor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
