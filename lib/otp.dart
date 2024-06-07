import 'package:flutter/material.dart';
import 'package:institute_imat/home.dart';
import 'package:institute_imat/login.dart';

void main() {
  runApp(MaterialApp(home: otppage(),
    debugShowCheckedModeBanner: false,));
}


class otppage extends StatelessWidget {
  const otppage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
          },
          icon:Icon(Icons.arrow_back_outlined),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
              const Text(
              "Verification code",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
             SizedBox(height: 10),
              const Text(
              "We have sent the verification \ncode to your mobile number",
              textAlign: TextAlign.center,
            ),
             SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(4, (index) => _otpTextField(context)),
            ),
             SizedBox(height: 90),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TabbarEx()));
              },
              style: ElevatedButton.styleFrom(
                minimumSize:Size(double.infinity, 50),
              ),
              child:Text('Verify',
                  style: TextStyle(color: Colors.black, fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _otpTextField(BuildContext context) {
    return const SizedBox(
      width: 100,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
