import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const PayBillScreen(),
    );
  }
}

class PayBillScreen extends StatelessWidget {
  const PayBillScreen({super.key});

  final List<Map<String, String>> bills = const [
    {
      "title": "Electric bill",
      "subtitle": "Pay electric bill this month",
      "image":
      "https://www.shutterstock.com/shutterstock/photos/2313685049/display_1500/stock-vector-electricity-bill-payment-online-vector-illustration-cartoon-mobile-phone-of-consumer-with-digital-2313685049.jpg",
    },
    {
      "title": "Water bill",
      "subtitle": "Pay water bill this month",
      "image":
      "https://www.shutterstock.com/shutterstock/photos/2476410963/display_1500/stock-vector-payment-for-water-supply-using-mobile-app-tiny-people-check-water-consumption-in-pipeline-system-2476410963.jpg", // ví dụ link khác
    },
    {
      "title": "Mobile bill",
      "subtitle": "Pay mobile bill this month",
      "image":
      "https://www.shutterstock.com/shutterstock/photos/2258195479/display_1500/stock-photo-pay-money-with-mobile-phone-banking-online-payments-concept-easy-e-bill-payment-transaction-on-2258195479.jpg", // ví dụ link khác
    },
    {
      "title": "Internet bill",
      "subtitle": "Pay internet bill this month",
      "image":
      "https://thumbs.dreamstime.com/z/check-electricity-bill-rgb-color-icon-check-electricity-bill-rgb-color-icon-monthly-payment-essential-service-paying-energy-247195605.jpg?ct=jpeg", // ví dụ link khác
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      appBar: AppBar(
        title: const Text(
          "Pay the bill",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: bills.length,
        itemBuilder: (context, index) {
          final bill = bills[index];
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 8,
                  spreadRadius: 2,
                  offset: const Offset(0, 4),
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Text bên trái
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bill["title"]!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      bill["subtitle"]!,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                // Ảnh bên phải (từ link)
                SizedBox(
                  height: 60,
                  width: 60,
                  child: Image.network(
                    bill["image"]!,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
