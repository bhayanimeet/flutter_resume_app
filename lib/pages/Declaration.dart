import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';

import 'Global.dart';

class Declaration extends StatefulWidget {
  const Declaration({Key? key}) : super(key: key);

  @override
  State<Declaration> createState() => _DeclarationState();
}

class _DeclarationState extends State<Declaration> {
  TextEditingController desc = TextEditingController(text: Global.desc);
  TextEditingController date = TextEditingController(text: Global.date);
  TextEditingController place = TextEditingController(text: Global.place);
  bool isTrue = false;
  GlobalKey<FormState> key = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    isTrue = Global.isTrue;
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
          "Declaration",
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
            (isTrue)
                ? Padding(
                    padding: const EdgeInsets.all(30),
                    child: Neumorphic(
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        surfaceIntensity: 0.25,
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(10),
                        ),
                        depth: 10,
                        lightSource: LightSource.topLeft,
                        color: Colors.white,
                        shadowDarkColor: Colors.grey.shade500,
                      ),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.6,
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(20),
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Declaration",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff0475ff),
                                  ),
                                ),
                                Switch(
                                  value: isTrue,
                                  onChanged: (val) {
                                    setState(() {
                                      isTrue = val;
                                    });
                                  },
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Image.asset(
                                "assets/icons/icon.png",
                                height: 80,
                              ),
                            ),
                            const SizedBox(height: 30),
                            TextFormField(
                              textInputAction: TextInputAction.next,
                              controller: desc,
                              onSaved: (val) {
                                setState(() {
                                  Global.desc = val;
                                });
                              },
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "please enter description...";
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
                                hintText: "Description",
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
                            const SizedBox(height: 40),
                            Container(
                              height: 1,
                              width: MediaQuery.of(context).size.width,
                              color: Colors.grey.shade500,
                            ),
                            const SizedBox(height: 40),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Date\n",
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
                                        controller: date,
                                        onTap: () async {
                                          DateTime? pick = await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime(1900),
                                            lastDate: DateTime(2101),
                                          );
                                          if (pick != null) {
                                            setState(() {
                                              date.text =
                                                  DateFormat('dd/MM/yyyy')
                                                      .format(pick);
                                              Global.date = date.text;
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
                                            return "please enter date...";
                                          } else {
                                            return null;
                                          }
                                        },
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                        cursorColor: Colors.black,
                                        decoration: InputDecoration(
                                          border: const OutlineInputBorder(),
                                          hintText: "DD/MM/YYYY",
                                          focusedBorder:
                                              const OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black)),
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
                                      "Place (Interview\nvenue/city)",
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
                                        controller: place,
                                        onSaved: (val) {
                                          setState(() {
                                            Global.place = val;
                                          });
                                        },
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "please enter place...";
                                          } else {
                                            return null;
                                          }
                                        },
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                        cursorColor: Colors.black,
                                        decoration: InputDecoration(
                                          border: const OutlineInputBorder(),
                                          hintText: "Eg. Surat",
                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                          ),
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
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(30),
                    child: Neumorphic(
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        surfaceIntensity: 0.25,
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
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Declaration",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff0475ff),
                              ),
                            ),
                            Switch(
                              value: isTrue,
                              onChanged: (val) {
                                setState(() {
                                  isTrue = val;
                                });
                              },
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
                    setState(() {
                      Global.isTrue = isTrue;
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
                    key.currentState!.reset();
                    setState(() {
                      desc.clear();
                      date.clear();
                      place.clear();
                      Global.desc = null;
                      Global.date = null;
                      Global.place = null;
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
