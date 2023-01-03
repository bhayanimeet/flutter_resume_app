import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'Global.dart';

class Skill extends StatefulWidget {
  const Skill({Key? key}) : super(key: key);

  @override
  State<Skill> createState() => _SkillState();
}

class _SkillState extends State<Skill> {
  List<TextEditingController> skillControllers = [];
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    skillControllers.add(TextEditingController());
    skillControllers.add(TextEditingController());
  }

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
          "Technical Skills",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        elevation: 5,
      ),
      backgroundColor: Colors.white,
      body: Column(
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
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                color: Colors.grey.shade50,
                child: Form(
                  key: formKey,
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Enter your skill",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff0475ff),
                          ),
                        ),
                        const SizedBox(height: 20),
                        ...skillControllers.map(
                              (e) => myTextField(controller: e),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  skillControllers.add(TextEditingController());
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
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey.shade50,
                  alignment: Alignment.center,
                  child: const Text(
                    "ADD",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  }
                  setState(() {
                    Global.skills = skillControllers.map((e) => (e.text)).toList();
                    print(Global.skills);
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
                  formKey.currentState!.reset();
                  setState(() {
                    skillControllers.clear();
                    Global.skills.clear();
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
    );
  }

  Widget myTextField({required TextEditingController controller}) {
    return Row(
      children: [
        Expanded(
          flex: 8,
          child: TextFormField(
            controller: controller,
            onSaved: (val) {
              setState(() {
                Global.skills.add(val);
              });
            },
            validator: (val) {
              if (val!.isEmpty) {
                return "Please enter Skill...";
              } else {
                return null;
              }
            },
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            cursorColor: Colors.black,
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              hintText: "C programming,Web Technical",
              focusedBorder: const UnderlineInputBorder(
                borderSide:
                BorderSide(color: Colors.black),
              ),
              hintStyle: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade500,
              ),
            ),
          ),
        ),
        const Spacer(flex: 1),
        Expanded(
          flex: 1,
          child: InkWell(
            onTap: () {
              setState(() {
                skillControllers.removeAt(skillControllers.indexOf(controller),);
              });
            },
            child: const Icon(Icons.delete, size: 35),),
        ),
      ],
    );
  }
}