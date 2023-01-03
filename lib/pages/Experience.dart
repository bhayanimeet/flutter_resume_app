import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';
import 'Global.dart';

class Experience extends StatefulWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  TextEditingController company = TextEditingController(text: Global.company);
  TextEditingController school = TextEditingController(text: Global.school);
  TextEditingController role = TextEditingController(text: Global.role);
  TextEditingController start = TextEditingController(text: Global.start);
  TextEditingController end = TextEditingController(text: Global.end);
  GlobalKey<FormState> keys = GlobalKey<FormState>();
  String? status;
  Color myColor1 = Colors.grey.shade500;
  Color myColor2 = Colors.black;
  bool enable = true;

  @override
  void initState() {
    super.initState();
    status = Global.status;
    enable = Global.enable;
    myColor1 = Global.myColor1;
    myColor2 = Global.myColor2;
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
          "Experience",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        elevation: 5,
      ),
      backgroundColor: Colors.white,
      body: Form(
        key: keys,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30,top: 20,bottom: 15),
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
                  height: MediaQuery.of(context).size.height * 0.75,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                  color: Colors.grey.shade50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Company Name",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff0475ff),
                        ),
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: company,
                        onSaved: (val) {
                          setState(() {
                            Global.company = val;
                          });
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "please enter your company name...";
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
                          hintText: "New Enterprise, San Francisco",
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          hintStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "School/College/Institute",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff0475ff),
                        ),
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: school,
                        onSaved: (val) {
                          setState(() {
                            Global.school = val;
                          });
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "please enter your institute name...";
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
                          hintText: "Quality Test Engineer",
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          hintStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Roles (optional)",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff0475ff),
                        ),
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: role,
                        onSaved: (val) {
                          setState(() {
                            Global.role = val;
                          });
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "please enter your roles...";
                          } else {
                            return null;
                          }
                        },
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                        maxLines: 3,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          hintText:
                              "Working with team members to come up with new concepts and product analysis...",
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          hintStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Employed Status",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff0475ff),
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
                              value: "Previously Employed",
                              groupValue: status,
                              onChanged: (val) {
                                setState(() {
                                  status = val;
                                  myColor1 = Colors.grey.shade500;
                                  myColor2 = Colors.black;
                                  enable = true;
                                });
                              }),
                          const Text(
                            "Previously Employed",
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          Radio(
                              value: "Currently Employed",
                              groupValue: status,
                              onChanged: (val) {
                                setState(() {
                                  status = val;
                                  myColor1 = Colors.white;
                                  myColor2 = Colors.white;
                                  enable = false;
                                });
                              }),
                          const Text(
                            "Currently Employed",
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Date Joined",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 10),
                              SizedBox(
                                width: 120,
                                child: TextFormField(
                                  textInputAction: TextInputAction.next,
                                  controller: start,
                                  onTap: () async {
                                    DateTime? pick = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1900),
                                      lastDate: DateTime(2101),
                                    );
                                    if (pick != null) {
                                      setState(() {
                                        start.text = DateFormat('dd/MM/yyyy').format(pick);
                                        Global.start = start.text;
                                      });
                                    }
                                  },
                                  onSaved: (val) {
                                    setState(() {
                                      val;
                                    });
                                  },
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "please enter joined date...";
                                    } else {
                                      return null;
                                    }
                                  },
                                  maxLength: 10,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    counterText: "",
                                    border: const OutlineInputBorder(),
                                    hintText: "DD/MM/YYYY",
                                    focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black)),
                                    hintStyle: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Date Exit",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: myColor1,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 10),
                              SizedBox(
                                width: 120,
                                child: TextFormField(
                                  textInputAction: TextInputAction.next,
                                  controller: end,
                                  onTap: () async {
                                    DateTime? pick = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1900),
                                      lastDate: DateTime(2101),
                                    );
                                    if (pick != null) {
                                      setState(() {
                                        end.text = DateFormat('dd/MM/yyyy').format(pick);
                                        Global.end = end.text;
                                      });
                                    }
                                  },
                                  onSaved: (val) {
                                    setState(() {
                                      val;
                                    });
                                  },
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "please enter exit date...";
                                    } else {
                                      return null;
                                    }
                                  },
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: myColor2,
                                  ),
                                  maxLength: 10,
                                  cursorColor: myColor2,
                                  decoration: InputDecoration(
                                    enabled: enable,
                                    counterText: "",
                                    border: (enable)?const OutlineInputBorder():const UnderlineInputBorder(),
                                    hintText: "DD/MM/YYYY",
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: myColor2),
                                    ),
                                    hintStyle: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: myColor1,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    if (keys.currentState!.validate()) {
                      keys.currentState!.save();
                    }
                    setState(() {
                      Global.status = status;
                      Global.enable = enable;
                      Global.myColor1 = myColor1;
                      Global.myColor2 = myColor2;
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
                    keys.currentState!.reset();
                    setState(() {
                      company.clear();
                      school.clear();
                      role.clear();
                      start.clear();
                      end.clear();
                      Global.company = null;
                      Global.school = null;
                      Global.role = null;
                      Global.start = null;
                      Global.end = null;
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
