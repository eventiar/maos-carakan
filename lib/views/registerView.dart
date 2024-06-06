import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:maos_carakan/utils/colors.dart';
import 'package:maos_carakan/views/loginView.dart';
import 'package:maos_carakan/views/welcomeView.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool isHide = true;
  bool isReHide = true;

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();

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
                      "Buat Akun",
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
                      "Masukkan data diri anda untuk mengakses aplikasi.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: "PoppinsLight",
                          fontSize: 16,
                          color: primaryColor),
                    ),
                  ),
                  Text(
                    "Username",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: "Poppinssemibold",
                        fontSize: 16,
                        color: primaryColor),
                  ),
                  TextFormField(
                    onChanged: (value) => setState(() {}),
                    controller: usernameController,
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
                      hintText: "Masukan username anda",
                      hintStyle: TextStyle(
                          color: primaryColor.withOpacity(0.3),
                          fontFamily: 'poppinslight',
                          fontSize: 16),
                      filled: true,
                      fillColor: variantWhiteColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      "Email",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: "Poppinssemibold",
                          fontSize: 16,
                          color: primaryColor),
                    ),
                  ),
                  TextFormField(
                    onChanged: (value) => setState(() {}),
                    controller: emailController,
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
                      hintText: "Masukan email anda",
                      hintStyle: TextStyle(
                          color: primaryColor.withOpacity(0.3),
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
                          isHide ? Iconsax.eye_slash5 : Iconsax.eye,
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
                          color: primaryColor.withOpacity(0.3),
                          fontFamily: 'poppinslight',
                          fontSize: 16),
                      filled: true,
                      fillColor: variantWhiteColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      "Ulangi Password",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: "Poppinssemibold",
                          fontSize: 16,
                          color: primaryColor),
                    ),
                  ),
                  TextFormField(
                    onChanged: (value) => setState(() {}),
                    controller: repasswordController,
                    obscureText: isReHide,
                    style: TextStyle(
                      color: primaryColor,
                      fontFamily: 'poppinslight',
                      fontSize: 16,
                    ),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          isReHide = !isReHide;
                          setState(() {});
                        },
                        icon: Icon(
                          isReHide ? Iconsax.eye_slash5 : Iconsax.eye,
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
                      hintText: "Masukan ulang password anda",
                      hintStyle: TextStyle(
                          color: primaryColor.withOpacity(0.3),
                          fontFamily: 'poppinslight',
                          fontSize: 16),
                      filled: true,
                      fillColor: variantWhiteColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32),
                    child: GestureDetector(
                      onTap: () {
                        if (usernameController.text != "" &&
                            emailController.text != "" &&
                            passwordController.text != "" &&
                            repasswordController.text != "") {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const LoginView()));
                        } else {
                          print('Silahakan Isi Data');
                        }
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: usernameController.text != "" &&
                                  emailController.text != "" &&
                                  passwordController.text != "" &&
                                  repasswordController.text != ""
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
                          'Buat Akun',
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
                    "Sudah punya akun? ",
                    style: TextStyle(
                        fontFamily: "PoppinsLight",
                        fontSize: 16,
                        color: primaryColor),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => const LoginView(),
                      ),
                    ),
                    child: Text(
                      "Masuk Sekarang",
                      style: TextStyle(
                          fontFamily: "PoppinsSemibold",
                          fontSize: 16,
                          color: primaryColor),
                    ),
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
