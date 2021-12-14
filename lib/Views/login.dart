import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quantify/Views/signup.dart';

import 'home.dart';

class Login extends StatefulWidget {
  const Login({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text(widget.title!)),
      ),
      backgroundColor: Colors.green.shade300,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
              child: Text("Make Your Daily Life Simple, Count Things Faster.",textAlign: TextAlign.center, style: TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontWeight: FontWeight.w600,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 10),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'example@abc.com',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.email),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.lock),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: ()=>{},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                          child: Text("Login", style: TextStyle(
                            fontSize: 24,
                          ),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 4, left: 20, right: 20),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 20, right: 20, bottom: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context) => Signup(title: widget.title,)))},
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.25,
                                height: MediaQuery.of(context).size.height*0.06,
                                child: Center(
                                  child: Text("Signup", style: TextStyle(
                                    fontSize: 24,
                                  ),),
                                ),
                              ),
                            ),
                            SizedBox(width: 20,),
                            ElevatedButton(
                              onPressed: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context) => Home(title: widget.title,)))},
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.25,
                                height: MediaQuery.of(context).size.height*0.06,
                                child: Center(
                                  child: Text("Guest", style: TextStyle(
                                    fontSize: 24,
                                  ),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


