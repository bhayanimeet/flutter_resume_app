import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'Global.dart';

class Carrier extends StatefulWidget {
  const Carrier({Key? key}) : super(key: key);

  @override
  State<Carrier> createState() => _CarrierState();
}

class _CarrierState extends State<Carrier> {
  TextEditingController text = TextEditingController(text: Global.des);
  TextEditingController text1 = TextEditingController(text: Global.exp);
  GlobalKey<FormState> key = GlobalKey<FormState>();

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
              Navigator.pushNamedAndRemoveUntil(
                  context, 'option', (route) => false);
            });
          },
          child: const Icon(Icons.arrow_back_ios, size: 30),
        ),
        title: const Text(
          "Carrier Objective",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        elevation: 5,
      ),
      backgroundColor: Colors.white,
      body: Form(
        key: key,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
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
                  height: MediaQuery.of(context).size.height * 0.31,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(20),
                  color: Colors.grey.shade50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Career Objective",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff0475ff),
                        ),
                      ),
                      TextFormField(
                        controller: text,
                        onSaved: (val) {
                          setState(() {
                            Global.des = val;
                          });
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "please enter your career objective...";
                          } else {
                            return null;
                          }
                        },
                        maxLines: 5,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          hintText: "Description",
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          hintStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
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
                  height: MediaQuery.of(context).size.height * 0.21,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(20),
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Current Designation (Experienced\nCandidate",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff0475ff),
                        ),
                      ),
                      TextFormField(
                        controller: text1,
                        onSaved: (val) {
                          setState(() {
                            Global.exp = val;
                          });
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please enter your current designation...";
                          } else {
                            return null;
                          }
                        },
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          hintText: "Software Engineer",
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          hintStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    if (key.currentState!.validate()) {
                      key.currentState!.save();
                    }
                    print(Global.exp);
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
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width / 3,
                      color: Colors.grey.shade50,
                      alignment: Alignment.center,
                      child: const Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    key.currentState!.reset();
                    setState(() {
                      text.clear();
                      text1.clear();
                      Global.des = null;
                      Global.exp = null;
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
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width / 3,
                      alignment: Alignment.center,
                      color: Colors.grey.shade50,
                      child: const Text(
                        "Reset",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
