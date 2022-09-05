import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:flutter/material.dart';

class PdfViewer extends StatelessWidget {
  const PdfViewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
        child: SfPdfViewer.asset(
          'assets/calender.pdf'),
      );
  }
}
