import 'package:esc_pos_printer/esc_pos_printer.dart';
import 'package:esc_pos_utils/esc_pos_utils.dart';

Future<void> printDemoReceipt(NetworkPrinter printer) async {
  printer.text('GROCERYLY',
      styles: PosStyles(
        align: PosAlign.center,
        height: PosTextSize.size2,
        width: PosTextSize.size2,
      ),
      linesAfter: 1);

  printer.text('889  Watson Lane', styles: PosStyles(align: PosAlign.center));
  printer.text('New Braunfels, TX', styles: PosStyles(align: PosAlign.center));
  printer.text('Tel: 830-221-1234', styles: PosStyles(align: PosAlign.center));
  printer.text('Web: www.example.com',
      styles: PosStyles(align: PosAlign.center), linesAfter: 1);

  printer.hr();
  printer.row([
    PosColumn(text: 'Qty', width: 1),
    PosColumn(text: 'Item', width: 7),
    PosColumn(
        text: 'Price', width: 2, styles: PosStyles(align: PosAlign.right)),
    PosColumn(
        text: 'Total', width: 2, styles: PosStyles(align: PosAlign.right)),
  ]);
  printer.row([
    PosColumn(text: '2', width: 1),
    PosColumn(text: 'ONION RINGS', width: 7),
    PosColumn(text: '0.99', width: 2, styles: PosStyles(align: PosAlign.right)),
    PosColumn(text: '1.98', width: 2, styles: PosStyles(align: PosAlign.right)),
  ]);
  printer.row([
    PosColumn(text: '1', width: 1),
    PosColumn(text: 'PIZZA', width: 7),
    PosColumn(text: '3.45', width: 2, styles: PosStyles(align: PosAlign.right)),
    PosColumn(text: '3.45', width: 2, styles: PosStyles(align: PosAlign.right)),
  ]);
  printer.row([
    PosColumn(text: '1', width: 1),
    PosColumn(text: 'SPRING ROLLS', width: 7),
    PosColumn(text: '2.99', width: 2, styles: PosStyles(align: PosAlign.right)),
    PosColumn(text: '2.99', width: 2, styles: PosStyles(align: PosAlign.right)),
  ]);
  printer.row([
    PosColumn(text: '3', width: 1),
    PosColumn(text: 'CRUNCHY STICKS', width: 7),
    PosColumn(text: '0.85', width: 2, styles: PosStyles(align: PosAlign.right)),
    PosColumn(text: '2.55', width: 2, styles: PosStyles(align: PosAlign.right)),
  ]);
  printer.hr();

  printer.row([
    PosColumn(
        text: 'TOTAL',
        width: 6,
        styles: PosStyles(
          height: PosTextSize.size2,
          width: PosTextSize.size2,
        )),
    PosColumn(
        text: '\$10.97',
        width: 6,
        styles: PosStyles(
          align: PosAlign.right,
          height: PosTextSize.size2,
          width: PosTextSize.size2,
        )),
  ]);

  printer.hr(ch: '=', linesAfter: 1);

  printer.row([
    PosColumn(
        text: 'Cash',
        width: 8,
        styles: PosStyles(align: PosAlign.right, width: PosTextSize.size2)),
    PosColumn(
        text: '\$15.00',
        width: 4,
        styles: PosStyles(align: PosAlign.right, width: PosTextSize.size2)),
  ]);
  printer.row([
    PosColumn(
        text: 'Change',
        width: 8,
        styles: PosStyles(align: PosAlign.right, width: PosTextSize.size2)),
    PosColumn(
        text: '\$4.03',
        width: 4,
        styles: PosStyles(align: PosAlign.right, width: PosTextSize.size2)),
  ]);

  printer.feed(2);
  printer.text('Thank you!',
      styles: PosStyles(align: PosAlign.center, bold: true));

  printer.feed(1);
  printer.cut();
}
