import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'Global.dart';
import 'package:pdf/widgets.dart' as pd;
import 'package:printing/printing.dart';

class ResumePage extends StatefulWidget {
  const ResumePage({Key? key}) : super(key: key);

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  final pdf = pd.Document();

  makePdf() {
    pdf.addPage(
      pd.Page(
        build: (pd.Context conText) => pd.Row(
          children: [
            pd.Expanded(
              flex: 5,
              child: pd.Container(
                alignment: pd.Alignment.topCenter,
                color: PdfColors.black,
                child: pd.Column(
                  children: [
                    pd.SizedBox(height: 15),
                    pd.Container(
                      height: 150,
                      width: 150,
                      decoration: pd.BoxDecoration(
                        color: PdfColors.white,
                        shape: pd.BoxShape.circle,
                        image: pd.DecorationImage(
                          fit: pd.BoxFit.fill,
                          image: pd.MemoryImage(Global.file!.readAsBytesSync()),
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 15),
                    pd.Container(
                      alignment: pd.Alignment.centerLeft,
                      padding: const pd.EdgeInsets.only(left: 5),
                      child: pd.Text(
                        "Contact me",
                        style: const pd.TextStyle(
                          fontSize: 20,
                          color: PdfColors.white,
                          decoration: pd.TextDecoration.underline,
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 5),
                    pd.Align(
                      alignment: pd.Alignment.centerLeft,
                      child: pd.Padding(
                        padding: const pd.EdgeInsets.only(left: 5),
                        child: pd.Text(
                          (Global.email == null)
                              ? "fill your email"
                              : "${Global.email}",
                          style: const pd.TextStyle(
                            fontSize: 15,
                            color: PdfColors.white,
                          ),
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 5),
                    pd.Align(
                      alignment: pd.Alignment.centerLeft,
                      child: pd.Padding(
                        padding: const pd.EdgeInsets.only(left: 5),
                        child: pd.Text(
                          (Global.number == null)
                              ? "fill your number"
                              : "${Global.number}",
                          style: const pd.TextStyle(
                            fontSize: 15,
                            color: PdfColors.white,
                          ),
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 5),
                    pd.Align(
                      alignment: pd.Alignment.centerLeft,
                      child: pd.Padding(
                        padding: const pd.EdgeInsets.only(left: 5),
                        child: pd.Text(
                          (Global.address == null)
                              ? "fill your address"
                              : "${Global.address}",
                          style: const pd.TextStyle(
                            fontSize: 15,
                            color: PdfColors.white,
                          ),
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 12),
                    pd.Container(
                      alignment: pd.Alignment.centerLeft,
                      padding: const pd.EdgeInsets.only(left: 5),
                      child: pd.Text(
                        "Education",
                        style: pd.TextStyle(
                          fontSize: 20,
                          fontWeight: pd.FontWeight.normal,
                          color: PdfColors.white,
                          decoration: pd.TextDecoration.underline,
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 5),
                    pd.Align(
                      alignment: pd.Alignment.centerLeft,
                      child: pd.Padding(
                        padding: const pd.EdgeInsets.only(left: 5),
                        child: pd.Text(
                          (Global.course == null)
                              ? "fill your course name"
                              : "${Global.course}",
                          style: const pd.TextStyle(
                            fontSize: 15,
                            color: PdfColors.white,
                          ),
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 5),
                    pd.Align(
                      alignment: pd.Alignment.centerLeft,
                      child: pd.Padding(
                        padding: const pd.EdgeInsets.only(left: 5),
                        child: pd.Text(
                          (Global.college == null)
                              ? "fill your college name"
                              : "${Global.college}",
                          style: const pd.TextStyle(
                            fontSize: 15,
                            color: PdfColors.white,
                          ),
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 5),
                    pd.Align(
                      alignment: pd.Alignment.centerLeft,
                      child: pd.Padding(
                        padding: const pd.EdgeInsets.only(left: 5),
                        child: pd.Text(
                          (Global.percentage == null)
                              ? "fill your percentage"
                              : "${Global.percentage}",
                          style: const pd.TextStyle(
                            fontSize: 15,
                            color: PdfColors.white,
                          ),
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 5),
                    pd.Align(
                      alignment: pd.Alignment.centerLeft,
                      child: pd.Padding(
                        padding: const pd.EdgeInsets.only(left: 5),
                        child: pd.Text(
                          (Global.year == null)
                              ? "fill your studying year"
                              : "${Global.year}",
                          style: const pd.TextStyle(
                            fontSize: 15,
                            color: PdfColors.white,
                          ),
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 10),
                    pd.Container(
                      alignment: pd.Alignment.centerLeft,
                      padding: const pd.EdgeInsets.only(left: 5),
                      child: pd.Text(
                        "Personal Detail",
                        style: const pd.TextStyle(
                          fontSize: 20,
                          color: PdfColors.white,
                          decoration: pd.TextDecoration.underline,
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 5),
                    pd.Align(
                      alignment: pd.Alignment.centerLeft,
                      child: pd.Padding(
                        padding: const pd.EdgeInsets.only(left: 5),
                        child: pd.Text(
                          (Global.birth == null)
                              ? "fill your BirthDate"
                              : "${Global.birth}",
                          style: const pd.TextStyle(
                            fontSize: 15,
                            color: PdfColors.white,
                          ),
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 5),
                    pd.Align(
                      alignment: pd.Alignment.centerLeft,
                      child: pd.Padding(
                        padding: const pd.EdgeInsets.only(left: 5),
                        child: pd.Text(
                          (Global.group == null)
                              ? "fill your marital status"
                              : "${Global.group}",
                          style: const pd.TextStyle(
                            fontSize: 15,
                            color: PdfColors.white,
                          ),
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 5),
                    pd.Align(
                      alignment: pd.Alignment.centerLeft,
                      child: pd.Padding(
                        padding: const pd.EdgeInsets.only(left: 5),
                        child: pd.Text(
                          (Global.myLanguage.isEmpty)
                              ? "fill your language kno."
                              : Global.myLanguage.join(","),
                          style: const pd.TextStyle(
                            fontSize: 15,
                            color: PdfColors.white,
                          ),
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 5),
                    pd.Align(
                      alignment: pd.Alignment.centerLeft,
                      child: pd.Padding(
                        padding: const pd.EdgeInsets.only(left: 5),
                        child: pd.Text(
                          (Global.nation == null)
                              ? "fill your nationality"
                              : "${Global.nation}",
                          style: const pd.TextStyle(
                            fontSize: 15,
                            color: PdfColors.white,
                          ),
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 12),
                    pd.Align(
                      alignment: pd.Alignment.centerLeft,
                      child: pd.Container(
                        alignment: pd.Alignment.centerLeft,
                        padding: const pd.EdgeInsets.only(left: 5),
                        child: pd.Text(
                          "Skills",
                          style: const pd.TextStyle(
                            fontSize: 20,
                            color: PdfColors.white,
                            decoration: pd.TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 5),
                    pd.Padding(
                      padding: const pd.EdgeInsets.only(left: 5),
                      child: pd.Align(
                        alignment: pd.Alignment.centerLeft,
                        child: pd.Text(
                          (Global.skills.isEmpty)
                              ? "fill your skills"
                              : Global.skills.join("\n"),
                          style: const pd.TextStyle(
                            fontSize: 15,
                            color: PdfColors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            pd.Expanded(
              flex: 8,
              child: pd.Container(
                alignment: pd.Alignment.topCenter,
                color: PdfColors.grey300,
                child: pd.Column(
                  children: [
                    pd.SizedBox(height: 30),
                    pd.Align(
                      alignment: pd.Alignment.center,
                      child: pd.Text(
                        (Global.name == null)
                            ? "fill your name"
                            : "${Global.name}",
                        style: pd.TextStyle(
                          fontSize: 35,
                          fontWeight: pd.FontWeight.bold,
                          color: PdfColors.black,
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 30),
                    pd.Align(
                      alignment: pd.Alignment.centerLeft,
                      child: pd.Container(
                        alignment: pd.Alignment.centerLeft,
                        padding: const pd.EdgeInsets.only(left: 5),
                        child: pd.Text(
                          "About me",
                          style: const pd.TextStyle(
                            fontSize: 20,
                            color: PdfColors.black,
                            decoration: pd.TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 5),
                    pd.Padding(
                      padding: const pd.EdgeInsets.only(left: 5),
                      child: pd.Align(
                        alignment: pd.Alignment.centerLeft,
                        child: pd.Text(
                          (Global.exp == null)
                              ? "fill your career field"
                              : "I am a ${Global.exp}. ${Global.des}.I also work for ${Global.company} as a ${Global.school}.I work for this company from ${Global.start} ${(Global.end == null) ? "" : "to ${Global.end}"}",
                          style: const pd.TextStyle(
                            fontSize: 16,
                            color: PdfColors.black,
                          ),
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 12),
                    pd.Align(
                      alignment: pd.Alignment.centerLeft,
                      child: pd.Container(
                        alignment: pd.Alignment.centerLeft,
                        padding: const pd.EdgeInsets.only(left: 5),
                        child: pd.Text(
                          "Projects",
                          style: const pd.TextStyle(
                            fontSize: 20,
                            color: PdfColors.black,
                            decoration: pd.TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 5),
                    pd.Padding(
                      padding: const pd.EdgeInsets.only(left: 5),
                      child: pd.Align(
                        alignment: pd.Alignment.centerLeft,
                        child: pd.Text(
                          (Global.project == null)
                              ? "fill your Project name."
                              : "I made ${Global.project} using technologies like ${Global.technologies.join(" , ")}.${Global.description}",
                          style: const pd.TextStyle(
                            fontSize: 15,
                            color: PdfColors.black,
                          ),
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 5),
                    pd.Container(
                      alignment: pd.Alignment.centerLeft,
                      padding: const pd.EdgeInsets.only(left: 5),
                      child: pd.Text(
                        "Interest",
                        style: const pd.TextStyle(
                          fontSize: 20,
                          color: PdfColors.black,
                          decoration: pd.TextDecoration.underline,
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 5),
                    pd.Align(
                      alignment: pd.Alignment.centerLeft,
                      child: pd.Padding(
                        padding: const pd.EdgeInsets.only(left: 5),
                        child: pd.Text(
                          (Global.interest == null)
                              ? "fill your interest"
                              : "${Global.interest}",
                          style: const pd.TextStyle(
                            fontSize: 15,
                            color: PdfColors.black,
                          ),
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 15),
                    pd.Align(
                      alignment: pd.Alignment.centerLeft,
                      child: pd.Container(
                        alignment: pd.Alignment.centerLeft,
                        padding: const pd.EdgeInsets.only(left: 5),
                        child: pd.Text(
                          "Achievements",
                          style: const pd.TextStyle(
                            fontSize: 20,
                            color: PdfColors.black,
                            decoration: pd.TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 5),
                    pd.Padding(
                      padding: const pd.EdgeInsets.only(left: 5),
                      child: pd.Align(
                        alignment: pd.Alignment.centerLeft,
                        child: pd.Text(
                          (Global.achievements.isEmpty)
                              ? "fill your Achievements."
                              : Global.achievements.join("\n"),
                          style: const pd.TextStyle(
                            fontSize: 16,
                            color: PdfColors.black,
                          ),
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 12),
                    pd.Align(
                      alignment: pd.Alignment.centerLeft,
                      child: pd.Container(
                        alignment: pd.Alignment.centerLeft,
                        padding: const pd.EdgeInsets.only(left: 5),
                        child: pd.Text(
                          "Reference",
                          style: const pd.TextStyle(
                            fontSize: 20,
                            color: PdfColors.black,
                            decoration: pd.TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 5),
                    pd.Padding(
                      padding: const pd.EdgeInsets.only(left: 5),
                      child: pd.Align(
                        alignment: pd.Alignment.centerLeft,
                        child: pd.Text(
                          (Global.achievements.isEmpty)
                              ? "fill your Reference details."
                              : "${Global.ref} suggest me your company.He is a ${Global.designation}.He is work at ${Global.institute}.",
                          style: const pd.TextStyle(
                            fontSize: 17,
                            color: PdfColors.black,
                          ),
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 12),
                    pd.Align(
                      alignment: pd.Alignment.centerLeft,
                      child: pd.Container(
                        alignment: pd.Alignment.centerLeft,
                        padding: const pd.EdgeInsets.only(left: 5),
                        child: pd.Text(
                          "Declaration",
                          style: const pd.TextStyle(
                            fontSize: 20,
                            color: PdfColors.black,
                            decoration: pd.TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    pd.SizedBox(height: 5),
                    pd.Padding(
                      padding: const pd.EdgeInsets.only(left: 5),
                      child: pd.Align(
                        alignment: pd.Alignment.centerLeft,
                        child: pd.Text(
                          (Global.achievements.isEmpty)
                              ? "fill your Declaration details."
                              : "${Global.desc}",
                          style: const pd.TextStyle(
                            fontSize: 16,
                            color: PdfColors.black,
                          ),
                        ),
                      ),
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

  @override
  void initState() {
    makePdf();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        actions: [
          GestureDetector(
              onTap: () {
                setState(() async {
                  Uint8List data = await pdf.save();
                  await Printing.layoutPdf(onLayout: (format) => data);
                });
              },
              child: const Icon(Icons.picture_as_pdf_outlined, size: 30)),
          const SizedBox(width: 5),
        ],
        leading: GestureDetector(
          onTap: () {
            setState(() {
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            });
          },
          child: const Icon(Icons.arrow_back_ios, size: 30),
        ),
        title: const Text(
          "Your Resume",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              alignment: Alignment.topCenter,
              color: Colors.black,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: (Global.file != null)
                            ? FileImage(File(Global.file!.path))
                            : null,
                        backgroundColor: const Color(0xffc4c4c4),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        "Contact me",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          (Global.email == null)
                              ? "fill your email"
                              : "${Global.email}",
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          (Global.number == null)
                              ? "fill your number"
                              : "${Global.number}",
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          (Global.address == null)
                              ? "fill your address"
                              : "${Global.address}",
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        "Education",
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          (Global.course == null)
                              ? "fill your course name"
                              : "${Global.course}",
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          (Global.college == null)
                              ? "fill your college name"
                              : "${Global.college}",
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          (Global.percentage == null)
                              ? "fill your percentage"
                              : "${Global.percentage}",
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          (Global.year == null)
                              ? "fill your studying year"
                              : "${Global.year}",
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        "Personal Detail",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          (Global.birth == null)
                              ? "fill your BirthDate"
                              : "${Global.birth}",
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          (Global.group == null)
                              ? "fill your marital status"
                              : "${Global.group}",
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          (Global.myLanguage.isEmpty)
                              ? "fill your language kno."
                              : Global.myLanguage.join(","),
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          (Global.nation == null)
                              ? "fill your nationality"
                              : "${Global.nation}",
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          "Skills",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          (Global.skills.isEmpty)
                              ? "fill your skills"
                              : Global.skills.join("\n"),
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              alignment: Alignment.topCenter,
              color: Colors.grey.shade300,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        (Global.name == null)
                            ? "fill your name"
                            : "${Global.name}",
                        style: const TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          "About me",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          (Global.exp == null)
                              ? "fill your career field"
                              : "I am a ${Global.exp}. ${Global.des}.I also work for ${Global.company} as a ${Global.school}.I work for this company from ${Global.start} ${(Global.end == null) ? "" : "to ${Global.end}"}",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          "Projects",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          (Global.project == null)
                              ? "fill your Project name."
                              : "I made ${Global.project} using technologies like ${Global.technologies.join(" , ")}.${Global.description}",
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        "Interest",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          (Global.interest == null)
                              ? "fill your interest"
                              : "${Global.interest}",
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          "Achievements",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          (Global.achievements.isEmpty)
                              ? "fill your Achievements."
                              : Global.achievements.join("\n"),
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          "Reference",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          (Global.achievements.isEmpty)
                              ? "fill your Reference details."
                              : "${Global.ref} suggest me your company.He is a ${Global.designation}.He is work at ${Global.institute}.",
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          "Declaration",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          (Global.achievements.isEmpty)
                              ? "fill your Declaration details."
                              : "${Global.desc}",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
