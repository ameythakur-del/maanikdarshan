import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListItem extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final Widget? leading;
  const ListItem({Key? key, required this.title, this.onTap, this.leading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.transparent,
      color: const Color(0xFFFFDBA5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(Icons.add),
        title: Text(
          title,
          style: GoogleFonts.mukta(
              color: const Color.fromRGBO(101, 35, 8, 1),
              fontSize: 18,
              fontWeight: FontWeight.w600
          ),
          textAlign: TextAlign.center,
        ),
        onTap: onTap,
      ),
    );

    // return InkWell(
    //   onTap: onTap,
    //   child: Container(
    //     height: 78,
    //     margin: const EdgeInsets.only(left: 8, right: 8, top: 8),
    //     decoration: BoxDecoration(
    //       color: const Color(0xFFFFDBA5),
    //       border: Border.all(color: Colors.white, width: 3),
    //       borderRadius: const BorderRadius.all(
    //         Radius.circular(21),
    //       ),
    //     ),
    //     child: Center(
    //       child: Text(
    //         title,
    //         style: GoogleFonts.mukta(
    //           color: const Color.fromRGBO(101, 35, 8, 1),
    //           fontSize: 18,
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
