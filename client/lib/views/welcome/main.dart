import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111B21),
      body: Column(
        children: [
          Expanded(
            child: Center(
                child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.08,
              ),
              child: Image.asset(
                'lib/assets/images/circle.png',
                color: const Color(0xFF00A884),
              ),
            )),
          ),
          Expanded(
            child: Column(
              children: [
                const Text(
                  "Welcome to Whatsapp",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      color: Colors.white),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.84,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                          text: "Read our ",
                          style: TextStyle(
                              color: Color(0xFF8696A0),
                              height: 1.5,
                              fontFamily: 'Poppins'),
                          children: [
                            TextSpan(
                                text: "Privacy Policy ",
                                style: TextStyle(
                                    color: Color(0xFF53BDEB),
                                    fontFamily: 'Poppins')),
                            TextSpan(
                              text: ", Tap `Agree And Continue` to accept the ",
                              style: TextStyle(
                                  color: Color(0xFF8696A0),
                                  fontFamily: 'Poppins'),
                            ),
                            TextSpan(
                                text: "Terms Privacy",
                                style: TextStyle(
                                    color: Color(0xFF53BDEB),
                                    fontFamily: 'Poppins'))
                          ]),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                    child: SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: ElevatedButton(
                          onPressed: () =>
                              {Navigator.pushNamed(context, '/login')},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF00A884),
                              foregroundColor: const Color(0xFF111B21),
                              splashFactory: NoSplash.splashFactory,
                              shadowColor: Colors.transparent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          child: const Text(
                            "AGREE AND CONTINUE",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600),
                          )),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
