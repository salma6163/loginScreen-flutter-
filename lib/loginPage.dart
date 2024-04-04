import 'package:flutter/material.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  bool rememberUser = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/f4993163a1654e1082b9ca77a38e271a.jpg"),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 5,
          backgroundColor: Color.fromARGB(8, 155, 39, 176),
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(
              child: top(),
            ),
            Positioned(
              bottom: -3,
              child: bottom(),
            ),
            Positioned(bottom: 180, child: remember()),
            Positioned(
              bottom: 100,
              left: 30,
              child: loginButton(),
            ),
            const Positioned(
              bottom: 60,
              left: 152,
              child: Text(
                "Or login with:",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Positioned(bottom: 10, left: 100, child: other_login()),
          ],
        ),
      ),
    );
  }

  Widget remember() {
    return Row(
      children: [
        Row(
          children: [
            Checkbox(
              value: rememberUser,
              onChanged: (value) => setState(() {
                rememberUser = value!;
              }),
            ),
            Text("Remember me                           "),
          ],
        ),
        TextButton(onPressed: () {}, child: Text("I forgot my Password")),
      ],
    );
  }
}

Widget top() {
  return const SizedBox(
    width: 500,
    child: Column(
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Icon(
          Icons.location_on_sharp,
          size: 120,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        Center(
          child: Text(
            "Go Map",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontFamily: "Caveat-VariableFont_wght",
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 40,
            ),
          ),
        )
      ],
    ),
  );
}

Widget bottom() {
  return SizedBox(
    width: 412,
    height: 600,
    child: Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(80),
          topRight: Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(32),
        child: form(),
      ),
    ),
  );
}

Widget form() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "Welcome",
        style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w900,
            color: Color.fromARGB(147, 65, 5, 78),
            shadows: <Shadow>[
              Shadow(
                offset: Offset(0, 2),
                blurRadius: 50,
                color: Color.fromARGB(255, 223, 113, 205),
              ),
            ]),
      ),
      const Text(
        "Please Login with your information",
        style: TextStyle(
            color: Color.fromARGB(255, 43, 21, 49),
            fontWeight: FontWeight.w800,
            fontSize: 20,
            fontFamily: "font3"),
      ),
      const SizedBox(
        height: 30,
      ),
      inputField("Full Name", const Icon(Icons.text_format_outlined)),
      inputField("Email", const Icon(Icons.email)),
      inputField("Paswoord", const Icon(Icons.lock_sharp)),
    ],
  );
}

Widget inputField(text, icon1) {
  return TextFormField(
    decoration: InputDecoration(
        icon: icon1,
        labelText: "$text",
        labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
  );
}

Widget loginButton() {
  return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        shape: const StadiumBorder(
          side: BorderSide(color: Color.fromARGB(255, 102, 6, 97)),
        ),
        elevation: 20,
        minimumSize: Size(350, 50),
      ),
      child: const Text(
        "LOGIN",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w900, fontSize: 20),
      ));
}

// ignore: non_constant_identifier_names
Widget other_login() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Tab(
        icon: Image.asset('assets/images/download__1_-removebg-preview.png'),
      ),
      const SizedBox(
        width: 50,
      ),
      Tab(
        icon: Image.asset('assets/images/download-removebg-preview (1).png'),
      ),
      const SizedBox(
        width: 50,
      ),
      Tab(
        icon: Image.asset('assets/images/download-removebg-preview.png'),
      ),
    ],
  );
}
