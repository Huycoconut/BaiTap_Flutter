import 'package:flutter/material.dart';

class Thongke extends StatefulWidget {
  const Thongke({super.key});

  @override
  State<Thongke> createState() => _ThongkeState();
}

class _ThongkeState extends State<Thongke> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.only(top: 20, left: 30, right: 163),
      margin: const EdgeInsets.only(top: 320, bottom: 180),
      width: 390,
      height: 190,

      child: Column(
        children: [
          const Stack(
            children: [
              Padding(padding: EdgeInsets.only(left: 10, bottom: 10)),
              Text(
                "Thống kê",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(20),
            //margin: const EdgeInsets.all(10),
            width: 390,
            height: 150,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 2.0, color: Colors.grey),
                color: Colors.white),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    child: const Column(
                      children: [
                        Text(
                          "Đơn hàng đã mua: 12",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: const Column(
                      children: [
                        Text(
                          "Đơn hàng đã hoàn thành: 32",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: const Column(
                      children: [
                        Text(
                          "Tổng chi tiêu: 1.300.000 vnd",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
