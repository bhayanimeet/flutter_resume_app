import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Options extends StatefulWidget {
  const Options({Key? key}) : super(key: key);

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        leading: GestureDetector(
          onTap: () {
            setState(() {
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            });
          },
          child: const Icon(Icons.arrow_back_ios, size: 30),
        ),
        title: const Text(
          "Resume Workspace",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        elevation: 5,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, 'contact');
                    });
                  },
                  child: myContainer(
                    myImage: "assets/icons/contact-info.png",
                    title: "Contact Info",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, 'carrier');
                    });
                  },
                  child: myContainer(
                      myImage: "assets/icons/briefcase.png",
                      title: "Carrier Objective"),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, 'person');
                      });
                    },
                    child: myContainer(
                        myImage: "assets/icons/user.png",
                        title: "Personal Details")),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, 'education');
                      });
                    },
                    child: myContainer(
                        myImage: "assets/icons/mortarboard.png",
                        title: "Education")),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, 'experience');
                      });
                    },
                    child: myContainer(
                        myImage: "assets/icons/thinking.png",
                        title: "Experiences")),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, 'skill');
                      });
                    },
                    child: myContainer(
                        myImage: "assets/icons/skill.png",
                        title: "Technical Skills")),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, 'interest');
                      });
                    },
                    child: myContainer(
                        myImage: "assets/icons/open-book.png",
                        title: "Interest/Hobbies")),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, 'project');
                      });
                    },
                    child: myContainer(
                        myImage: "assets/icons/project.png",
                        title: "Projects")),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, 'achieve');
                      });
                    },
                    child: myContainer(
                        myImage: "assets/icons/experience.png",
                        title: "Achievements")),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, 'ref');
                      });
                    },
                    child: myContainer(
                        myImage: "assets/icons/handshake.png",
                        title: "References")),
              ],
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, 'declaration');
                });
              },
              child: myContainer(
                  myImage: "assets/icons/declaration.png",
                  title: "Declaration"),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget myContainer({required String myImage, required String title}) {
    return Column(
      children: [
        Neumorphic(
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
                  myImage,
                  height: 60,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
