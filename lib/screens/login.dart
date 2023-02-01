import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osar_pasar/controller/auth/login_controller.dart';

import 'package:osar_pasar/screens/register.dart';

import '../utils/validators.dart';
import '../widgets/custom_text_field.dart';

class Login extends StatelessWidget {
  static const routeName = "/loginScreen";
  Login({super.key});

  final c = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff00183F),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text("Email Address"),
                      ),
                      CustomTextField(
                        controller: c.emailTextController,
                        hint: 'Enter your email address',
                        textInputType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        validator: Validators.checkEmailField,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text("Password"),
                      ),
                      CustomTextField(
                        controller: c.passwordTextController,
                        hint: 'Enter your password',
                        textInputType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                        validator: Validators.checkPasswordField,
                        obscure: true,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(color: Color(0xff00183F)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff00183F),
                          minimumSize: const Size.fromHeight(50),
                        ),
                        onPressed: c.onSubmit,
                        child: const Text("Login"),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => Register(),
                          //   ),
                          // );
                          Get.to(() => Register());
                        },
                        child: const Text(
                          "Register",
                          style: TextStyle(
                            color: Color(0xff00183F),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
