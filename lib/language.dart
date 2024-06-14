import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Language(),
    debugShowCheckedModeBanner: false,));
}
class Language extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
             SliverAppBar(
              expandedHeight: 100.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Gradient Cards'),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(8.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    GradientCard(
                      gradientColors:[Colors.red, Colors.black],
                      title:'IELTS',
                      content:'Welcome to the world of IELTS - the International English Language Testing System, your gateway to global opportunities! IELTS is the leading English language proficiency test trusted by millions of individuals worldwide for academic and migration purposes. Whether you are aiming to study abroad, advance your career, or immigrate to an English-speaking country, IELTS equips you with the language skills necessary to succeed. Our comprehensive exam assesses your listening, reading, writing, and speaking abilities, providing a reliable measure of your English proficiency. At IMAT Global, we offer top-notch preparation resources, expert coaching, and seamless test booking services to empower you on your journey to success. Join the IELTS community today and open doors to endless possibilities!',
                    ),
                    SizedBox(height: 16),
                    GradientCard(
                      gradientColors: [Colors.black, Colors.red],
                      title:'Spoken English',
                      content:'Welcome to IMAT Global, your premier destination for online spoken English classes and courses. Our platform offers comprehensive spoken English courses designed to enhance your language proficiency and fluency. Whether you are a beginner or looking to refine your skills, our experienced English-speaking tutors provide personalized lessons tailored to your needs. Our curriculum covers a wide range of topics, including grammar, vocabulary, pronunciation, and conversation practice. With flexible scheduling and convenient online access, you can learn English from anywhere, at your own pace. Join IMAT Global today and take the first step towards speaking English confidently and fluently.',
                    ),
                    GradientCard(
                      gradientColors:[Colors.red, Colors.black],
                      title:'German',
                      content:'Whether you are a beginner or looking to enhance your language skills, our German courses offer comprehensive lessons tailored to your proficiency level. With our interactive platform, you can learn German at your own pace, from anywhere in the world. From basic vocabulary and grammar to advanced conversation practice, our experienced tutors provide engaging lessons to help you master the German language. Explore our range of courses, including beginner-friendly options and advanced levels like German A1. Join IMAT Global today and embark on your journey to fluency in German.',
                    ),
                    SizedBox(height: 16),
                    GradientCard(
                      gradientColors:[Colors.black, Colors.red],
                      title:'PTE',
                      content:'PTE Academic is a computer-based English language proficiency test trusted by universities, colleges, and governments around the globe. Whether you are pursuing higher education, immigration, or professional certification, PTE Academic accurately assesses your listening, reading, speaking, and writing skills. At IMAT Global, we are dedicated to your PTE success, offering comprehensive study materials, interactive tutorials, and expert guidance to help you achieve your desired score. Join our language academy today and embark on a journey towards fluency and proficiency with PTE!',
                    ),
                    GradientCard(
                      gradientColors:[Colors.red, Colors.black],
                      title:'OET',
                      content:'OET - the Occupational English Test, your pathway to professional excellence in healthcare! Designed specifically for healthcare professionals, OET assesses your English language proficiency in a medical context, covering listening, reading, writing, and speaking skills. Recognized and trusted by healthcare boards and employers worldwide, OET helps you demonstrate your ability to communicate effectively in English within a healthcare setting. Whether you are a nurse, doctor, pharmacist, or other healthcare professional, OET prepares you for success in your career. Explore our OET preparation courses, mock tests, and study materials at IMAT Global, and take the next step towards achieving your professional goals with confidence!',
                    ),
                    SizedBox(height: 16),
                    GradientCard(
                      gradientColors:[Colors.black, Colors.red],
                      title:'TOEFL',
                      content:'TOEFL is the premier English-language proficiency test accepted by thousands of institutions globally. Whether you are planning to study abroad, pursue professional certification, or enhance your career prospects, TOEFL assesses your ability to understand and use English in academic and real-life contexts. At IMAT Global, we offer comprehensive TOEFL preparation courses, practice tests, and study materials to help you achieve your target score with confidence. Join us and embark on your journey to linguistic excellence and international opportunities with TOEFL!',
                    ),
                    GradientCard(
                      gradientColors:[Colors.red, Colors.black],
                      title:'GRE',
                      content:'Our platform offers a variety of resources to help you excel in the GRE exam. From comprehensive practice tests and mock exams to targeted vocabulary exercises, we provide the tools you need to succeed. With our user-friendly interface and expert guidance, you can effectively prepare for the GRE at your own pace. Whether you are just starting your journey or seeking to improve your score, IMAT Global is here to support you every step of the way. Join us today and unlock your potential for GRE success.',
                    ),
                    SizedBox(height: 16),
                    GradientCard(
                      gradientColors:[Colors.black, Colors.red],
                      title:'GMAT',
                      content:'Our platform offers a comprehensive range of resources to help you succeed in the GMAT exam. From practice tests and study guides to expert tutoring and online courses, we provide everything you need to excel. Whether you are looking for self-paced study options or live coaching sessions, our tailored approach ensures that you reach your target score.',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GradientCard extends StatelessWidget {
  final List<Color> gradientColors;
  final String title;
  final String content;

  GradientCard({
    required this.gradientColors,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
            begin:Alignment.topLeft,
            end:Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
         child:ExpansionTile(
          title:Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                content,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: Language(),
//     debugShowCheckedModeBanner: false,
//   ));
// }
//
// class Language extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: CustomScrollView(
//           slivers: [
//             SliverAppBar(
//               expandedHeight: 100.0,
//               floating: false,
//               pinned: true,
//               flexibleSpace: FlexibleSpaceBar(
//                 title: Text('Gradient Cards'),
//               ),
//             ),
//             SliverPadding(
//               padding: const EdgeInsets.all(8.0),
//               sliver: SliverList(
//                 delegate: SliverChildListDelegate(
//                   [
//                     GradientCard(
//                       gradientColors: [Colors.red, Colors.black],
//                       title: 'IELTS',
//                       content:
//                       'Welcome to the world of IELTS - the International English Language Testing System, your gateway to global opportunities! IELTS is the leading English language proficiency test trusted by millions of individuals worldwide for academic and migration purposes. Whether you are aiming to study abroad, advance your career, or immigrate to an English-speaking country, IELTS equips you with the language skills necessary to succeed. Our comprehensive exam assesses your listening, reading, writing, and speaking abilities, providing a reliable measure of your English proficiency. At IMAT Global, we offer top-notch preparation resources, expert coaching, and seamless test booking services to empower you on your journey to success. Join the IELTS community today and open doors to endless possibilities!',
//                     ),
//                     SizedBox(height: 16),
//                     GradientCard(
//                       gradientColors: [Colors.black, Colors.red],
//                       title: 'Spoken English',
//                       content:
//                       'Welcome to IMAT Global, your premier destination for online spoken English classes and courses. Our platform offers comprehensive spoken English courses designed to enhance your language proficiency and fluency. Whether you are a beginner or looking to refine your skills, our experienced English-speaking tutors provide personalized lessons tailored to your needs. Our curriculum covers a wide range of topics, including grammar, vocabulary, pronunciation, and conversation practice. With flexible scheduling and convenient online access, you can learn English from anywhere, at your own pace. Join IMAT Global today and take the first step towards speaking English confidently and fluently.',
//                     ),
//                     GradientCard(
//                       gradientColors: [Colors.red, Colors.black],
//                       title: 'German',
//                       content:
//                       'Whether you are a beginner or looking to enhance your language skills, our German courses offer comprehensive lessons tailored to your proficiency level. With our interactive platform, you can learn German at your own pace, from anywhere in the world. From basic vocabulary and grammar to advanced conversation practice, our experienced tutors provide engaging lessons to help you master the German language. Explore our range of courses, including beginner-friendly options and advanced levels like German A1. Join IMAT Global today and embark on your journey to fluency in German.',
//                     ),
//                     SizedBox(height: 16),
//                     GradientCard(
//                       gradientColors: [Colors.black, Colors.red],
//                       title: 'PTE',
//                       content:
//                       'PTE Academic is a computer-based English language proficiency test trusted by universities, colleges, and governments around the globe. Whether you are pursuing higher education, immigration, or professional certification, PTE Academic accurately assesses your listening, reading, speaking, and writing skills. At IMAT Global, we are dedicated to your PTE success, offering comprehensive study materials, interactive tutorials, and expert guidance to help you achieve your desired score. Join our language academy today and embark on a journey towards fluency and proficiency with PTE!',
//                     ),
//                     GradientCard(
//                       gradientColors: [Colors.red, Colors.black],
//                       title: 'OET',
//                       content:
//                       'OET - the Occupational English Test, your pathway to professional excellence in healthcare! Designed specifically for healthcare professionals, OET assesses your English language proficiency in a medical context, covering listening, reading, writing, and speaking skills. Recognized and trusted by healthcare boards and employers worldwide, OET helps you demonstrate your ability to communicate effectively in English within a healthcare setting. Whether you are a nurse, doctor, pharmacist, or other healthcare professional, OET prepares you for success in your career. Explore our OET preparation courses, mock tests, and study materials at IMAT Global, and take the next step towards achieving your professional goals with confidence!',
//                     ),
//                     SizedBox(height: 16),
//                     GradientCard(
//                       gradientColors: [Colors.black, Colors.red],
//                       title: 'TOEFL',
//                       content:
//                       'TOEFL is the premier English-language proficiency test accepted by thousands of institutions globally. Whether you are planning to study abroad, pursue professional certification, or enhance your career prospects, TOEFL assesses your ability to understand and use English in academic and real-life contexts. At IMAT Global, we offer comprehensive TOEFL preparation courses, practice tests, and study materials to help you achieve your target score with confidence. Join us and embark on your journey to linguistic excellence and international opportunities with TOEFL!',
//                     ),
//                     GradientCard(
//                       gradientColors: [Colors.red, Colors.black],
//                       title: 'GRE',
//                       content:
//                       'Our platform offers a variety of resources to help you excel in the GRE exam. From comprehensive practice tests and mock exams to targeted vocabulary exercises, we provide the tools you need to succeed. With our user-friendly interface and expert guidance, you can effectively prepare for the GRE at your own pace. Whether you are just starting your journey or seeking to improve your score, IMAT Global is here to support you every step of the way. Join us today and unlock your potential for GRE success.',
//                     ),
//                     SizedBox(height: 16),
//                     GradientCard(
//                       gradientColors: [Colors.black, Colors.red],
//                       title: 'GMAT',
//                       content:
//                       'Our platform offers a comprehensive range of resources to help you succeed in the GMAT exam. From practice tests and study guides to expert tutoring and online courses, we provide everything you need to excel. Whether you are looking for self-paced study options or live coaching sessions, our tailored approach ensures that you reach your target score.',
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class GradientCard extends StatelessWidget {
//   final List<Color> gradientColors;
//   final String title;
//   final String content;
//
//   GradientCard({
//     required this.gradientColors,
//     required this.title,
//     required this.content,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return ConstrainedBox(
//       constraints: BoxConstraints(minHeight: 200), // Minimum height
//       child: Card(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//         child: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: gradientColors,
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: ExpansionTile(
//             title: Center(
//               child: Text(
//                 title,
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Text(
//                   content,
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
