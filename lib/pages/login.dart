import 'package:flutter/material.dart';
import 'package:login_youtobe/pages/register.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFEFEFF),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60, bottom: 40),
                    child: Text(
                      "Welcome back! Glad\nTo see you, Agian!",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 30),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    width: MediaQuery.sizeOf(context).width,
                    child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFFF6F9F8),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: const Color(0xFF6A707C)
                                        .withOpacity(0.5)),
                                borderRadius: BorderRadius.circular(10)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: const Color(0xFF6A707C)
                                        .withOpacity(0.3))),
                            hintText: "Enter your email",
                            hintStyle: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontSize: 16))),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFFF6F9F8),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: const Color(0xFF6A707C)
                                        .withOpacity(0.2)),
                                borderRadius: BorderRadius.circular(10)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: const Color(0xFF6A707C)
                                        .withOpacity(0.3))),
                            hintText: "Enter your Password",
                            hintStyle: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontSize: 16))),
                  ),
                  const SizedBox(height: 15),
                  const Row(children: [
                    Spacer(),
                    InkWell(
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    width: MediaQuery.sizeOf(context).width,
                    height: 55,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: const Color(0xFF1E232C)),
                        onPressed: () {},
                        child: Text(
                          "Login",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                        )),
                  ),
                  const SizedBox(height: 22),
                  Row(children: [
                    Expanded(
                      child: Container(
                          height: 1,
                          color: const Color(0xFF6A707C).withOpacity(0.3)),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text("Or Login  with",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 14,
                                    color: const Color(0xFF6A707C)))),
                    Expanded(
                      child: Container(
                          height: 1,
                          color: const Color(0xFF6A707C).withOpacity(0.3)),
                    )
                  ]),
                  const SizedBox(height: 15),
                  Row(children: [
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color:
                                  const Color((0xFF6A707C)).withOpacity(0.2))),
                      height: 55,
                      child: Center(
                          child: Image.asset(
                        "assets/apple.png",
                        width: 30,
                        height: 30,
                      )),
                    )),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color:
                                  const Color((0xFF6A707C)).withOpacity(0.2))),
                      height: 55,
                      child: Center(
                          child: Image.asset(
                        "assets/google.png",
                        width: 30,
                        height: 30,
                      )),
                    )),
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color:
                                  const Color((0xFF6A707C)).withOpacity(0.2))),
                      height: 55,
                      child: Center(
                        child: Image.asset(
                          "assets/facebook.png",
                          width: 30,
                          height: 30,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ))
                  ])
                ]),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontSize: 16),
                        ),
                        SizedBox(width: 5),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterPage()));
                          },
                          child: Text(
                            "Register Now",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    fontSize: 16, color: Color(0xFF35C2C1)),
                          ),
                        )
                      ]),
                ),
              ],
            ),
          ),
        ));
  }
}
