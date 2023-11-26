import 'package:flutter/material.dart';
import 'package:test4/const/const.dart';
import 'package:test4/main.dart';


class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Total Amount: \RP 1.000.000',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  'Select Payment Method:',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 10),
                  PaymentMethodTile(
                  assetName: 'creditcard.jpg',
                  title: 'Credit Card',
                  onTap: () {
                    _showCreditCardPopup(context);
                  },
                ),
                  PaymentMethodTile(
                  assetName: 'paypal.png',
                  title: 'PayPal',
                  onTap: () {
                    _showPayPalPopup(context);
                  },
                ),
                PaymentMethodTile(
                  assetName: 'ovo.png',
                  title: 'OVO',
                  onTap: () {
                    _showOvoPopup(context);
                  },
                ),
                PaymentMethodTile(
                  assetName: 'gopay.png',
                  title: 'Gopay',
                  onTap: () {
                    _showGopayPopup(context);
                  },
                ),
                SizedBox(height: 30),
                "Alamat".text.color(fontGrey).fontFamily(bold).size(30).make(),
                10.heightBox,
                "Jl Kelapa Gading Boulevard Bl QA-1/20, Dki Jakarta".text.color(fontGrey).size(20).make(),
                5.heightBox,
                "Jakarta".text.color(fontGrey).size(20).make(),
                5.heightBox,
                "14240".text.color(fontGrey).size(20).make(),
                5.heightBox,
                "+62 123 456 78".text.color(fontGrey).size(20).make(),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Pembayaran Berhasil'),
                          content: Text('Selamat, pembayaran Anda telah berhasil!'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Main()),
                                );
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                child: Text('Proceed to Payment'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
    class PaymentMethodTile extends StatelessWidget {
      final String assetName;
      final String title;
      final VoidCallback? onTap;

      const PaymentMethodTile({required this.assetName, required this.title, this.onTap,});

      @override
      Widget build(BuildContext context) {
        return ListTile(
          leading: ClipOval(
            child: Image.asset(
                'image/$assetName',
                  width: 40,
                  height: 40,
                ),
          ),
          title: Text(title),
          onTap: onTap,
        );
      }
    }

void _showCreditCardPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Masukkan Nomor Kartu Kredit'),
          content: TextField(
            decoration: InputDecoration(labelText: 'Nomor Kartu Kredit'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Tutup pop-up
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Submit'),
            ),
          ],
        );
      },
    );
  }
  
  void _showPayPalPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Masukkan Username PayPal'),
          content: TextField(
            decoration: InputDecoration(labelText: 'Username PayPal'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); //Tutup pop-up
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                //Setelah selesai, akan menutup pop-up
                Navigator.of(context).pop();
              },
              child: Text('Submit'),
            ),
          ],
        );
      },
    );
  }

  void _showOvoPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Masukkan Nomor Telepon OVO'),
        content: TextField(
          decoration: InputDecoration(labelText: 'Nomor Telepon OVO'),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); //Tutup pop-up
            },
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              //Setelah selesai, akan menutup pop-up
              Navigator.of(context).pop();
            },
            child: Text('Submit'),
          ),
        ],
      );
    },
  );
}

void _showGopayPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Masukkan Nomor Telepon Gopay'),
        content: TextField(
          decoration: InputDecoration(labelText: 'Nomor Telepon Gopay'),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); //Tutup pop-up
            },
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              //Setelah selesai, akan menutup pop-up
              Navigator.of(context).pop();
            },
            child: Text('Submit'),
          ),
        ],
      );
    },
  );
}