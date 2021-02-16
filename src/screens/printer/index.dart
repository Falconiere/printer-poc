import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:esc_pos_printer/esc_pos_printer.dart';
import 'package:esc_pos_utils/esc_pos_utils.dart';

import '../../components/button.dart';
import '../../services/printer.dart';

class Printer extends StatelessWidget {
  void testReceipt(NetworkPrinter printer) {
    printDemoReceipt(printer);
  }

  Future<bool> printSample() async {
    const PaperSize paper = PaperSize.mm58;
    final profile = await CapabilityProfile.load();
    final printer = NetworkPrinter(paper, profile);

    final PosPrintResult res =
        await printer.connect('192.168.0.123', port: 9100);
    if (res == PosPrintResult.success) {
      testReceipt(printer);
      printer.disconnect();
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Printer screen"),
      ),
      body: Center(
        child: Button(
          label: "Print sample",
          onPress: () {
            printSample();
          },
        ),
      ),
    );
  }
}
