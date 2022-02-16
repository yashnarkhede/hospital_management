import 'package:flutter/material.dart';
import './background.dart';
import './textFieldContainer.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          const Text(
            'LOGIN',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Positioned(
            child: Image.asset(
              'assets/Images/Doctor1.png',
              width: size.width * 2,
              height: size.height * 0.35,
            ),
          ),
          const TextFieldContainer(
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: Colors.pink,
                ),
                hintText: 'Email',
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const TextFieldContainer(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                icon: Icon(
                  Icons.lock,
                  color: Colors.pink,
                ),
                border: InputBorder.none,
                suffixIcon: Icon(
                  Icons.visibility,
                  color: Colors.pink,
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          ButtonTheme(
            minWidth: 400,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('LOGIN'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.red,
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Don\'t have an account? ',
                style: TextStyle(
                  color: Colors.pink.shade200,
                ),
              ),
              const Text(
                'Sign Up!',
                style: TextStyle(color: Colors.blue),
              )
            ],
          )
        ],
      ),
    );
  }
}
