import 'package:flutter/material.dart';
import 'package:resume/pages/Achievement.dart';
import 'package:resume/pages/Carrier.dart';
import 'package:resume/pages/Declaration.dart';
import 'package:resume/pages/Education.dart';
import 'package:resume/pages/Experience.dart';
import 'package:resume/pages/Interest.dart';
import 'package:resume/pages/Options.dart';
import 'package:resume/pages/Personal.dart';
import 'package:resume/pages/Project.dart';
import 'package:resume/pages/Reference.dart';
import 'package:resume/pages/ResumePage.dart';
import 'package:resume/pages/Skill.dart';
import 'package:resume/pages/contact.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Resume(),
        'option': (context) => const Options(),
        'contact': (context) => const Contact(),
        'carrier': (context) => const Carrier(),
        'person': (context) => const Personal(),
        'education': (context) => const Education(),
        'experience': (context) => const Experience(),
        'skill': (context) => const Skill(),
        'interest': (context) => const Interest(),
        'project': (context) => const Project(),
        'achieve': (context) => const Achievement(),
        'ref': (context) => const Reference(),
        'declaration': (context) => const Declaration(),
        'resume': (context) => const ResumePage(),
      },
    ),
  );
}

class Resume extends StatefulWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool? exit = await showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) => AlertDialog(
                  elevation: 10,
                  backgroundColor: Colors.white,
                  title: const Text("Press yes for exit?"),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pop(context, true);
                        });
                      },
                      child: const Text("YES"),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pop(context, false);
                        });
                      },
                      child: const Text("NO"),
                    ),
                  ],
                ));
        return exit!;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff4568DC),
                  Color(0xffB06AB3),
                ],
              ),
            ),
          ),
          title: const Text(
            "Resume Builder",
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          elevation: 5,
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.pushNamed(context, 'option');
                  });
                },
                child: Neumorphic(
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    surfaceIntensity: 0.3,
                    boxShape: NeumorphicBoxShape.roundRect(
                      BorderRadius.circular(10),
                    ),
                    depth: 10,
                    lightSource: LightSource.topLeft,
                    color: Colors.white,
                    shadowDarkColor: Colors.grey.shade500,
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.4,
                    color: Colors.grey.shade50,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/icons/open-cardboard-box.png",
                          height: 70,
                        ),
                        const Text(
                          "Create",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.pushNamed(context, 'resume');
                  });
                },
                child: Neumorphic(
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    surfaceIntensity: 0.3,
                    boxShape: NeumorphicBoxShape.roundRect(
                      BorderRadius.circular(10),
                    ),
                    depth: 10,
                    lightSource: LightSource.topLeft,
                    color: Colors.white,
                    shadowDarkColor: Colors.grey,
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.4,
                    color: Colors.grey.shade50,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(Icons.download_sharp,size: 60),
                        Text(
                          "Download",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              Navigator.pushNamed(context, 'option');
            });
          },
          backgroundColor: const Color(0xff0475ff),
          child: const Icon(Icons.add, size: 50, color: Colors.white),
        ),
      ),
    );
  }
}
