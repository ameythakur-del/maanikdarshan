import 'package:flutter/material.dart';
import 'package:maanikdarshan/Package/ManikNagar/Aawas.dart';
import 'package:maanikdarshan/Package/ManikNagar/darshaniySthale.dart';
import 'package:maanikdarshan/Package/ManikNagar/dinCharya.dart';
import 'package:maanikdarshan/Package/ManikNagar/kasePochave.dart';

class maniknagar extends StatefulWidget {
  const maniknagar({Key? key}) : super(key: key);

  @override
  State<maniknagar> createState() => _maniknagarState();
}

class _maniknagarState extends State<maniknagar> with SingleTickerProviderStateMixin {
  late TabController _controller;
  CategoryType categoryType = CategoryType.darshaniya;
  var index;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF7F1B0E),
        title: Text(
          "माणिकनगर",
          style: TextStyle(fontFamily: 'Mukta', fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        // Column
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(10),
            color: Colors.transparent, // Tab Bar color change
            child: TabBar(
                onTap: (index) {
                  setState(() {
                    if (index == 0) {
                      categoryType = CategoryType.darshaniya;
                    } else if (index == 1) {
                      categoryType = CategoryType.kase;
                    } else if (index == 2) {
                      categoryType = CategoryType.awas;
                    } else if (index == 3) {
                      categoryType = CategoryType.dincharya;
                    }
                  });
                },
                indicatorColor: Colors.transparent,
                // labelStyle:  ,
                unselectedLabelColor: const Color.fromRGBO(101, 35, 8, 1),
                labelPadding: const EdgeInsets.all(2),
                controller: _controller,
                tabs: [
                  getButtonUI(CategoryType.darshaniya,
                      categoryType == CategoryType.darshaniya),
                  getButtonUI(CategoryType.kase,
                      categoryType == CategoryType.kase),
                  getButtonUI(
                      CategoryType.awas, categoryType == CategoryType.awas),
                  getButtonUI(
                      CategoryType.dincharya, categoryType == CategoryType.dincharya),
                ]),
          ),
          Expanded(
            flex: 4,
            child: TabBarView(
              // Tab Bar View
              physics: const NeverScrollableScrollPhysics(),
              controller: _controller,
              children: [darshaniySthale(), kasePochave(), Aawas(), dinCharya()],
            ),
          ),
        ],
      ),
    );
  }

  Widget getButtonUI(CategoryType categoryTypeData, bool isSelected) {
    String txt = '';
    if (CategoryType.darshaniya == categoryTypeData) {
      txt = 'दर्शनीय स्थळे';
    } else if (CategoryType.kase == categoryTypeData) {
      txt = 'कसे पोचावे';
    } else if (CategoryType.awas == categoryTypeData) {
      txt = 'आवास';
    } else if (CategoryType.dincharya == categoryTypeData) {
      txt = 'दिनचर्या';
    }
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF652308) : Colors.transparent,
          borderRadius: const BorderRadius.all(Radius.circular(24.0)),
          border: Border.all(color: const Color(0xFF652308))),
      child: Center(
        child: Material(
          color: Colors.transparent,
          child: Padding(
            padding:
            const EdgeInsets.only(top: 5, bottom: 5),
            child: Text(
              txt,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: isSelected
                    ? const Color(0xFFFFFFFF)
                    : const Color(0xFF7F1B0E),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

enum CategoryType {
  darshaniya,
kase,
awas,
dincharya
}

class GetButtonUI extends StatelessWidget {
  final CategoryType categoryTypeData;
  final bool isSelected;
  const GetButtonUI(
      {Key? key, required this.categoryTypeData, required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String txt = '';
    if (CategoryType.darshaniya == categoryTypeData) {
      txt = 'दर्शनीय स्थळे';
    } else if (CategoryType.kase == categoryTypeData) {
      txt = 'कसे पोचावे';
    } else if (CategoryType.awas == categoryTypeData) {
      txt = 'आवास';
    } else if (CategoryType.dincharya == categoryTypeData) {
      txt = 'दिनचर्या';
    }

    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: isSelected ? const Color(0xFF652308) : Colors.transparent,
            borderRadius: const BorderRadius.all(Radius.circular(24.0)),
            border: Border.all(color: const Color(0xFF652308))),
        child: Material(
          color: Colors.transparent,
          child: Padding(
            padding:
            const EdgeInsets.only(top: 12, bottom: 12, left: 18, right: 18),
            child: Center(
              child: Text(
                txt,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  letterSpacing: 0.27,
                  color: isSelected
                      ? const Color(0xFFFBD99C)
                      : const Color(0xFF652308),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
