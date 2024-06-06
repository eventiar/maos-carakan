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
  bool isHide = true;

  TextEditingController usernameEmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  Text(
                    "Username atau Email",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: "Poppinssemibold",
                        fontSize: 16,
                        color: primaryColor),
                  ),
                  TextFormField(
                    onChanged: (value) => setState(() {}),
                    controller: usernameEmailController,
                    style: TextStyle(
                      color: primaryColor,
                      fontFamily: 'poppinslight',
                      fontSize: 16,
                    ),
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primaryColor, width: 2),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      hintText: "Masukan username atau email anda",
                      hintStyle: TextStyle(
                          color: primaryColor,
                          fontFamily: 'poppinslight',
                          fontSize: 16),
                      filled: true,
                      fillColor: variantWhiteColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      "Password",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: "Poppinssemibold",
                          fontSize: 16,
                          color: primaryColor),
                    ),
                  ),
                  TextFormField(
                    onChanged: (value) => setState(() {}),
                    controller: passwordController,
                    obscureText: isHide,
                    style: TextStyle(
                      color: primaryColor,
                      fontFamily: 'poppinslight',
                      fontSize: 16,
                    ),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          isHide = !isHide;
                          setState(() {});
                        },
                        icon: Icon(
                          isHide ? Iconsax.eye_slash5 : Iconsax.eye4,
                          color: primaryColor,
                          size: 24,
                        ),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primaryColor, width: 2),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      hintText: "Masukan password anda",
                      hintStyle: TextStyle(
                          color: primaryColor,
                          fontFamily: 'poppinslight',
                          fontSize: 16),
                      filled: true,
                      fillColor: variantWhiteColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32),
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
                          color: usernameEmailController.text != "" &&
                                  passwordController.text != ""
                              ? secondaryColor
                              : secondaryColor.withOpacity(0.25),
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
      ),
    );
  }
}
