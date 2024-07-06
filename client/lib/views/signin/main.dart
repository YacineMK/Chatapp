import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/images/bg.png"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Color(0xFF111B21), BlendMode.color),
            opacity: 0.12,
          ),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Center(
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: constraints.maxWidth * 0.8,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Signin Page",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(height: 32),
                      const SizedBox(
                        width: double.infinity,
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: 'Email',
                            labelText: "Email",
                            labelStyle: TextStyle(color: Color(0xffffffff)),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white60),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white60),
                            ),
                            focusColor: Color(0xffffffff),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      const SizedBox(
                        width: double.infinity,
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: 'Username',
                            labelText: "Username",
                            labelStyle: TextStyle(color: Color(0xffffffff)),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white60),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white60),
                            ),
                            focusColor: Color(0xffffffff),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const SizedBox(
                        width: double.infinity,
                        child: TextField(
                          obscureText: true,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: 'Password',
                            labelText: "Password",
                            labelStyle: TextStyle(color: Color(0xffffffff)),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white60),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white60),
                            ),
                            focusColor: Color(0xffffffff),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      GestureDetector(
                        onTap: () => {Navigator.pushNamed(context, "/login")},
                        child: const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "you dont have account ?",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white24,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF00A884),
                            foregroundColor: const Color(0xFF111B21),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 0,
                          ),
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
