// B1 khai báo thư viện
// B2 khởi tạo main
//B3 khởi tạo hàm runapp
//B4 sử dụng các widget để xây dụng app

import 'package:flutter/material.dart';
// import 'product-card.dart';
// import 'icon.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // leading: const Icon(Icons.arrow_back),
          // leadingWidth: 40,
          // titleSpacing: 0,
          // title: const Text(
          //   'Pay the bill',
          //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          // ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color.fromARGB(255, 125, 171, 209),
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
          child: const demoimg(),
        ),
      ),
    ),
  );
}

class demoimg extends StatelessWidget {
  const demoimg({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Container ảnh nền
        Container(
          width: double.infinity,
          height: 250,
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://pos.nvncdn.com/86c7ad-50310/art/artCT/20230420_0moA6KAt.png',
              ),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(20),
          ),

          // Chấm dưới cùng ảnh
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.circle, size: 25, color: Colors.blue),
                SizedBox(width: 5),
                Icon(Icons.circle, size: 20, color: Colors.white),
                SizedBox(width: 5),
                Icon(Icons.circle, size: 20, color: Colors.white),
              ],
            ),
          ),
        ),
        // Row icon trên cùng
        Positioned(
          top: 20,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(Icons.arrow_back, size: 40, color: Colors.black),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(Icons.favorite, size: 40, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
        // Container Pent House chèn lên ảnh
        Positioned(
          top: 235,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Pent House Apartment",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, size: 25, color: Colors.yellow),
                        SizedBox(width: 5),
                        Text("4.0", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_sharp,
                      size: 25,
                      color: Colors.grey[600],
                    ),
                    Text(
                      "7277 Rue Saint-Jacques, Montré...",
                      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.bed, size: 30, color: Colors.black),
                    SizedBox(width: 5),
                    Text(
                      "3",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    SizedBox(width: 15),
                    Icon(Icons.wc, size: 30, color: Colors.black),
                    SizedBox(width: 5),
                    Text(
                      "3",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    SizedBox(width: 15),
                    Icon(Icons.church, size: 30, color: Colors.black),
                    SizedBox(width: 5),
                    Text(
                      "2",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.attach_money, size: 30, color: Colors.black),
                    Text(
                      "750/",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "month",
                      style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About House",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 30, 31, 90),
                        ),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam sapien laoreet et, adipiscing. '
                            'Pellentesque cras ut tempus, dignissim sit nam lacinia. Facilisis amet penatibus lacinia sagittis '
                            'faucibus sem id sodales. Pellentesque nunc, cursus lectus scelerisque tempus pretium dui venenatis. '
                            'Non consequat netus mi mauris, ipsum at in pellentesque. In pretium egestas id facilisi. Et et senectus '
                            'penatibus purus eget adipiscing nunc, pulvinar fames. Erat feugiat at odio commodo. In sit vitae '
                            'sodales vehicula pretium mauris viverra lacus. Feugiat vel vestibulum turpis feugiat. Massa, augue '
                            'pellentesque venenatis viverra a, pellentesque habitant. In lacus, praesent nunc eget. Lacinia non, '
                            'id tempus, nulla rhoncus consequat in ac morbi. Adipiscing luctus nunc enim.',
                        textAlign: TextAlign.justify, // 🔑 Căn đều 2 bên
                        style: TextStyle(
                          fontSize: 11,
                          height: 1.5,
                        ), // chỉnh thêm line-height cho dễ đọc
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  child: Text(
                    "Listing Agent",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 30, 31, 90),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: const Color.fromARGB(255, 76, 73, 73),
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  'https://heucollege.edu.vn/upload/2025/02/avatar-meo-hoat-hinh-3.webp',
                                ),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "Meruem",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 30, 31, 90),
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Owner",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: const Color.fromARGB(255, 113, 112, 112),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Icon(
                              Icons.phone_in_talk,
                              size: 40,
                              color: Color.fromARGB(255, 30, 31, 90),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: const Color.fromARGB(255, 113, 112, 112),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Icon(
                              Icons.chat_bubble_outline,
                              size: 40,
                              color: Color.fromARGB(255, 30, 31, 90),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 30, 31, 90),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: 200,
                    alignment: Alignment.center,
                    child: Text(
                      "Book Now",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
