import 'package:flutter/material.dart';

void main() {
  runApp(MyWalletApp());
}

class MyWalletApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WalletHomePage(),
    );
  }
}

class WalletHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          // ===== HEADER =====
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue[700],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Hàng trên cùng
                  Row(
                    children: [
                      Icon(Icons.emoji_events,
                          color: Colors.white, size: 28),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2), // nền trong suốt
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: 'Search "Payments"',
                              hintStyle: TextStyle(color: Colors.white70),
                              prefixIcon:
                              Icon(Icons.search, color: Colors.white),
                              border: InputBorder.none,
                              contentPadding:
                              EdgeInsets.symmetric(vertical: 14),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.notifications_none,
                          color: Colors.white, size: 28),
                    ],
                  ),

                  SizedBox(height: 20),

                  // Currency + Quốc kỳ + Dropdown
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("🇺🇸", style: TextStyle(fontSize: 20)),
                      SizedBox(width: 6),
                      Text(
                        "US Dollar",
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                      SizedBox(width: 6),
                      Icon(Icons.arrow_drop_down,
                          color: Colors.white70, size: 20),
                    ],
                  ),

                  SizedBox(height: 10),

                  // Balance
                  Text(
                    "\$20,000",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 5),
                  Text("Available Balance",
                      style: TextStyle(color: Colors.white70, fontSize: 14)),

                  SizedBox(height: 15),

                  // Add Money Button
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.white, width: 2),
                      shape: StadiumBorder(),
                      padding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Add Money",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // ===== MENU BUTTONS =====
          Container(
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, blurRadius: 6, offset: Offset(0, 3))
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _menuButton(Icons.send, "Send", Colors.blue),
                _menuButton(Icons.request_page, "Request", Colors.orange),
                _menuButton(Icons.account_balance, "Bank", Colors.deepPurple),
              ],
            ),
          ),

          // ===== TRANSACTION TITLE =====
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Transaction",
                    style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
              ],
            ),
          ),

          SizedBox(height: 10),

          // ===== TRANSACTION LIST =====
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 3))
                ],
              ),
              child: ListView(
                children: [
                  _transactionItem(Icons.shopping_cart, "Spending", "-\$500",
                      Colors.red, Colors.blue),
                  Divider(),
                  _transactionItem(Icons.attach_money, "Income", "+\$3000",
                      Colors.green, Colors.green),
                  Divider(),
                  _transactionItem(Icons.receipt, "Bills", "-\$800",
                      Colors.redAccent, Colors.orange),
                  Divider(),
                  _transactionItem(Icons.savings, "Savings", "+\$1000",
                      Colors.orange, Colors.deepOrange),
                ],
              ),
            ),
          ),
        ],
      ),

      // ===== BOTTOM NAV =====
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.black12, blurRadius: 6, offset: Offset(0, -2))
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.history), label: ""),
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.qr_code_scanner, color: Colors.white),
              ),
              label: "",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ],
        ),
      ),
    );
  }

  // ===== WIDGETS =====
  Widget _menuButton(IconData icon, String text, Color color) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: color.withOpacity(0.1),
          child: Icon(icon, color: color, size: 28),
        ),
        SizedBox(height: 5),
        Text(text, style: TextStyle(fontWeight: FontWeight.w600)),
      ],
    );
  }

  Widget _transactionItem(IconData icon, String title, String amount,
      Color amountColor, Color iconColor) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundColor: iconColor.withOpacity(0.1),
              child: Icon(icon, color: iconColor, size: 22),
            ),
            SizedBox(width: 12),
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              amount,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: amountColor,
              ),
            ),
            SizedBox(width: 6),
            Icon(Icons.arrow_forward_ios, size: 14, color: Colors.grey),
          ],
        ),
      ],
    );
  }
}
