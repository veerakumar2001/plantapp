import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  late String name, pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: const BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              color: const Color.fromARGB(255, 240, 227, 227)),
          child: Column(
            children: [
              //Padding(padding: EdgeInsets.all(20)),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    // icon: Icon(Icons.person),
                    hintText: 'Enter',
                    labelText: 'User Name',
                    icon: Icon(Icons.person),
                  ),
                 // validator: ,
                ),
              ),
              const Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.password),
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.visibility_outlined),
                    // icon: Icon(Icons.person),
                    hintText: 'Enter',
                    labelText: 'Password',
                  ),
                ),
              )
            ],
            //children: [FlatButton(onPressed: () {}, child: Text("Login"))],
          ),
        ),
      ),
    );
  }
}
