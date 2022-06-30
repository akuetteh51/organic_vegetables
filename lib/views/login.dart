import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "assets/login.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/logo.png",
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 48,
                    width: 289,
                    child: TextField(
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            labelStyle: TextStyle(color: Colors.grey),
                            labelText: "Enter Email or mobile number",
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent)))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 48,
                    width: 289,
                    child: TextField(
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        labelStyle:
                            TextStyle(color: Colors.grey, overflow: null),
                        labelText: "Enter Password",
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Forget Password?",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xff0D923A),
                        borderRadius: BorderRadius.circular(20)),
                    height: 49,
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "SIGNIN",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Signup with  email/mobile no.",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 50,
                        width: 135,
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            MdiIcons.facebook,
                            color: Colors.white,
                          ),
                          label: Text(
                            "Signin with Facebook",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 50,
                        width: 135,
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            MdiIcons.gmail,
                            color: Colors.white,
                          ),
                          label: Text(
                            "Signin with gmail",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
