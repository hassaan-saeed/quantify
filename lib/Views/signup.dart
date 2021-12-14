import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _SignupState createState() => _SignupState();
}

String dropdownValue = "Select Type";

class _SignupState extends State<Signup> {
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
              padding: const EdgeInsets.only(left: 40,right: 40, top: 60, bottom: 20),
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
                      SizedBox(height: 10,),
                      Container(
                        width: MediaQuery.of(context).size.width*0.78,
                        height: MediaQuery.of(context).size.height*0.08,
                        child: Center(
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'example@abc.com',
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.email),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        width: MediaQuery.of(context).size.width*0.78,
                        height: MediaQuery.of(context).size.height*0.08,
                        child: Center(
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
                      ),
                      SizedBox(height: 10,),
                      Container(
                        width: MediaQuery.of(context).size.width*0.78,
                        height: MediaQuery.of(context).size.height*0.08,
                        child: Center(
                          child: TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: 'Confirm Password',
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.lock),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        width: MediaQuery.of(context).size.width*0.78,
                        height: MediaQuery.of(context).size.height*0.08,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border(top: BorderSide(width: 1, color: Colors.black38), bottom: BorderSide(width: 1, color: Colors.black38), right: BorderSide(width: 1, color: Colors.black38), left: BorderSide(width: 1, color: Colors.black38))
                        ),
                        child: Center(
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            icon: const Icon(Icons.arrow_downward),
                            iconSize: 28,
                            elevation: 16,
                            style: const TextStyle(color: Colors.black87, fontSize: 22),
                            underline: Container(
                              height: 1,
                              color: Colors.green.shade700,
                            ),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: <String>['Select Type', 'Individual', 'Business']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      SizedBox(height: 12,),
                      ElevatedButton(
                        onPressed: ()=>{},
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.4,
                          height: MediaQuery.of(context).size.height*0.07,
                          child: Center(
                            child: Text("Signup", style: TextStyle(
                              fontSize: 24,
                            ),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 0, left: 20, right: 20),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8,left: 20, right: 20, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context) => Login(title: widget.title,)))},
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.25,
                                height: MediaQuery.of(context).size.height*0.06,
                                child: Center(
                                  child: Text("Login", style: TextStyle(
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


