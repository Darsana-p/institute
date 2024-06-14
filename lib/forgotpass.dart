import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';


void main() {
  runApp(MaterialApp(home: forgotpass(), debugShowCheckedModeBanner: false));
}

class forgotpass extends StatelessWidget {
  const forgotpass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          child: Column(
              children: [
                const SizedBox(height: 60,),
                const Text("Reset Password",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                const Padding(padding: EdgeInsets.all(40.0)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Email Id',
                      labelStyle: TextStyle(color: Colors.black),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color:Colors.red)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.red)),),
                    style:const TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 40,),
                Container(
                    width: 400,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [Colors.red, Colors.black],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child:  ElevatedButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
                    },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text("Proceed",style: TextStyle(color: Colors.white,fontSize: 20),))
                ),
              ]),
        ));
  }
}